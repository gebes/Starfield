Star[] stars = new Star[500];

void setup() {
 size(1280, 720);
 ellipseMode(CENTER);

 for (int i = 0; i < stars.length; i++)
  stars[i] = new Star();

}

void draw() {
 background(0);
 stroke(255);
 translate(width / 2, height / 2);

 for (int i = 0; i < stars.length; i++) {
  stars[i].update();


  if (!stars[i].isVisible())
   stars[i] = new Star();



  stars[i].draw();
 }


}


class Star {

 float x, y;

 float lastX, lastY;


 Star() {
  x = random(-width / 2, width / 2);
  y = random(-height / 2, height / 2);
  lastX = x;
  lastY = y;
 }

 void draw() {
  line(x, y, lastX, lastY);
 }

 void update() {
  lastX = x;
  lastY = y;
  float speed = 1.05;
  x *= speed;
  y *= speed;
 }

 boolean isVisible() {
  float s = new PVector(x, y).dist(new PVector(lastX, lastY));
  float w = width / 2;
  float h = height / 2;
  return !((x - s) > w || (x + s) < -w && (y - s) > h || (y + s) < -h);
 }

}
