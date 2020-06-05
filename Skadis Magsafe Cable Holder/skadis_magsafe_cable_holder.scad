// Magsafe holder
translate([0,0,40])
rotate([270, 0, 180])
  import("magsafe_holder.stl");

// Hook
translate([-2.5,3,28]) {
  difference(){
    cube([5,5+9,12]);

    translate([0,5,0])
      #cube([5,5.2,12-4.75]);
  }
}

