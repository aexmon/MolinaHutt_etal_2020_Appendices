wipeAnalysis;

set totalHgt 6534;

set ctrlNodeID 450200; # node at roof
set ctrlDOF 1;
set DMax [expr 0.1*$totalHgt];
set DIncr [expr 1e-3*$totalHgt];

pattern Plain 200 Linear {			
	load	60100	0.000329	0	0;	load	60200	0.000329	0	0;	load	60300	0.000329	0	0;	load	60400	0.000329	0	0;
	load	70100	0.000954	0	0;	load	70200	0.000954	0	0;	load	70300	0.000954	0	0;	load	70400	0.000954	0	0;
	load	80100	0.001992	0	0;	load	80200	0.001992	0	0;	load	80300	0.001992	0	0;	load	80400	0.001992	0	0;
	load	90100	0.003380	0	0;	load	90200	0.003380	0	0;	load	90300	0.003380	0	0;	load	90400	0.003380	0	0;
	load	100100	0.005033	0	0;	load	100200	0.005033	0	0;	load	100300	0.005033	0	0;	load	100400	0.005033	0	0;
	load	110100	0.006924	0	0;	load	110200	0.006924	0	0;	load	110300	0.006924	0	0;	load	110400	0.006924	0	0;
	load	120100	0.009276	0	0;	load	120200	0.009276	0	0;	load	120300	0.009276	0	0;	load	120400	0.009276	0	0;
	load	130100	0.012393	0	0;	load	130200	0.012393	0	0;	load	130300	0.012393	0	0;	load	130400	0.012393	0	0;
	load	140100	0.014517	0	0;	load	140200	0.014517	0	0;	load	140300	0.014517	0	0;	load	140400	0.014517	0	0;
	load	150100	0.017737	0	0;	load	150200	0.017737	0	0;	load	150300	0.017737	0	0;	load	150400	0.017737	0	0;
	load	160100	0.021803	0	0;	load	160200	0.021803	0	0;	load	160300	0.021803	0	0;	load	160400	0.021803	0	0;
	load	170100	0.026086	0	0;	load	170200	0.026086	0	0;	load	170300	0.026086	0	0;	load	170400	0.026086	0	0;
	load	180100	0.030107	0	0;	load	180200	0.030107	0	0;	load	180300	0.030107	0	0;	load	180400	0.030107	0	0;
	load	190100	0.033832	0	0;	load	190200	0.033832	0	0;	load	190300	0.033832	0	0;	load	190400	0.033832	0	0;
	load	200100	0.038602	0	0;	load	200200	0.038602	0	0;	load	200300	0.038602	0	0;	load	200400	0.038602	0	0;
	load	210100	0.045605	0	0;	load	210200	0.045605	0	0;	load	210300	0.045605	0	0;	load	210400	0.045605	0	0;
	load	220100	0.048046	0	0;	load	220200	0.048046	0	0;	load	220300	0.048046	0	0;	load	220400	0.048046	0	0;
	load	230100	0.053579	0	0;	load	230200	0.053579	0	0;	load	230300	0.053579	0	0;	load	230400	0.053579	0	0;
	load	240100	0.060959	0	0;	load	240200	0.060959	0	0;	load	240300	0.060959	0	0;	load	240400	0.060959	0	0;
	load	250100	0.068140	0	0;	load	250200	0.068140	0	0;	load	250300	0.068140	0	0;	load	250400	0.068140	0	0;
	load	260100	0.074003	0	0;	load	260200	0.074003	0	0;	load	260300	0.074003	0	0;	load	260400	0.074003	0	0;
	load	270100	0.078777	0	0;	load	270200	0.078777	0	0;	load	270300	0.078777	0	0;	load	270400	0.078777	0	0;
	load	280100	0.085728	0	0;	load	280200	0.085728	0	0;	load	280300	0.085728	0	0;	load	280400	0.085728	0	0;
	load	290100	0.096969	0	0;	load	290200	0.096969	0	0;	load	290300	0.096969	0	0;	load	290400	0.096969	0	0;
	load	300100	0.097719	0	0;	load	300200	0.097719	0	0;	load	300300	0.097719	0	0;	load	300400	0.097719	0	0;
	load	310100	0.105329	0	0;	load	310200	0.105329	0	0;	load	310300	0.105329	0	0;	load	310400	0.105329	0	0;
	load	320100	0.116331	0	0;	load	320200	0.116331	0	0;	load	320300	0.116331	0	0;	load	320400	0.116331	0	0;
	load	330100	0.126422	0	0;	load	330200	0.126422	0	0;	load	330300	0.126422	0	0;	load	330400	0.126422	0	0;
	load	340100	0.133609	0	0;	load	340200	0.133609	0	0;	load	340300	0.133609	0	0;	load	340400	0.133609	0	0;
	load	350100	0.138937	0	0;	load	350200	0.138937	0	0;	load	350300	0.138937	0	0;	load	350400	0.138937	0	0;
	load	360100	0.147925	0	0;	load	360200	0.147925	0	0;	load	360300	0.147925	0	0;	load	360400	0.147925	0	0;
	load	370100	0.165818	0	0;	load	370200	0.165818	0	0;	load	370300	0.165818	0	0;	load	370400	0.165818	0	0;
	load	380100	0.165398	0	0;	load	380200	0.165398	0	0;	load	380300	0.165398	0	0;	load	380400	0.165398	0	0;
	load	390100	0.175363	0	0;	load	390200	0.175363	0	0;	load	390300	0.175363	0	0;	load	390400	0.175363	0	0;
	load	400100	0.190843	0	0;	load	400200	0.190843	0	0;	load	400300	0.190843	0	0;	load	400400	0.190843	0	0;
	load	410100	0.204277	0	0;	load	410200	0.204277	0	0;	load	410300	0.204277	0	0;	load	410400	0.204277	0	0;
	load	420100	0.212862	0	0;	load	420200	0.212862	0	0;	load	420300	0.212862	0	0;	load	420400	0.212862	0	0;
	load	430100	0.218178	0	0;	load	430200	0.218178	0	0;	load	430300	0.218178	0	0;	load	430400	0.218178	0	0;
	load	440100	0.229414	0	0;	load	440200	0.229414	0	0;	load	440300	0.229414	0	0;	load	440400	0.229414	0	0;
	load	450100	0.250000	0	0;	load	450200	0.250000	0	0;	load	450300	0.250000	0	0;	load	450400	0.250000	0	0;


}

 
# # display deformed shape:
# set ViewScale 5;
# DisplayModel2D DeformedShape $ViewScale 10 10 500 1000;
 
