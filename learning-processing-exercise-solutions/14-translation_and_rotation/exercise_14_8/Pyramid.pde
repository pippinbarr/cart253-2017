class Pyramid {

  float t;

  Pyramid(float _t) {
    t = _t;
  }

  void display () {
    stroke(0);
    beginShape(TRIANGLES);
    fill(255, 150);
    vertex(-t, -t, -t);
    vertex( t, -t, -t);
    vertex( 0, 0, t);
    fill(150, 150);
    vertex(t, -t, -t);
    vertex(t, t, -t);
    vertex(0, 0, t);
    fill(255, 150);
    vertex( t, t, -t);
    vertex(-t, t, -t);
    vertex( 0, 0, t);
    fill(150, 150);
    vertex(-t, t, -t);
    vertex(-t, -t, -t);
    vertex( 0, 0, t);
    endShape();
  }
}