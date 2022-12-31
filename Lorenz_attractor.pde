float x = 0.01;
float y = 0;
float z = 0;
float x_change = 0;
float y_change = 0;
float z_change = 0;
float time_increment = 0.01;

float sigma = 10;
float rho = 28;
float beta = 8/3;


void setup() {
 size(1000, 600, P3D);
 background(255);
}

void draw() {
  
  x_change = (sigma*y - sigma*x) * time_increment;
  y_change = (rho*x - x*z - y) * time_increment;
  z_change = (x*y - beta*z) * time_increment;
  translate(width/2, height/2);
  scale(5);
  stroke(frameCount%255, frameCount%255-100, frameCount%255-200);
  line(x, y, z, x+x_change, y+y_change, z+z_change);
  x += x_change;
  y += y_change; 
  z += z_change;
  
  
  
}
