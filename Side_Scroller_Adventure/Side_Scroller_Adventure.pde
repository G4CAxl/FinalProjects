//This is gonna be where all the ints and booleans are
//boolean Jumping //Still working on the jumping 
boolean MoveLeft;
boolean MoveRight;
boolean Jump;
boolean Floor;
boolean MoveDown;
float x = 100;
float y = 0;
float x2 = -0.75;
float speed = 0;
float gravity = 0.05;
void setup() {
  size(200, 200);

}

void draw() {

  background(255);

  fill(175);
  stroke(0);
  rectMode(CENTER);
  rect(x, y, 10, 10);

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

