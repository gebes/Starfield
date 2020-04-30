
Star[] stars = new Star[500];

void setup(){
  size(1280, 720);
  ellipseMode(CENTER);
  
  for(int i = 0; i < stars.length; i++)
    stars[i] = new Star();
  
}

void draw(){
 background(0);
 stroke(255);
 translate(width/2, height/2); 
 
 for(int i = 0; i < stars.length; i++){
     stars[i].update();
     
     
     if(!stars[i].isVisible())
       stars[i] = new Star();
  
    
  
     stars[i].draw();
 }
 
 
}


class Star{
  
  float x, y;
  float size;
  
  float lastX, lastY;
  
  
  Star(){
    x = random(-width/2, width/2);
    y = random(-height/2, height/2);
    lastX = x;
    lastY = y;
    size = random(1, 3);
  }
  
  void draw(){
   line(x, y, lastX, lastY);
  }
  
  void update(){
    lastX = x;
    lastY = y;
    x *= 1.025;
    y *= 1.025;
    size+= 0.1;
  }
 
  boolean isVisible(){
    float s = size/2;
    float w = width/2;
    float h = height/2;
    return !((x+s) > w || (x+s) < -w && (y+s) > h || (y+s) < -h);
  }
  
}
