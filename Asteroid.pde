class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int[]{-11,10,18,9,9,-13};
    yCorners = new int[]{-13,-8,0,9,8,0};
    myColor = #9c9c9c;
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    rotSpeed = (double)(Math.random()*2);
    myXspeed = (double)(Math.random()*2)-1;
    myYspeed = (double)(Math.random()*2)-1;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public double getX(){
    return (float)myCenterX;
  }
  public double getY(){
    return (float)myCenterY;
  }
}
