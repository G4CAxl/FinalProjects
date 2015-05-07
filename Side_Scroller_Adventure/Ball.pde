public class Ball
{

  float vel;
  float acc;
  PVector loc;
  final float GRAVITY = 0.1;

  public Ball(PVector loc)
  {
    vel = 0;
    this.loc = loc;
    acc = 0;
  }
  
  public Ball(float x, float y)
  {
    vel = 0;
    loc = new PVector(x,y);
    acc = 0;
  }
  
  public boolean collision(ArrayList<Block> b)
  {
    for(Block spot: b)
      {
        if (spot.loc.x < loc.x && spot.loc.x + spot.size.x  > loc.x &&
          spot.loc.y < loc.y && spot.loc.y + spot.size.y > loc.y )
           return true;
      }
      return false; 
  }
  
  public void move(ArrayList<Block> b)
  {
      spdUpdate();
      
      if(!collision(b))
        {
          loc.y += vel;
        }
        
      createBall();
  }

  public void spdUpdate()
  {
    
    if (loc.y>20 && keyPressed == true)
    {
        //top border
        if (keyCode == UP) 
        {
          acc = -1;
        }
        else
        {
          acc = 0;
          vel = 0;
        }
    }
    else if (loc.y < height -20)
    {
      acc = 1;
    }
    else
    {
      acc = 0;
      vel = 0;
    }

    vel += acc;
    velLimit(3);
  }
  
  public void velLimit(float limit)
  {
    if (vel < -limit)
      vel = -limit;
    else if(vel > limit)
      vel = limit;
  }
  
  public void createBall()
  {
    fill(175);
    stroke(0);
    ellipseMode(CENTER);
    ellipse(loc.x, loc.y, 10, 10); 
  }
  
}

