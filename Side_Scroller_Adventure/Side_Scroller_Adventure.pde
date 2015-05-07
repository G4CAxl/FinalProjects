//This is gonna be where all the ints and booleans are
//boolean Jumping //Still working on the jumping 
int x = 0;
PFont myFont_Score;
PFont myFont_Winner;
int myScore;
boolean Jump;
boolean Floor;

int s1, s2;
//boolean safe;

Ball player;
ArrayList<Block> blocks;

void setup() 
{
  size(400, 400);

  player = new Ball(width/2, height/2);
  blocks = new ArrayList<Block>();
  blocks.add(new Block(new PVector(width - 10, random(height/10)*10), new PVector(100, 20), new PVector(random(255), random(255), random(255)), 4));
  blocks.add(new Block(new PVector(width - 10, random(height/10)*10), new PVector(100, 20), new PVector(random(255), random(255), random(255)), 3));
  blocks.add(new Block(new PVector(width - 10, random(height/10)*10), new PVector(100, 20), new PVector(random(255), random(255), random(255)), 5));
  blocks.add(new Block(new PVector(width - 10, random(height/10)*10), new PVector(100, 20), new PVector(random(255), random(255), random(255)), 2));
  blocks.add(new Block(new PVector(width - 10, random(height/10)*10), new PVector(100, 20), new PVector(random(255), random(255), random(255)), 5));
  blocks.add(new Block(new PVector(width - 10, random(height/10)*10), new PVector(100, 20), new PVector(random(255), random(255), random(255)), 3));
  blocks.add(new Block(new PVector(width - 10, random(height/10)*10), new PVector(100, 20), new PVector(random(255), random(255), random(255)), 2));
  blocks.add(new Block(new PVector(width - 10, random(height/10)*10), new PVector(100, 20), new PVector(random(255), random(255), random(255)), 6));
  blocks.add(new Block(new PVector(width - 10, random(height/10)*10), new PVector(100, 20), new PVector(random(255), random(255), random(255)), 2));
  blocks.add(new Block(new PVector(width - 10, random(height/10)*10), new PVector(100, 20), new PVector(random(255), random(255), random(255)), 1));



  //s1 = second();
  //s2 = second();
  //safe = false;

  myFont_Score = loadFont("ArialMT-28.vlw");
  myFont_Winner = loadFont("ArialMT-28.vlw");

  textFont(myFont_Score, 24);
  fill(0, 0, 0);
  text("Good ", 50, 200);

  textFont(myFont_Winner, 48);
  fill(255, 127, 0);
  text("You Won ", 0, 300);
  myScore = 0;
}

public void time()
{
  /*
  s2 = second();
   if( abs(s1 - s2) > 3 && safe)
   {
   safe = false;
   }*/
}

void draw() 
{

  background(255);
  player.move(blocks);

  if (player.collision(blocks))
  {
    player.loc.x -= 10; 
    //safe = true;
    s1 = second();
  }

  for (Block spot : blocks)
  {
    spot.move();
  }

  for (int i = 0; i < blocks.size (); i++)
  {
    if (blocks.get(i).loc.x + blocks.get(i).size.x < 10)
    {
      blocks.set(i, (new Block(new PVector(width - 10, random(height/10)*10), new PVector(100, 20), new PVector(random(255), random(255), random(255)), blocks.get(i).vel)));
    }
  }

  //time();

  textFont(myFont_Winner, 48);
  fill(255, 127, 0);
  text(str(myScore), 0 + x, 300);
  //x++;

  if (keyPressed) { 
    myScore++;
  }
}

public void mousePressed() {


  player = new Ball(width/2, height/2);
  blocks = new ArrayList<Block>();
  blocks.add(new Block(new PVector(width - 10, random(height/10)*10), new PVector(100, 20), new PVector(random(255), random(255), random(255)), 4));
  blocks.add(new Block(new PVector(width - 10, random(height/10)*10), new PVector(100, 20), new PVector(random(255), random(255), random(255)), 3));
  blocks.add(new Block(new PVector(width - 10, random(height/10)*10), new PVector(100, 20), new PVector(random(255), random(255), random(255)), 5));
  blocks.add(new Block(new PVector(width - 10, random(height/10)*10), new PVector(100, 20), new PVector(random(255), random(255), random(255)), 2));
  blocks.add(new Block(new PVector(width - 10, random(height/10)*10), new PVector(100, 20), new PVector(random(255), random(255), random(255)), 5));
  blocks.add(new Block(new PVector(width - 10, random(height/10)*10), new PVector(100, 20), new PVector(random(255), random(255), random(255)), 3));
  blocks.add(new Block(new PVector(width - 10, random(height/10)*10), new PVector(100, 20), new PVector(random(255), random(255), random(255)), 2));
  blocks.add(new Block(new PVector(width - 10, random(height/10)*10), new PVector(100, 20), new PVector(random(255), random(255), random(255)), 4));






  myScore = 0;
}



