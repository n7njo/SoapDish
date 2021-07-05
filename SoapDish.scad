$fn=200;

height = 33;
depth = 50;
overhangdepth = 4;
overhangdrop = 10;
protrude = 60;
thickness = 2.5;
lip = 0;
revolve = 225;
revolution = 15;
cutout = 15;

module soapdish(){
    difference () {
    rotate_extrude(angle=revolution)
        translate ([revolve+thickness,0,0])
            polygon(
                points=[
                [0,0],
                [0,height-thickness],
                [-overhangdepth,height-thickness],
                [-overhangdepth,height-thickness-overhangdrop],
                [-overhangdepth-thickness,height-thickness-overhangdrop],
                [-overhangdepth-thickness,height],
                [thickness,height],
                [thickness,thickness],
                [protrude,thickness],
                [protrude,thickness+lip],
                [protrude+thickness,thickness+lip],
                [protrude+thickness,0]
                ]
            );
    rotate ([0,88.8,revolution/2])
        translate ([0,0,revolve])
        cylinder (
            h = protrude+(thickness*2)+1,
            r1=cutout,
            r2=cutout+4);
        }
}

// Render

translate ([-revolve,0,0])
    soapdish();