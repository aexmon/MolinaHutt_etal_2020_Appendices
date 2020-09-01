##############################################################################################################
# Reagan Chandramohan                                                                                        #
# John A. Blume Earthquake Engineering Center                                                                #
# Stanford University                                                                                        #
# Last edited: 02-Jun-2015
##############################################################################################################

# Minor edit by: wyy
# Discription: Fix the lowest period; in Reagan's paper recommend 1e-4

# Script called from "run_stripe_mp_m.tcl".
# Define recorders and run one analysis.

##############################################################################################################

# Define the ground motion time series
timeSeries Path [expr {10 + $serial}] -dt $dt -filePath $indir/$filename -factor [expr $g*$scalor]
set eq_load_pattern1 3
pattern UniformExcitation $eq_load_pattern1 1 -accel [expr {10 + $serial}]

# Define the drift recorders
# ex. outdir = MSA_CS4630/S688/HZL1/RSN447841_Seismogram_s688_68_7
remove recorders;
set recorderdir $outdir
for {set story 1} {$story <= $num_stories} {incr story} {
    recorder EnvelopeDrift -file $recorderdir/story${story}_drift_env.out -iNode [lindex $ctrl_nodes \
            [expr {$story - 1}]] -jNode [lindex $ctrl_nodes $story] -dof 1 -perpDirn 2
    recorder Drift -file $recorderdir/story${story}_drift.out -time -iNode [lindex $ctrl_nodes \
            [expr {$story - 1}]] -jNode [lindex $ctrl_nodes $story] -dof 1 -perpDirn 2
}
# Define the acceleration recorders
for {set floor 1} {$floor <= [expr $num_stories+1]} {incr floor} {
    # recorder Node -file $recorderdir/floor${floor}_acc.out -time\
    #  -node [lindex $ctrl_nodes $floor-1] -dof 1 accel; # relative acc
    recorder Node -file $recorderdir/floor${floor}_acc.out -timeSeries [expr {10 + $serial}]\
     -time -node [lindex $ctrl_nodes $floor-1] -dof 1 accel; # absolute acc
}
# Build recorders for columns and BRBs(change here if necessary)
source buildRecorderDynamic.tcl;


set collapse_flag false

source $userdirectory/SolverNewmark.tcl;


# Compute the peak story drift from the recorder files if the structure hasn't collapsed
if {!$collapse_flag} {
    set max_drift [max_drift_outfile $recorderdir $num_stories]
    if {$max_drift >= $col_drift} {
        set collapse_flag true
    }
}


# Write the analysis results to the stripe text file
if {$collapse_flag} {
    puts $stripe_file "[format "%.5f" $col_drift]"
} else {
    puts $stripe_file "[format "%.5f" $max_drift]"
}

remove recorders;