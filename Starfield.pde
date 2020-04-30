
Star[] stars = new Star[500];

void setup(){
  size(1280, 720);
  
  for(int i = 0; i < stars.length; i++)
    stars[i] = new Star();
  
}

void draw(){
 background(0);
 noStroke();
 translate(width/2, height/2); 
 
 for(int i = 0; i < stars.length; i++){
     stars[i].update();
     stars[i].draw();
 }
 
 
}


class Star{
  
  float x, y;
  float size;
  
  
  Star(){
    x = random(-width/2, width/2);
    y = random(-height/2, height/2);
    size = random(5, 10);
  }
  
  void draw(){
   ellipse(x, y, size, size);
  }
  
  void update(){
    x*= 1.05;
    y*= 1.05;
    size++;
  }
  
}
