DIAMETER=62;
DEPTH=10;
OFFSET=3;

difference() {
  union() {
    // Insert
    cylinder(r=(DIAMETER / 2), h=DEPTH, center=true);

    // Top cover
    translate([0, 0, -(DEPTH / 2)])
      cylinder(r=(DIAMETER / 2) + 12, h=OFFSET, center=true);
  }

  // Cutout trench
  #cylinder(r=(DIAMETER / 2) - OFFSET, h=DEPTH * 2, center=true);
}
