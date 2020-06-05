HOOK_HEIGHT=20;
DIAMETER=46;

// Base hook
difference() {
  import("hook.stl");

  translate([30, -25, 0]) {
    #cube(size=[50, 50, 50]);
  }
}

translate([56.5,25]) {
  difference() {
    difference() {
      cylinder(r=(DIAMETER / 2), h=HOOK_HEIGHT);
      #cylinder(r=(DIAMETER / 2) - 2.5, h=HOOK_HEIGHT);
    }
    translate([-DIAMETER / 2, 0]) {
      #cube([DIAMETER, DIAMETER / 2, HOOK_HEIGHT]);
    }
  }
}

