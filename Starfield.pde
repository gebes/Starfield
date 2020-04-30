
Star[] stars = new Star[500];

void setup(){
  size(1280, 720);
  ellipseMode(CENTER);
  
  for(int i = 0; i < stars.length; i++)
    stars[i] = new Star();
  
}

void draw(){
 background(0);
 noStroke();
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
  
  
  Star(){
    x = random(-width/2, width/2);
    y = random(-height/2, height/2);
    size = random(1, 3);
  }
  
  void draw(){
   ellipse(x, y, size, size);
  }
  
  void update(){
    x *= 1.05;
    y *= 1.05;
    size++;
  }
 
  boolean isVisible(){
    float s = size/2;
    float w = width/2;
    float h = height/2;
    return !((x+s) > w || (x+s) < -w && (y+s) > h || (y+s) < -h);
  }
  
}
