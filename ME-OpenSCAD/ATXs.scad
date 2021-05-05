include </home/evan/github/lasercut/lasercut.scad>; 
include <Hex.scad>; 


module ATX_PCB(){
import("PCBATX.stl");
}
module PSU_PCB(){
 import("PCBPSU.stl");
}
module PSU(){
import("PSU.stl");
}

$fn=60;
// ##### RENDERING OPTIONS #####

render_3d   = true;
render_2d   = false;
render_2d2  = false;
render_pcbATX   = false;


// Part Seperation
Sep=10-10*$t;
Sep=0.1;

thickness = 3;

Tape_thickness= 2;
PCB_Thickness = 1.575;
// ATX Front Plate
W = 150;


Hpsu=41;
Lpsu=186;
Wpsu=74.5;
ATXgap=12+3;
PSU_to_psuPCB=18.5;
Backgap=PSU_to_psuPCB- thickness*2+PCB_Thickness+Tape_thickness;

H = Wpsu+thickness*1;

// Top Plate
Wfront = 150;
Wback  = (Hpsu+thickness)*2+ATXgap+thickness;
L      = Lpsu+Backgap;
L1     = 55;
Xindent= 9;
angle =45;
yindent=Xindent*tan(angle);
Yfrontpanelthick=10;

//
Ybacksq = L-(L1+yindent)+6;
Xseperator1 = Xindent+Hpsu+thickness;
Xseperator2 = Xindent+(Hpsu+thickness)*2;
Lseperator  = Lpsu - thickness*2+PSU_to_psuPCB;

// ATX PCB

Watx = Ybacksq -10;
Hatx = H-6; 
PCB_Thick=10;



module pcbATX(){
    //cube([Watx,Hatx,PCB_Thickness]);
ATX_PCB();    
}
module pcbATX3d(){
    translate([Xindent+Wback-thickness+3*Sep-thickness-1.5+0,Lseperator+PCB_Thickness-112.25,thickness])
    rotate([90,0,0])
    rotate([0,90,0])
    color("green",0.5)
    pcbATX();
   

}

module pcbPSU3d(){
    translate([Xseperator2+thickness-75.5+8,Lseperator+PCB_Thickness,thickness])
    rotate([90,0,0])
    color("green",0.5)
    PSU_PCB();
}

module PSU3d(){
       translate([Xindent+Hpsu+2,Lpsu/2-thickness*2,Wpsu/2+thickness])
    rotate([0,0,90])
    color("white",0.5)
    PSU(); 

       translate([Xindent+Hpsu*2+thickness+2,Lpsu/2-thickness*2,Wpsu/2+thickness])
    rotate([0,0,90])
    color("white",0.5)
    PSU(); 
    
    
}

module pcbATX2d(){
    kerf=0.1;
    projection(){
    pcbATX();
        }
}


// ================================================
// Define 3D View
// ================================================

module 3d() {
    FrontMetal3d();
    Front3d();
    Right3d();
    Sep13d();
    Sep23d();
    Top3d();
    Bottom3d();
    Back3d();
    Left3d();
    pcbATX3d();
    pcbPSU3d();
   // PSU3d();
}

// ================================================
// Define 2D View
// ================================================

module 2d() {
    kerf=0.1;
    z=200;
    H=H+thickness*3+.1;
    Wfront=Wfront+thickness*5+.1;
    projection()
    {
            FrontPlateAcrylic();
        translate([0,H, 0]) 
            right();
        translate([0, H*2, 0]) 
            back();
        translate([Wfront-13, 0, 0])  
            Seperator();
        translate([Wfront-13, H, 0])  
            Seperator(1);
        translate([Wfront, H*2, 0])  
            left();
        translate([Wfront*3-20, 250, 0])  
            rotate([0,0,180])
            topPlate();
        translate([Wfront*3+60, 0, 0])  
            rotate([0,0,90])
        FrontPlateMetal();

    }   
}

