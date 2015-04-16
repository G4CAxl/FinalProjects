//This is gonna be where all the ints and booleans are
//boolean Jumping //Still working on the jumping 
boolean Jump;
boolean Floor;
boolean MoveDown;
float x = 100;
float y = 0;
float x2 = -0.75;
float speed = 0;
float gravity = 0.1;
void setup() {
  size(320, 240);
}

void draw() {

  PImage Forest;

  Forest = loadImage("background2.gif");
  background(Forest);
  //background(255);

  fill(175);
  stroke(0);
  ellipseMode(CENTER);
  ellipse(x, y, 10, 10);

  y = y + speed;
  speed = speed + gravity;

  if (y > height-5) {

    speed = speed * x2 ;

    x2 = x2+0.01* gravity;
    y = height-5;
  }

  if (key == CODED)
  {
    if (keyCode == UP)
    {
      //top border
      if (y>10) 
      {
        y--;
      }
    }
  } 

  if (key == CODED)
  {
    if (keyCode == DOWN)
    {
      //bottom border
      if (y<630) 
      {
        y++;
      }
    }
  } 

  if (key == CODED)
  {
    if (keyCode == RIGHT)
    {
      //right border
      if (x<630)
      {
        x++;
      }
    }
  } 

  if (key == CODED)
  {
    if (keyCode == LEFT)
    {
      //left border
      if (x>10)
      {
        x--;
      }
    }
  }
}

