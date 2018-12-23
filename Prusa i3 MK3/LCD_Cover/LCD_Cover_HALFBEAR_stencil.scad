// PRUSA iteration4
// LCD cover
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

include <bear_logo.scad>

difference()
{
    union()
    {
        // ORIGINAL PRUSA text
        translate([-71,51,0.4]) rotate([180,0,0]) linear_extrude(height = 0.4)
        { text("HALF BEAR",font = "helvetica:style=Bold", size=7, center=true); }
        translate([-14,51,0.4]) rotate([180,0,0]) linear_extrude(height = 0.4)
        { text("PRUSA",font = "helvetica:style=Bold", size=11, center=true); }
        translate( [ -70 , 40.5 , 0 ] ) cube( [ 51 , 1.6 , 0.4 ] );
        translate( [ -70 , 41.3 , 0 ] ) cylinder( h = 0.4, r = 0.8, $fn=30);
        translate( [ -19 , 41.3 , 0 ] ) cylinder( h = 0.4, r = 0.8, $fn=30);            


        // X sign on reset button
        translate( [ 63 , 34 , 0 ] ) rotate([0,0,45]) cube( [ 2, 8, 0.4 ] );  
        translate( [ 57.5 , 35.5 , 0 ] ) rotate([0,0,-45]) cube( [ 2, 8, 0.4 ] );  
                        
        // Bear Logo
        scale(0.24,0.24,1)
        translate([-266, 115, 0]) rotate(180)
        //translate([-266, 125, 0]) rotate(180)
        bearlogo(1.6666);
    }
}
