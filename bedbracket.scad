module bed_bracket() {
  margin = 5;
  outer = 105;
  inner = 42;
  height = 15;
  difference() {
      cube([outer+2*margin,outer+2*margin,height]);
      translate([margin,0,0])
        cube([outer,outer+2*margin,height-margin/2]) ;
  };

}
bed_bracket();
