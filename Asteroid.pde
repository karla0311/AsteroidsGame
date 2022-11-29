class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int[]{-11,10,13,9,9,-13};
    yCorners = new int[]{-8,-8,0,9,8,0};
    myColor = #ff9499;
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
  }
  public void move(){
  }
}
