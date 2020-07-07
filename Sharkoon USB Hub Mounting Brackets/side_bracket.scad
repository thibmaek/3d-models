include <const.scad>
use <lib.scad>

BRACKET_DEPTH=25;
BRACKET_HEIGHT=10;

SCREW_BRACKET_DEPTH=10;

difference() {
  linear_extrude(height=BRACKET_HEIGHT) {
    translate([0, -SCREW_BRACKET_DEPTH, 0]) {
      square(size=[BRACKET_WALL_HEIGHT, SCREW_BRACKET_DEPTH]);
    }

    square(size=[BRACKET_WALL_HEIGHT, BRACKET_DEPTH]);

    translate([BRACKET_WALL_HEIGHT, 0, 0]) {
      square(size=[HUB_HEIGHT, BRACKET_WALL_HEIGHT]);
    }

    translate([(HUB_HEIGHT + BRACKET_WALL_HEIGHT), 0, 0]) {
      square(size=[BRACKET_WALL_HEIGHT, BRACKET_DEPTH]);
    }
  }

  translate([0, -(SCREW_BRACKET_DEPTH / 2), BRACKET_HEIGHT / 2]) {
    screw_hole();
  }
}
