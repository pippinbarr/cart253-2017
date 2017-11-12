// Schiffman's example doesn't seem to include any manipulation of
// the z coordinate, so I'm not sure how he figures you can make the
// text go into the distance?

String info = "A long long time ago\nIn a galaxy far far away";
PFont f;
float x;
float y;
float z = 0;

void setup() {
  size(400, 200, P3D);
  f = createFont("Arial", 32);
  x = width/2;
  y = height*2;
}

void draw() {
  background(0);
  fill(200,200,50);
  translate(x,y,z);
  rotateX(radians(45));
  textFont(f);
  textAlign(CENTER);
  text(info,0,0);
  y--;
  z--;
}