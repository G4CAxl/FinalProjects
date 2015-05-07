public class Block
{
  PVector loc; 
  PVector size;
  PVector col;
  float vel;

  public Block(PVector loc, PVector size, PVector col, float vel)
  {
    this.loc = loc;
    this.size = size;
    this.col = col;
    this.vel = vel;
  }

  public void setVel(float vel)
  {
    this.vel = vel;
  }

  public void move()
  {
    loc.x -= vel;
    drawBlock();
  }
  public void drawBlock() {
    fill(col.x, col.y, col.z);
    rect (loc.x, loc.y, size.x, size.y);
  }
}

