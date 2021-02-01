// Andre Betz
// github@AndreBetz.de
// SodaStream Stand Holder
// Zwieselbrau.de

WandD       =   3;
BodenH      =   5;
SodaBottleD =  61;
SodaBottleH = 370;
SodaStandH  = SodaBottleH / 4;

$fn=100;

translate([(-SodaBottleD-WandD)/2,0,0])
    rotate(a=[90,-90,0])
        linear_extrude(height = WandD, center = true, convexity = 10, twist = 0)
            polygon(points=[[0,0],[SodaStandH,0],[0,SodaBottleD/2]], paths=[[0,1,2]]);
translate([0,(SodaBottleD+WandD)/2,0])
    rotate(a=[0,-90,0])
        linear_extrude(height = WandD, center = true, convexity = 10, twist = 0)
            polygon(points=[[0,0],[SodaStandH,0],[0,SodaBottleD/2]], paths=[[0,1,2]]);
translate([(SodaBottleD+WandD)/2,0,0])
    rotate(a=[-90,-90,0])
        linear_extrude(height = WandD, center = true, convexity = 10, twist = 0)
            polygon(points=[[0,0],[SodaStandH,0],[0,SodaBottleD/2]], paths=[[0,1,2]]);
translate([0,(-SodaBottleD-WandD)/2,0])
    rotate(a=[180,-90,0])
        linear_extrude(height = WandD, center = true, convexity = 10, twist = 0)
            polygon(points=[[0,0],[SodaStandH,0],[0,SodaBottleD/2]], paths=[[0,1,2]]);
    

difference() {
    cylinder(h=SodaStandH, r1=SodaBottleD/2+WandD, r2=SodaBottleD/2+WandD, center=false);
    translate([0,0,-1])
        cylinder(h=SodaStandH+2, r1=SodaBottleD/2, r2=SodaBottleD/2, center=false);
}
difference() {
    cylinder(h=BodenH, r1=SodaBottleD+WandD/2, r2=SodaBottleD+WandD/2, center=false);
    translate([0,0,-1])
        cylinder(h=BodenH+2, r1=WandD, r2=WandD, center=false);
}