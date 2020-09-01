# This procedure builds the uniaxial material for BRBs
# written by: wyy
# date: 2018/03/26
# original code and calibration results from Masao Terishima

proc BuildBRBMaterial {matID A Es Fy} {

set fsm 1.0;

set gamma_mod1 [expr 0.309*exp(-0.14*$A)+1] ;
set fu_t1 [expr $gamma_mod1*1.36*$Fy];
set fu_c [expr {2*$Fy}];

set bk_c1 [expr 0.125*exp(-1.86*$A)+0.011];

set fu_c [expr {2*$Fy}]; 
set bk_t 0.0050;
set Ry 25.0;
set r1 0.91;
set r2 0.15;
set Ru 2.0;
set bi 0.0013;
set bi_u 0.0000;
set rho_i 0.2620;
set Ri 2.7674;
set ly 1.0;

# Material definition
uniaxialMaterial Steel4 $matID [expr $Fy*$gamma_mod1] [expr $fsm*$Es] \
-asym -kin $bk_t $Ry $r1 $r2 $bk_c1 $Ry $r1 $r2 \
-iso $bi $rho_i $bi_u $Ri $ly $bi $rho_i $bi_u $Ri \
-ult $fu_t1 $Ru $fu_c $Ru;


}