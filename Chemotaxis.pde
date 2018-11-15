bacteria[]bob;

//declare bacteria variables here   
void setup()   
{     
  size(500, 500);
  bob = new bacteria[1000];
  for (int q = 0; q < bob.length; q++) {
    bob[q] = new bacteria(250, 250);
  }
  //initialize bacteria variables here
}   
void draw()   
{
  background(0);
  for (int q = 0; q < bob.length; q++) {
    bob[q].show();
    bob[q].move();
  }
}

//move and show the bacteria}  
class bacteria {   
  int startX, startY, p;
  bacteria(int x, int y) {
    startX = x;
    startY = y;
    p = color(random(255), random(255), random(255));
  }
  //lots of java!

  void move() {
    startX= startX + (int)(Math.random()*7)-3;
    startY = startY + (int)(Math.random()*7)-3;
  }

  void show() {
    fill(p);
    ellipse(startX, startY, random(5,10), random(10,20));
  }
}
