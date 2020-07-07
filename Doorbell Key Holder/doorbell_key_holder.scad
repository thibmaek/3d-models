PEG_HEIGHT=20;
PEG_RADIUS=10;

INNER_WIDTH=117;
INNER_HEIGHT=162;

DEPTH=15;

difference() {
  cube(size=[INNER_WIDTH + 10, INNER_HEIGHT + 40, DEPTH]);

  translate([5, 30, 0])
    #cube(size=[INNER_WIDTH, INNER_HEIGHT, DEPTH]);
}

difference() {
  scale([1.55, 1, 1]) {
    translate([INNER_WIDTH - 52, 10, 6.9])
      import("keyhooks.stl");
  }

  translate([INNER_WIDTH - 65, 12, 5])
    #cube(size=[50, 40, 5]);
}
