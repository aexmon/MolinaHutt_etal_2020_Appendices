file mkdir $recorderdir/dynamic;

# # column loads
# for {set story 1} {$story <= $num_stories} {incr story} {
# 	for {set pier 1} {$pier <= $num_piers} {incr pier} {
# 		set elCol [expr 2000000+$story*10000+$pier*100];
# 		set sprLow [expr 22000000+$story*10000+$pier*100+1];
# 		set sprUp [expr 22000000+$story*10000+$pier*100+2];
# 		recorder Element -file $recorderdir/dynamic/${elCol}.out -time -ele $elCol localForce;
# 		recorder Element -file $recorderdir/dynamic/${sprLow}.out -time -ele $sprLow force;
# 		recorder Element -file $recorderdir/dynamic/${sprUp}.out -time -ele $sprUp force;
# 	}
# }

# story drifts for mega-braces
set storyLows {5 10 13 18 21 26 29 34 37 42};
set storyUps {8 13 16 21 24 29 32 37 40 45};

for {set idx 0} {$idx < [llength $storyLows]} {incr idx} {
	set storyLow [lindex $storyLows $idx];
	set storyUp [lindex $storyUps $idx];
	set nodeI [expr $storyLow*10000+200];
	set nodeJ [expr $storyUp*10000+200];
	recorder EnvelopeDrift -file $recorderdir/dynamic/${storyLow}_${storyUp}_megaDrift_env.out -iNode $nodeI -jNode $nodeJ -dof 1 -perpDirn 2;
	recorder Drift -file $recorderdir/dynamic/${storyLow}_${storyUp}_megaDrift.out -time -iNode $nodeI -jNode $nodeJ -dof 1 -perpDirn 2;
}

# BRB loads
# Frame1
set BRB1_list {11 12 13 14 15 16 17 18 21 22 23 24 25 26 27 28 31 32 33 34 35 36 37 38\
41 42 43 44 45 46 47 48 51 52 53 54 55 56 57 58};
for {set idx 0} {$idx < [llength $BRB1_list]} {incr idx} {
	set BRB [lindex $BRB1_list $idx];
	recorder Element -file $recorderdir/dynamic/${BRB}_F.out -time -ele $BRB localForce;
	recorder Element -file $recorderdir/dynamic/${BRB}_D.out -time -ele $BRB deformation;
}

# Frame2
set bay 5;
for {set story 1} {$story <= $num_stories} {incr story} {
	set BRBLft [expr 30000000+$story*10000+$bay*100+1];
	set BRBRgt [expr 30000000+$story*10000+$bay*100+2];
	recorder Element -file $recorderdir/dynamic/${BRBLft}_F.out -time -ele $BRBLft localForce;
	recorder Element -file $recorderdir/dynamic/${BRBRgt}_F.out -time -ele $BRBRgt localForce;
	recorder Element -file $recorderdir/dynamic/${BRBLft}_D.out -time -ele $BRBLft deformation;
	recorder Element -file $recorderdir/dynamic/${BRBRgt}_D.out -time -ele $BRBRgt deformation;		
}

# Frame3
set bay 7;
for {set story 1} {$story <= $num_stories} {incr story} {
	set BRBLft [expr 30000000+$story*10000+$bay*100+1];
	set BRBRgt [expr 30000000+$story*10000+$bay*100+2];
	recorder Element -file $recorderdir/dynamic/${BRBLft}_F.out -time -ele $BRBLft localForce;
	recorder Element -file $recorderdir/dynamic/${BRBRgt}_F.out -time -ele $BRBRgt localForce;
	recorder Element -file $recorderdir/dynamic/${BRBLft}_D.out -time -ele $BRBLft deformation;
	recorder Element -file $recorderdir/dynamic/${BRBRgt}_D.out -time -ele $BRBRgt deformation;		
}
