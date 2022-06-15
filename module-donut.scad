//
// donut and negative donut
//

$fn = 128;


module  donut           ( donut_diameter, section_diameter )
{
    rotate_extrude( angle = 360 )
        translate( [ donut_diameter, 0, 0 ] )
            circle( r = section_diameter );    
}


module negative_donut   ( donut_diameter, section_diameter, excentricity )
{
    difference()    {
       translate( [ 0, 0, 0 ] )
            donut( donut_diameter, section_diameter );

       translate( [0, 0, section_diameter ] )
            donut(
                donut_diameter + section_diameter * 2 * excentricity    ,
                section_diameter * 2 * excentricity
            ); 
    }    
}

//donut( 20, 2 );
//negative_donut( 20, 5, 1 );
