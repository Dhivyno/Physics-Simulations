float r = 0;
float x = 0.4;

void setup() {
  size(1500, 600);
  background(0);
}

void draw() {
 translate(100, height-100);
 scale(2);
 stroke(255);
 for (int i = 0; i < 1000; i++) {
  x = r*x*(1-x);
  if (i > 700) {
    point(r*100, -x*100);
  }
  }
  line(0, 0, 400, 0);
  line(0, 0, 0, -200);
  text(1, 100, 15);
  text(2, 200, 15);
  text(3, 300, 15);
  text(4, 400, 15);
  text(0.2, -40, -20);
  text(0.4, -40, -40);
  text(0.6, -40, -60);
  text(0.8, -40, -80);
  text(1.0, -40, -100);
 
 r += 0.01;
 x = 0.2;
 }
