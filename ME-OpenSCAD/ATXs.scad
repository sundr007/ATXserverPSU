include </home/evan/github/lasercut/lasercut.scad>; 


$fn=60;
// ##### RENDERING OPTIONS #####

render_3d   = true;
render_2d   = false;
render_pcbATX   = false;


// Part Seperation
Sep=10-10*$t;
Sep=0;

thickness = 3;

// ATX Front Plate
W = 150;


Hpsu=41.5;
Lpsu=165;
Wpsu=80;
ATXgap=10;
Backgap=20;

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

// ATX PCB
PCB_Thickness = 1.575;
Watx = Ybacksq -10;
Hatx = H-6; 



module pcbATX(){
    cube([Watx,Hatx,PCB_Thickness]);    
}
module pcbATX3d(){
    translate([Xindent+Wback-thickness+3*Sep-thickness,L-thickness*2-Watx,thickness+1.5])
    rotate([90,0,0])
    rotate([0,90,0])
    pcbATX();
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
    //pcbATX3d();
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
        translate([Wfront, 0, 0])  
            Seperator();
        translate([Wfront, H, 0])  
            Seperator(1);
        translate([Wfront, H*2, 0])  
            left();
        translate([Wfront*2, 0, 0])   
            topPlate();
        translate([Wfront*3, 0, 0]) 
            topPlate();
        translate([Wfront*4, 0, 0])
            topTrim();
        translate([Wfront*5, 0, 0])
            topTrim();

    
    }   
}







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
    
    points = [[0,0], [0,L1], [Xindent,L1+yindent], [Xindent,L], [Xindent+Wback,L], [Xindent+Wback,L1+yindent], [2*Xindent+Wback,L1], [2*Xindent+Wback,Yfrontpanelthick+(Wfront-(2*Xindent+Wback))], [Wfront,Yfrontpanelthick], [Wfront,0]];
    
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
            [Xindent, 4, 83,Lpsu-(L1+yindent-thickness*2)]
    ]
    );
}
//    translate([Wfront-thickness-0.6,0])
//        rotate([0,0,45])
//        cube([1,51.75,thickness+.1]);
//
//    translate([Xindent+Wback+thickness*1,L1])
//        rotate([0,0,180])
//        cube([1,18.2,thickness+.1]);

}
    
    
//        translate([0,0,0])
//        lasercutoutSquare(thickness=thickness, x=Wfront, y=thickness/2,
//            bumpy_finger_joints=[
//                [DOWN, 1, 3]
//            ]
//    );
}

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
    lasercutoutSquare(thickness=thickness, x=Wback-2*thickness, y=H+thickness*2,
    bumpy_finger_joints=[
            [UP, 0, 1],
            [DOWN, 1, 1],
            [LEFT, 0, 1],
            [RIGHT, 0, 1]
        ]
    );  
}

module Seperator(fingers)
{
    H=H-thickness;
    tabs = [
            [DOWN, thickness*2, 0],
            [DOWN, Lpsu*1/3, 0],
            [DOWN, Lpsu*2/3, 0],
            [DOWN, Lpsu-thickness, 0],
            [UP, thickness*2, H],
            [UP, Lpsu*1/3, H],
            [UP, Lpsu*2/3, H],
            [UP, Lpsu-thickness, H]
        ];
    if(fingers){
    lasercutoutSquare(thickness=thickness, x=Lpsu, y=H,
    simple_tabs=tabs,
        bumpy_finger_joints=[
                [LEFT, 0, 4]
        ]
    ); 
    }
    else
    {
    lasercutoutSquare(thickness=thickness, x=Lpsu, y=H,
    simple_tabs=tabs
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
    X_2x8 = 71.75-margin;Y_2x8 = 10.8-margin;
    SX_2x8 = 26.5+2*margin;SY_2x8 = 58.6+2*margin;
    // 2x6
    X_2x6 = 16.25-3-margin;Y_2x6 = 2.8-margin;
    SX_2x6 = 12+3+2*margin;SY_2x6 = 62.8+0+2*margin;
    // ATX
    X_ATX = 0.8-margin;Y_ATX = 2.8-margin;
    SX_ATX = 12+2*margin;SY_ATX = 66.4+2*margin;
    // 12V
    X_12V = 35.27-margin;Y_12V = 31.95-margin;
    SX_12V = 12+2*margin;SY_12V = 19+2*margin;
    
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
            [Xindent, thickness, (Hpsu+thickness)*2+thickness, Wpsu],
            [Wfront-45, 60, 30, 10],
            [Wfront-45, 30, 40, 10]
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
            [Xindent+thickness, thickness*2, Hpsu*2+thickness, Wpsu],
            [Wfront-45, 63, 30, 10],
            [Wfront-45, 33, 40, 10]
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
if (render_pcbATX){
    pcbATX2d();
}

