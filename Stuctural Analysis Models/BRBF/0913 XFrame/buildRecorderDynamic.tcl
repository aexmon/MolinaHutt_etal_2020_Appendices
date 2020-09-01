file mkdir $recorderdir/dynamic;

# # build column recorders
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

# build BRB recorders
for {set story 1} {$story <= $num_stories} {incr story} {
	for {set bay 1} {$bay <= $num_bays} {incr bay} {
		set BRBLft [expr 30000000+$story*10000+$bay*100+1];
		set BRBRgt [expr 30000000+$story*10000+$bay*100+2];
		recorder Element -file $recorderdir/dynamic/${BRBLft}_F.out -time -ele $BRBLft localForce;
		recorder Element -file $recorderdir/dynamic/${BRBRgt}_F.out -time -ele $BRBRgt localForce;
		recorder Element -file $recorderdir/dynamic/${BRBLft}_D.out -time -ele $BRBLft deformation;
		recorder Element -file $recorderdir/dynamic/${BRBRgt}_D.out -time -ele $BRBRgt deformation;		
	}
}
