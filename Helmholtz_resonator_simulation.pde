float m = 10;
float l = 80;
float Vinit = 80000;
float Vchange = Vinit;
float w = 80;
float A = w*w*PI/4;
float T = 120;
float y = 1;
float amplitude = 20;
float P = 101325;
float y_prev = 0;



PGraphics screen;

void setup() {
 size(1500, 600);
 screen = createGraphics(1600, 600);
 screen.beginDraw();
 screen.background(255);
 screen.endDraw();
 
}

void draw() {
 image(screen, 0, 0);
 stroke(0);
 strokeWeight(2);
 
 translate(500, 50);
 
 float x = sqrt(Vinit/1.5);
 
 line(0, 0, 0, l);
 line(w, 0, w, l);
 line(0, l, -(x-w)/2, l);
 line(w, l, (w+x)/2, l);
 line(-(x-w)/2, l, -(x-w)/2, l+1.5*x);
 line((w+x)/2, l, (w+x)/2, l+1.5*x); 
 line(-(x-w)/2, l+1.5*x, (w+x)/2, l+1.5*x);
 fill(255, 0, 0);
 rect(1, y, w-2, l-2, 10);
 text(("Volume = "+str(Vchange/1000)), -5*w, l+x/3);
 fill(0, 0, 255);
 text(("Pressure = "+str(P)), -5*w, l+x);

 textSize(25);
 line(300, l, 300, l+300);
 text("Pressure/Pa", 300, l-30);
 line(300, l+150, 800, l+150);
 
 
 y_prev = y;
 y = amplitude * cos(TWO_PI * frameCount / T);
 Vchange += -y*w/100;
 P += 1.4*(-y*w/100)/Vinit*1000;
 
 
 

 if (frameCount%480 == 0) {
   screen.beginDraw();
   screen.background(255, 255, 255);  // transparent white
   screen.endDraw();
 } else {
   screen.beginDraw();
   screen.translate(500, 50);
   screen.stroke(0);
   screen.strokeWeight(2);
   screen.line(300+frameCount%480-1, l+150+y_prev*4, 300+frameCount%480, l+150+y*4);
 }
 screen.endDraw();
 }
 
