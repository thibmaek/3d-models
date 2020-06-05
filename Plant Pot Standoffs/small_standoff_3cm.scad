$fn=30;

diameter=30;
outer_ring_width=5;
ring_height=20;

difference() {
  difference() {
    cylinder(r=diameter, h=ring_height, center=true);
    #cylinder(r=(diameter - outer_ring_width), h=ring_height, center=true);
  }

  union() {
    translate([0, -diameter, -(ring_height - 5)])
    #sphere(r=outer_ring_width * 2);

    translate([20, 18, -(ring_height - 5)])
    #sphere(r=outer_ring_width * 2);

    translate([-20, 18, -(ring_height - 5)])
    #sphere(r=outer_ring_width * 2);
  }
}
