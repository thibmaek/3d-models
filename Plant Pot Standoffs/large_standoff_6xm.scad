$fn=30;

diameter=60;
outer_ring_width=5;
ring_height=40;

difference() {
  difference() {
    cylinder(r=diameter, h=ring_height, center=true);
    #cylinder(r=(diameter - outer_ring_width), h=ring_height, center=true);
  }

  union() {
    translate([10, -diameter, -28])
    #sphere(r=20);

    translate([53, 18, -28])
    #sphere(r=20);

    translate([-53, 18, -28])
    #sphere(r=20);
  }
}
