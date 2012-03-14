
float radius;
int sizeX = 640;
int sizeY = 480;

float pulse = 1.5;

boolean grow = true;
boolean shrink = false;

void setup() {
  size(sizeX, sizeY); 
  smooth();
  
  radius = (sizeY/40); 
}

void draw() {
  background(200);
  strokeWeight(7);
  stroke(255);
  fill(100, 100, 200);
  ellipse(mouseX, mouseY, radius, radius);
  
  if(radius > sizeY/5) {
     shrink = true;
     grow = false;
  }
  if(radius < sizeY/50) {
    shrink = false;
    grow = true; 
  }
  
  if(shrink) {
    radius -= pulse; 
  }
  if(grow) {
    radius += pulse; 
  }
}