module 2d2() {
    kerf=0.1;
    z=200;
    H=H+thickness*3+.1;
    Wfront=Wfront+thickness*5+.1;
    projection()
    {



            topPlate();
        translate([Wfront*1, 0, 0])
            topTrim();
        translate([Wfront*2, 0, 0])
            topTrim();
    }}



// ================================================
// Part Positioning
// ================================================
module FrontMetal3d(){
translate([0,-thickness*1-6*Sep,-thickness])
    rotate([90,0,0])
        FrontPlateMetal();
}
module Front3d(){
translate([0,-3*Sep,0])
    rotate([90,0,0])
        FrontPlateAcrylic();
}
module Right3d(){
translate([Xindent+Wback-thickness+3*Sep,L-Ybacksq,thickness])
    rotate([90,0,90])
        right();
}
module Sep13d(){
translate([Xseperator1,0,thickness])
    rotate([90,0,90])
        Seperator();
}
module Sep23d(){
translate([Xseperator2,0,thickness])
    rotate([90,0,90])
        Seperator(1);
}
module Top3d(){
translate([0,0,H+Sep*3]){
    top();
}
}
module Bottom3d(){
translate([0,0,-Sep*3]){
    bottom();
}
}
module Back3d(){
rotate([90,0,0])
    translate([Xindent+thickness,0,-L-thickness-Sep*6])
        back();
    }
module Left3d(){
translate([Xindent-Sep*3,L-Ybacksq,thickness])
    rotate([90,0,90])
    left();
}


// ================================================
// Part Definitions
// ================================================

module topPlate()
{
    Wback = Wback - 2*thickness;
    Xindent = Xindent + thickness;
    L = L - thickness;
    
    points = [[0,0], [0,L1], [Xindent,L1+Xindent], [Xindent,L+yindent-thickness*2], [Xindent+Wback,L+yindent-thickness*2], [Xindent+Wback,L1+Xindent], [2*Xindent+Wback,L1], [2*Xindent+Wback,Yfrontpanelthick+(Wfront-(2*Xindent+Wback))], [Wfront,Yfrontpanelthick], [Wfront,0]];
    
    difference(){
        union(){
    lasercutout(thickness=thickness, points = points,
    simple_tab_holes=[
                [MID,Xseperator1, 0+thickness*1.5],
                [MID,Xseperator1, (Lpsu)*1/3-thickness/2],
                [MID,Xseperator1, (Lpsu)*2/3-thickness/2],
                [MID,Xseperator1, Lpsu-thickness*1.5],
    
                [MID,Xseperator2, 0+thickness*1.5],
                [MID,Xseperator2, (Lpsu)*1/3-thickness/2],
                [MID,Xseperator2, (Lpsu)*2/3-thickness/2],
                [MID,Xseperator2, Lpsu-thickness*1.5],
            ],
                    cutouts = [
            [Xindent+Hpsu/2-7.5, 1, 17, 13],
            [Xindent+Hpsu+thickness+Hpsu/2-7.5, 1, 17, 13],
            [Wback+7.8,87.5,1.7,27],
            [Wback+7.8,155.6,1.7,22.5],
            [Wback-19,L-0.65,28,1.7],
            [32,L-0.65,17,1.7],
            ]
    

    );
    translate([Xindent,L1+yindent-thickness*2,0])
        lasercutoutSquare(thickness=thickness, x=Wback, y=Ybacksq,
            bumpy_finger_joints=[
               // [UP, 1, 1],
                [LEFT, 1, 2],
                [RIGHT, 2, 2]
            ],
            cutouts = [
            [Xindent, 4, 87,Lpsu-(L1-thickness*3)]
    ]
    );
}}}

module topTrim()
{
    Wgap=45;
    L=L;
    Y1 = Yfrontpanelthick+(Wfront-(2*Xindent+Wback));
    Xinner1 = Xindent+(Wback-Wgap)/2;
    Xinner2 = Xinner1+Wgap;
    
