include </home/evan/Documents/github/lasercut/lasercut.scad>; 

use<projection_renderer.scad>;
use<label.scad>;

$fn=60;
// ##### RENDERING OPTIONS #####

render_3d   = true;
//2D
render_sides       = false;
render_top         = false;
render_gasket      = false;

Sep=10-10*$t;
Sep=1.5;

// ##### Dimensions #####
x_in= 8;
y_in= 10;
z_in= 5;
// #####  #####

thickness = 3;

// PCB Size
x_pcb = 100;
y_pcb = 100;


// fingers
NfSide=1;
NfTop=4;

// ATX Front Plate
W = 150;
H = 86;

Hpsu=41.5;
Lpsu=165;
ATXgap=20;

// Top Plate
Wfront = 150;
Wback  = Hpsu*2+ATXgap;
L      = 200;
L1     = 55;
Xindent= 9;
angle = 45;
yindent=Xindent*tan(angle);
Yfrontpanelthick=10;

//
Ybacksq = L-(L1+yindent)+6;
Xseperator1 = Xindent+Hpsu;
Xseperator2 = Xindent+Hpsu*2;

module topPlate()
{
    Wback = Wback - 2*thickness;
    Xindent = Xindent + thickness;
    L = L - thickness;
    
    points = [[0,0], [0,L1], [Xindent,L1+yindent], [Xindent,L], [Xindent+Wback,L], [Xindent+Wback,L1+yindent], [2*Xindent+Wback,L1], [2*Xindent+Wback,Yfrontpanelthick+(Wfront-(2*Xindent+Wback))], [Wfront,Yfrontpanelthick], [Wfront,0]];
    lasercutout(thickness=thickness, points = points,
    simple_tab_holes=[
                [MID,Xseperator1, 0+thickness/2],
                [MID,Xseperator1, (Lpsu)*1/3-thickness/2],
                [MID,Xseperator1, (Lpsu)*2/3-thickness/2],
                [MID,Xseperator1, Lpsu-thickness*1.5],
    
                [MID,Xseperator2, 0+thickness/2],
                [MID,Xseperator2, (Lpsu)*1/3-thickness/2],
                [MID,Xseperator2, (Lpsu)*2/3-thickness/2],
                [MID,Xseperator2, Lpsu-thickness*1.5],
            ]
    );
    translate([Xindent,L1+yindent-6,0])
        lasercutoutSquare(thickness=thickness, x=Wback, y=Ybacksq,
            bumpy_finger_joints=[
                [UP, 1, 1],
                [LEFT, 1, 2],
                [RIGHT, 2, 2]
            ]
    );
}

module topTrim()
{
    Wgap=60;
    L=L+thickness;
    Y1 = Yfrontpanelthick+(Wfront-(2*Xindent+Wback));
    Xinner1 = Xindent+(Wback-Wgap)/2;
    Xinner2 = Xinner1+Wgap;
    
    points = [[0,0], [0,Y1], [Xinner1,Y1+Xinner1], [Xinner1,L-Xinner1-Xindent], [Xindent,L-Yfrontpanelthick], [Xindent,L], [Xindent+Wback,L], [Xindent+Wback,L-Yfrontpanelthick], [Xinner2,L-Xinner1-Xindent], [Xinner2,Y1+Xinner1], [Wfront,Yfrontpanelthick], [Wfront,0]];
    lasercutout(thickness=thickness, points = points);  
}

module top(){
    topPlate();
    translate([0,0,3+Sep*3])
        topTrim();
}

module bottom(){
    topPlate();
    translate([0,0,-3-Sep*3])
        topTrim();
}

module back()
{
    lasercutoutSquare(thickness=thickness, x=Wback-2*thickness, y=H,
    bumpy_finger_joints=[
            [UP, 0, 1],
            [DOWN, 1, 1],
            [LEFT, 0, 1],
            [RIGHT, 0, 1]
        ]
    );  
}

