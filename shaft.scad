// shaft

$fn = 64;

cylinder( h = 60, d = 4.5 );

translate( [0, 0, 60] ) {
    cylinder( h = 5, d = 3);
}

translate( [0, 0, 60 + 5 + 3/2 ]) {
    sphere( d = 4 );
}

