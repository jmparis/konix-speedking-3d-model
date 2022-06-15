include <module-donut.scad>
// shaft

$fn = 128;


// long main cylinder               //
main_cylinder_height            =   60;
main_cylinder_diameter          =   4.5;

translate( [0, 0, 0 ] ) {
    cylinder(
        h   =   main_cylinder_height    ,
        d   =   main_cylinder_diameter
    );
}
////


// transition between cylinders     //
main_to_small_cylinder_height   =   1;
main_to_small_cylinder_d1       =   main_cylinder_diameter;
main_to_small_cylinder_d2       =   2.9;

translate( [0, 0, main_cylinder_height ] ) {
    cylinder(
        h   =   main_to_small_cylinder_height   ,
        d1  =   main_to_small_cylinder_d1       ,
        d2  =   main_to_small_cylinder_d2
    );
}
////


// small cylinder                   //
small_cylinder_height           =   5;
small_cylinder_diameter         =   2.9;

translate( [0, 0, main_cylinder_height + main_to_small_cylinder_height ] ) {
    cylinder(
        h   =   small_cylinder_height           ,
        d   =   small_cylinder_diameter
    );
}
////


// ball top                         //
ball_diameter                   =   4;

translate(
    [
        0   ,
        0   ,
        main_cylinder_height            +
        main_to_small_cylinder_height   +
        small_cylinder_height           +
        ball_diameter / 2
    ]
)
{
    sphere( d = ball_diameter );
}
////


// Smooth jointure between cylinder and sphere
donut_section   =   0.8;

translate(
    [
        0   ,
        0   ,
        main_cylinder_height            +
        main_to_small_cylinder_height   +
        small_cylinder_height           +
        donut_section
    ]
)
    mirror( [0, 0, 1] )
        negative_donut(
            donut_diameter  =   ball_diameter / 2 - 0.55    ,
            section_diameter=   donut_section               ,
            excentricity    =   2.5
        );
////

