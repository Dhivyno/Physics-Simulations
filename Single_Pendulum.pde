float m1 = 50;  // mass of first pendulum
//float m2 = 10;  // mass of second pendulum
float l1 = 200;  // length of rod connecting first pendulum to pivot
//float l2 = 200;  // length of rod connecting second pendulum to first pendulum
float ang1 = PI/2;  // angle between vertical axis and first pendulum
//float ang2 = PI/2;  // angle between vertical axis and second pendulum
float m1_velocity = 0;  // angular velocity of first pendulum
//float m2_velocity = 0;  // angular velocity of second pendulum
float m1_acc = 0;  // angular acceleration of first pendulum
//float m2_acc = 0;  // angular acceleration of second pendulum
//float x2_prev = -1000;
//float y2_prev = -1000;
float g = 1;
//float x2 = 0;
//float y2 = 0;

PGraphics screen;

void setup() {
 size(1000, 600);
 screen = createGraphics(1000, 800);
 screen.beginDraw();
 screen.background(255);
 screen.endDraw();
 
}

void draw() {
 image(screen, 0, 0);
 stroke(0);
 strokeWeight(2);
 
 translate(500, 100);
 
 //x2_prev = x2;
 //y2_prev = y2;
 float x1 = l1 * sin(ang1);
 float y1 = l1 * cos(ang1);
 //x2 = x1 + l2 * sin(ang2);
 //y2 = y1 + l2 * cos(ang2);

 
 line(0, 0, x1, y1);
 circle(x1, y1, m1);
 //line(x1, y1, x2, y2);
 //circle(x2, y2, m2);
 
 // Equations relating masses, angles, angular velocity and angular acceleration
 m1_acc = (-g*sin(ang1))/l1;
 
 m1_velocity += m1_acc;
 //m2_velocity += m2_acc;
 ang1 += m1_velocity;
 //ang2 += m2_velocity;
 
 //screen.beginDraw();
 //screen.translate(500, 100);
 //screen.stroke(0);
 //screen.strokeWeight(1);
 //if (x2_prev != 0) {
   //screen.line(x2_prev, y2_prev, x2, y2);
   //screen.endDraw();
 //}
 
}
