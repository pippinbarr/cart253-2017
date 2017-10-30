Head head;

void setup() {
  size(200, 200);
  head = new Head("kasper.png","pippin.png",width/2,height/2);
}

void draw() {
  background(255);
  head.move();
  head.display();
}