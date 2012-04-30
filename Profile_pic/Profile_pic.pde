
String pic_name = "profile_pic.jpg";
PImage pic;

void setup() {
  size(150, 150);
  
  pic = loadImage(pic_name);
}

void draw() {
  background(100);
  image(pic, 0, 0, width, height);
}

void mouseClicked() {
  pic_name = selectInput("Select an image"); 
  pic = loadImage(pic_name);
}