# analysis commands
constraints Plain;
numberer RCM;
system BandGeneral;
algorithm Newton;

# set test parameters
set testType NormDispIncr;
set testTol 1.0e-5;
set testTolMax 1.0e-3;
set testIter 100;
test $testType $testTol $testIter 0;		

# set displacement increment limits
set DIncrMin 1.0e-6;
set DIncrMax [expr 1e-3*$totalHgt];

# initialize analysis states
set ok 0;
set currNodeDisp 0.0;
record

# start analysis
while {$ok == 0 && $currNodeDisp < $DMax} {
	
	integrator DisplacementControl $ctrlNodeID $ctrlDOF $DIncr;
	analysis Static;
	set ok [analyze 1];
	set currNodeDisp [nodeDisp $ctrlNodeID 1];

	# start with the initial or a new testTol
	while {$ok != 0 && $testTol <= $testTolMax} {
		# decrease step size (prior to adjusting testTol)
		while {$ok != 0 && [expr $DIncr/2.0] >= $DIncrMin} {
			# reduce step size
			set DIncr [expr $DIncr/2.0];
			puts [format "Reducing step size (DIncr = %1.6e)" $DIncr];
			integrator DisplacementControl $ctrlNodeID $ctrlDOF $DIncr;
			analysis Static;
			set ok [analyze 1];

			# try changing algorithms
			if {$ok != 0} {
				puts "Trying Newton with Initial Tangent ..";
				test NormDispIncr 1.0e-4 100 1;
				algorithm Newton -initial;
				set ok [analyze 1];
				test $testType $testTol $testIter 0;
				algorithm Newton;

			}

			if {$ok != 0} {
				puts "Trying Broyden ..";
				algorithm Broyden 8;
				set ok [analyze 1];
				algorithm Newton;

			}

			if {$ok != 0} {
				puts "Trying NewtonWithLineSearch ..";
				algorithm NewtonLineSearch .8;
				set ok [analyze 1];
				algorithm Newton;

			}

			if {$ok != 0} {				
				puts "Try ModifiedNewton"				
				algorithm ModifiedNewton -initial;
				set ok [analyze 1];				
				algorithm Newton;

			}

		}

		# increase tolerance and resume max step size, if step size almost smaller than limit
		if {$ok != 0} {			
			set testTol [expr $testTol*10.0];
			integrator DisplacementControl $ctrlNodeID $ctrlDOF $DIncrMax;
			analysis Static;
			test $testType $testTol [expr 2*$testIter] 0;
			set ok [analyze 1];
		}

	}

	# gradually increase step size
	if {$ok == 0 && [expr $DIncr*2.0] <= $DIncrMax} {

		set DIncr [expr $DIncr*2.0];
		# resume the initial testTol
		set testTol 1.0e-5;
		test $testType $testTol $testIter 0;
        puts [format "Increasing step size (DIncr = %1.6e)" $DIncr];

	}

	set currNodeDisp [nodeDisp $ctrlNodeID 1];
	puts [format "Roof drift = %1.6e" [expr $currNodeDisp/$totalHgt]];
}


if {$currNodeDisp < $DMax} {
	puts "Analysis Failed!";
}

remove recorders;