    points = [[0,0], [0,Y1], [Xinner1,Y1+Xinner1], [Xinner1,L-Xinner1-Xindent], [Xindent,L-Yfrontpanelthick], [Xindent,L], [Xindent+Wback,L], [Xindent+Wback,L-Yfrontpanelthick], [Xinner2,L-Xinner1-Xindent], [Xinner2,Y1+Xinner1], [Wfront,Yfrontpanelthick], [Wfront,0]];
    lasercutout(thickness=thickness, points = points);  
    
    translate([Xindent,L-thickness,0])
        lasercutoutSquare(thickness=thickness, x=Wback, y=thickness,
            bumpy_finger_joints=[
                [UP, 1, 1]
            ]
    );
    
    translate([0,0,0])
        lasercutoutSquare(thickness=thickness, x=Wfront,        y=thickness/2,
            bumpy_finger_joints=[
                [DOWN, 1, 3]
            ]
    );
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
    H=H-thickness;
    difference(){
    width = (Wback-2*thickness);
        
    lasercutoutSquare(thickness=thickness, x=Wback-2*thickness, y=H+thickness*2,
    bumpy_finger_joints=[
            [UP, 0, 1],
            [DOWN, 1, 1],
            [LEFT, 0, 1],
            [RIGHT, 0, 1]
        ],
        slits = [
        [RIGHT,width*0.7,10,width*(1-(1-0.70)*2)],
        [RIGHT,width*0.78,20,width*(1-(1-0.78)*2)],
        [RIGHT,width*0.85,30,width*(1-(1-0.85)*2)],
        [RIGHT,width*0.9,40,width*(1-(1-0.9)*2)],
        [RIGHT,width*0.85,50,width*(1-(1-0.85)*2)],
        [RIGHT,width*0.78,60,width*(1-(1-0.78)*2)],
        [RIGHT,width*0.70,70,width*(1-(1-0.7)*2)]
        ]
    );  
        
    radius = 3;
    latticeWidth = 13;
    latticeLength = 11;
    spacing = 2.1;
    height = 4;
//    translate([3,6,-0.5])
//    difference(){
//        cube([(latticeLength-1)*(spacing+radius*2)
//        ,(latticeWidth)*(spacing+radius),4]);
//    honeycomb(radius,latticeWidth,latticeLength,spacing,height);
//    }
        

    }
}

module Seperator(fingers)
{
    Xair = 10;
    Yair = 10;
    H=H-thickness;
    tabs = [
            [DOWN, thickness*2, 0],
            [DOWN, Lpsu*1/3, 0],
            [DOWN, Lpsu*2/3, 0],
            [DOWN, Lpsu-thickness, 0],
            [UP, thickness*2, H],
            [UP, Lpsu*1/3, H],
            [UP, Lpsu*2/3, H],
            [UP, Lpsu-thickness, H],
            [LEFT, Lseperator+thickness, thickness/2+10.5],
            [LEFT, Lseperator+thickness, -thickness/2+H-9.5]
        ];
    nuts = [
            [RIGHT, Lseperator, H/2, 9.3],
    ];
    cuts = [
            [Lseperator-Xair-Xair/2, Yair, Xair, Yair],
            //[Lseperator-Xair-Xair/2, Yair*3, Xair, Xair],
            [Lseperator-Xair-Xair/2, Yair*5, Xair, Xair],
            [Lseperator, H/2-15, thickness+.1, 30]
            ];
    
    if(fingers){
    lasercutoutSquare(thickness=thickness, x=Lseperator, y=H,
    simple_tabs=tabs,
        bumpy_finger_joints=[
                [LEFT, 0, 4]
        ],
    cutouts = cuts,
        captive_nuts=nuts
    ); 
    }
    else
    {
    lasercutoutSquare(thickness=thickness, x=Lseperator, y=H,
    simple_tabs=tabs,
        cutouts = cuts,
        captive_nuts=nuts
    );   
    }

}

module left()
{
    H = H -thickness;
    lasercutoutSquare(thickness=thickness, x=Ybacksq, y=H,
    bumpy_finger_joints=[
            [UP, 0, 2],
            [DOWN, 1, 2],
            [RIGHT, 0, 1]
        ]
    ); 
    translate([-L1-thickness,0,0])
    lasercutoutSquare(thickness=thickness, x=L1+thickness, y=H,
    bumpy_finger_joints=[
                [LEFT, 0, 4]
        ]
    ); 
}

