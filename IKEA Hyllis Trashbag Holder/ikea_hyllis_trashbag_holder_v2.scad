HOOK_HEIGHT=20;
DIAMETER=46;

// Hook
union() {
  translate([33.2,14,0]) {
    // Long wall
    cube(size=[3, 41, 20]);

    // Lower hook
    translate([-4,21,0]) {
      cube(size=[7, 2, 20]);

      translate([0,0,0]) {
        cube(size=[2, 7, 20]);
      }

      translate([-11,18,0]) {
        cube(size=[18, 2, 20]);
      }
    }
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

