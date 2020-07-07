DIAMETER=62;
DEPTH=10;
OFFSET=3;

difference() {
  union() {
    // Insert
    cylinder(r=(DIAMETER / 2) - 4, h=DEPTH * 2, center=true);

    // Top cover
    translate([0, 0, -(DEPTH / 2) -4])
      cylinder(r=(DIAMETER / 2) + 12, h=OFFSET, center=true);
  }

  // Cutout trench
  translate([0, 0, 2])
  #cylinder(r=(DIAMETER / 2) - 4 - OFFSET, h=DEPTH * 2, center=true);

  // Cable hole
  translate([DIAMETER - 30, 0 ,0])
  #cylinder(r=20 - OFFSET, h=DEPTH * 3, center=true);
}
