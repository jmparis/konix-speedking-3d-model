//
// https://stackoverflow.com/questions/46805783/smooth-the-sharp-corners-between-objects-in-openscad
//

sphere ( r = 3, $fn = 50 );

rotate( [90, 0, 0] )
    cylinder    (
        h       =   20      ,
        r       =    1      ,
        center  =   true    ,
        $fn     =   20
    );

rotate( [0, 90, 0] )
    cylinder    (
        h       =   20      ,
        r       =    1      ,
        center  =   true    ,
        $fn     =   20
    );

for( r = [0 : 90 : 270] )
    rotate( [ 90, 0, r ] )
        negative_donut();

module negative_donut() {
    difference(){
       translate( [0, 0, 3   ] )
            donut( 1, 0.5 ); 
       #translate( [0, 0, 3.45] )
            donut( 2,   1 ); 
    }    
}

module donut(r1, r2){
    rotate_extrude( $fn = 50 )
        translate( [r1, 0, 0] )
            circle( r = r2 );
}