module Seperator()
{
    lasercutoutSquare(thickness=thickness, x=Lpsu, y=H,
    simple_tabs=[
            [DOWN, thickness, 0],
            [DOWN, Lpsu*1/3, 0],
            [DOWN, Lpsu*2/3, 0],
            [DOWN, Lpsu-thickness, 0],
            [UP, thickness, H],
            [UP, Lpsu*1/3, H],
            [UP, Lpsu*2/3, H],
            [UP, Lpsu-thickness, H]
        ]
    ); 
}

module left()
{
    lasercutoutSquare(thickness=thickness, x=Ybacksq, y=H,
    bumpy_finger_joints=[
            [UP, 0, 2],
            [DOWN, 1, 2],
            [RIGHT, 0, 1]
        ]
    ); 
    translate([-L1,0,0])
    lasercutoutSquare(thickness=thickness, x=L1, y=H,
    bumpy_finger_joints=[
                [LEFT, 0, 1]
        ]
    ); 
}

module right()
{
    lasercutoutSquare(thickness=thickness, x=Ybacksq, y=H,
    bumpy_finger_joints=[
            [UP, 0, 2],
            [DOWN, 1, 2],
            [RIGHT, 1, 1]
        ]
    ); 
    N=5;
    translate([-N,0,0])
    lasercutoutSquare(thickness=thickness, x=N, y=H
//    bumpy_finger_joints=[
//                [LEFT, 1, 2]
//        ]
    ); 
}

module FrontPlateAcrylic()
{
    HoleSize=2.7;
    lasercutoutSquare(thickness=thickness, x=Wfront, y=H,
    bumpy_finger_joints=[
            [UP, 1, 3],
            [DOWN, 1, 3]
        ],
    cutouts = [
            [Xindent, 4, 83, 74.5],
            [Wfront-50, 60, 30, 10],
            [Wfront-50, 30, 40, 10]
    ],
    circles_remove = [
            [HoleSize, 6, 16],
            [HoleSize, 6, 16+64],
            [HoleSize, 6+114, 6],
            [HoleSize, 6+138, 6+74],
        ]
    
    );  
}

module Front3d(){
translate([0,-3*Sep,0])
    rotate([90,0,0])
        FrontPlateAcrylic();
}
module Right3d(){
translate([Xindent+Wback-thickness+3*Sep,L-Ybacksq,0])
    rotate([90,0,90])
        right();
}
module Sep13d(){
translate([Xseperator1,0,0])
    rotate([90,0,90])
        Seperator();
}
module Sep23d(){
translate([Xseperator2,0,0])
    rotate([90,0,90])
        Seperator();
}
module Top3d(){
translate([0,0,H+Sep*3]){
    top();
}
}
module Bottom3d(){
translate([0,0,-thickness-Sep*3]){
    bottom();
}
}
module Back3d(){
rotate([90,0,0])
    translate([Xindent+thickness,0,-L-thickness-Sep*3])
        back();
    }
module Left3d(){
translate([Xindent-Sep*3,L-Ybacksq,0])
    rotate([90,0,90])
    left();
}


module 3d() {
    Front3d();
    Right3d();
    Sep13d();
    Sep23d();
    Top3d();
    Bottom3d();
    Back3d();
    Left3d();
}

if (render_3d) {
            3d();
} else {
    kerf=0.1;
   // projection_renderer(render_index=render_index, kerf_width//=0.1) {  
  projection(){
    if(render_sides){  
            side(z,y);
        translate([z+thickness+.1, 0, 0]) 
            side(z,x);
        translate([(z+thickness+.1)*2, 0, 0]) 
            side(z,x);
        translate([(z+thickness+.1)*3, 0, 0])  
            side(z,y);
    }
    if(render_top){
        //translate([(y+thickness+80)*2, 0, 0]) 
            top();
          //  translate([(y+thickness+80)*2, 0, 0]) 
            //    mirror([0,0,0])
              //  enclosure_bottom_etch();
    }
    if(render_gasket){
        for(ix=[0:3])
            translate([ix*((x_pcb-x_c)/2+kerf),0,0])
                gasket();
    }
}
}

