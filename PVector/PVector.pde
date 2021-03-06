Ball testBall;
Ball testBall2;

void setup() {
  size(640, 480);
  smooth();
  
  testBall = new Ball(width/2, height/2, 75, 75);
  testBall2 = new Ball(width/2 + 100, height/2 - 100, 20, 20);
}

void draw() {
  background(200);

  testBall.draw();
  testBall2.draw();
}



class Ball {
  
  PVector location;
  PVector velocity;
  
  int x;
  int y;
  int _x;
  int _y;
  
  float gravity;
  
  Ball(int xPos, int yPos, int xSize, int ySize) {
   x = xPos;
   y = yPos;
   _x = xSize;
   _y = ySize;
   
   gravity = 9.8;
   
   location = new PVector(x, y);
   velocity = new PVector(0, 4);
  }
 
 void draw() {
   location.add(velocity);
   
   if((location.y - (_y/2) < 0) || ((location.y + (_y/2)) > height)) {
     velocity.y = velocity.y * -1;
     velocity.y = velocity.y/(1.1 + ((gravity*2)/100));
     if((location.y + (_y/2)) > height + 1) {
       location.y = height - (_y/2); 
     }
     if((location.y - (_y/2)) < (0 - 1)) {
       location.y = 0 + (_y/2); 
     }
   }
   else {
     velocity.y = velocity.y + gravity/20; 
   }
   
   pushStyle();
     strokeWeight(6);
     stroke(255);
     fill(0, 255, 0, 200);
     ellipse(location.x, location.y, _x, _y);
   popStyle();
 } 
}
