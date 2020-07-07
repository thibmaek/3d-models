$fn=30;

module screw_hole(diameter=5) {
  rotate([0,90,0]) {
    cylinder(r=(diameter / 2), h=10, center=true);
  }
}
