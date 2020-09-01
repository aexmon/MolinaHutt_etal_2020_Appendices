file mkdir pushoverResults;
set dataDir pushoverResults;
set storyNum 44;

remove recorders;
# for base shear
recorder Node -file $dataDir/baseShearFrame.out -time -node 10100 10200 10300 10400 -dof 1 reaction;
recorder Node -file $dataDir/baseShearLeaning.out -time -node 10502 -dof 1 reaction;
recorder Node -file $dataDir/baseShearBasement.out -time -node 20100 30100 40100 50100 -dof 1 reaction;

# for story drift
for {set story 1} {$story <= $storyNum} {incr story} {
    recorder Drift -file $dataDir/story${story}_drift.out -time -iNode [lindex $ctrl_nodes \
        [expr {$story - 1}]] -jNode [lindex $ctrl_nodes $story] -dof 1 -perpDirn 2;
}

# roof drift
recorder Drift -file $dataDir/roofDrift.out -time -iNode [lindex $ctrl_nodes 0]\
	 -jNode [lindex $ctrl_nodes $storyNum] -dof 1 -perpDirn 2;

 # displacement of control nodes
for {set floor 1} {$floor <= $storyNum+1} {incr floor} {
    recorder Node -file $dataDir/floor${floor}_disp.out\
    	 -node [lindex $ctrl_nodes [expr $floor-1]] -time -dof 1 disp;
}
