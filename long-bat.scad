// Long bat

$fn = 64;

ball_diameter   =   18;
cylinder_height =   24;

cylinder_d1     =   cylinder_height / 2;
cylinder_d2     =   ball_diameter   / 2;

translate( [0, 0, cylinder_height + ball_diameter / 2] )
    sphere( d = ball_diameter );

cylinder(
    h   =   cylinder_height ,
    d1  =   cylinder_d1     ,
    d2  =   cylinder_d2
 );
