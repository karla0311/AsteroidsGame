class Bullet extends Floater{
  public Bullet(Spaceship liltimmy){
    myColor = #ffffff;
    myCenterX = liltimmy.getX();
    myCenterY = liltimmy.getY();
    myXspeed = liltimmy.getXspeed();
    myYspeed = liltimmy.getYspeed();
    myPointDirection = liltimmy.getPointDirection();
    accelerate(5);
  }
  public void show(){
    fill(255);
    ellipse((float)myCenterX,(float)myCenterY,10,10);    
  }
  public double getX(){
    return (float)myCenterX;
  }
  public double getY(){
    return (float)myCenterY;
  }
}