module right()
{
    margin=1;
    // 2x8
    X_2x8 = 95.5-margin;Y_2x8 = 10.8-margin;
    SX_2x8 = 26.5+2*margin;SY_2x8 = 58.6+2*margin;
    // 2x6
    X_2x6 = 44-margin;Y_2x6 = 2.8-margin;
    SX_2x6 = 12+3+2*margin;SY_2x6 = 62.8+0+2*margin;
    // ATX
    X_ATX = 31-margin;Y_ATX = 2.8-margin;
    SX_ATX = 12+2*margin;SY_ATX = 66.4+2*margin;
    // 12V
    X_12V = 65.5-margin;Y_12V = 35-margin;
    SY_12V = 12+2*margin;SX_12V = 19+2*margin;
    
    H = H -thickness;
    lasercutoutSquare(thickness=thickness, x=Ybacksq, y=H,
    bumpy_finger_joints=[
            [UP, 0, 2],
            [DOWN, 1, 2],
            [RIGHT, 1, 1]
        ],
        cutouts = [
            [X_2x8, Y_2x8, SX_2x8, SY_2x8],
            [X_2x6, Y_2x6, SX_2x6, SY_2x6],
            [X_ATX, Y_ATX, SX_ATX, SY_ATX],
            [X_12V, Y_12V, SX_12V, SY_12V]
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
    H=H+thickness*1;
    lasercutoutSquare(thickness=thickness, x=Wfront, y=H,
    bumpy_finger_joints=[
            [UP, 1, 3],
            [DOWN, 0, 3]
        ],
    cutouts = [
            [Xindent, thickness, (Hpsu+thickness)*2+thickness, Wpsu]
            //[Wfront-45, 60, 30, 10],
           // [Wfront-45, 30, 40, 10]
    ],
    circles_remove = [
            [HoleSize, 6, 16-thickness],
            [HoleSize, 6, 16+64-thickness],
            [HoleSize, 6+114, 6-thickness],
            [HoleSize, 6+138, 6+74-thickness],
        ]
    
    );  
    translate([Xindent+0,thickness,0])
        lasercutoutSquare(thickness=thickness, x=0,y=H -thickness*2,
            bumpy_finger_joints=[
                [RIGHT, 0, 4]
            ],
            circles_remove = [
                [HoleSize, -3, 10],
            ]
        );
    translate([Xindent+(Hpsu+thickness)*2+thickness,thickness,0])
        lasercutoutSquare(thickness=thickness, x=0,y=H -thickness*2,
            bumpy_finger_joints=[
                [LEFT, 1, 4]
            ]
        );
}

module FrontPlateMetal()
{
    HoleSize=2.7;
    H=H+thickness*3;
    lasercutoutSquare(thickness=thickness, x=Wfront, y=H,

    cutouts = [
            [Xindent+thickness, thickness*2, Hpsu*2+thickness, Wpsu]
           // [Wfront-45, 63, 30, 10],
            //[Wfront-45, 33, 40, 10]
    ],
    circles_remove = [
            [HoleSize, 6, 16],
            [HoleSize, 6, 16+64],
            [HoleSize, 6+114, 6],
            [HoleSize, 6+138, 6+74]
        ]
    
    );  
}

module frontInserts()
{
    Y=-8*Sep;
    translate([6,Y,16-thickness])
        rotate([-90,0,0])
            insert(F1BM4);
    translate([6,Y,16+64-thickness])
        rotate([-90,0,0])
            insert(F1BM4);
    translate([6+114,Y,6-thickness])
        rotate([-90,0,0])
            insert(F1BM4);
    translate([6+138,Y,6+74-thickness])
        rotate([-90,0,0])
            insert(F1BM4);
}

//frontInserts();

if (render_3d) {
    3d();
} 
if (render_2d){
    2d();
}
if (render_2d2){
    2d2();
}
if (render_pcbATX){
    pcbATX2d();
}

