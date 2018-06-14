$fn=200;

rodd=5.25;
outgap=60.5;
thickness=2;
height=2;
turnrad=(outgap-6*thickness-2*rodd)/10;



module turnpos (number)
{
    translate([(number-1)*(1*thickness+2*turnrad)+(turnrad+thickness),0,0])
    difference()
    {
        cylinder(r=turnrad+thickness,h=height);
        
        translate([0,0,-.1])
        cylinder(r=turnrad,h=height+.2);
        
        translate([-turnrad-thickness-.1,0,-.1])
        cube([2*turnrad+2*thickness+.2,2*turnrad+.2,height+.2]);
    }
}

module turnneg (number)
{
    translate([(number-1)*(1*thickness+2*turnrad)+(turnrad+thickness),-.1,0])
    difference()
    {
        cylinder(r=turnrad+thickness,h=height);
        
        translate([0,0,-.1])
        cylinder(r=turnrad,h=height+.2);
        
        translate([-turnrad-thickness-.1,-2*turnrad-.2,-.1])
        cube([2*turnrad+2*thickness+.2,2*turnrad+.2,height+.2]);
    }
}

module clip ()
{
    translate([-rodd/2,0,0])
    difference()
    {
        cylinder(d=rodd+2*thickness,h=height);
        
        translate([0,0,-.1])
        cylinder(d=rodd,h=height+.2);
        
        translate([-rodd*.25,0,-.1])
        cube([2*rodd+.2,2*rodd+.2,height+.2]);
    }  
}

clip();

turnneg(1);
turnpos(2);
turnneg(3);
turnpos(4);
turnneg(5);


translate([outgap-2*rodd,0,0])
mirror([1,0,0])
clip();

//translate([-5.25,0,0])
//cube([60.5,1,1]);

/*

*/