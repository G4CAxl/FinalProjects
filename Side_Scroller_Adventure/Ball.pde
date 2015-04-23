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
  
  public void move()
  {
      spdUpdate();
      loc.y += vel;
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

