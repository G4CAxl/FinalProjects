//This is gonna be where all the ints and booleans are
//boolean Jumping //Still working on the jumping 
boolean Jump;
boolean Floor;
PImage Forest;

Ball player;

void setup() 
{
  size(320, 240);
  player = new Ball(width/2,height/2);
  Forest = loadImage("background2.gif");
}



void draw() 
{

  background(Forest);
  //background(255);
  player.move();
}

 
