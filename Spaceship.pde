class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 10;
      xCorners = new int[]{-8,-11,-11,-8,-4,8,-4,-8,-11,-11};
      yCorners = new int[]{0,-4,-8,-11,-11,0,11,11,8,4};
      myColor = #ff9499;
      myCenterX = 250;
      myCenterY = 250;
  }
  public void hyperspace(){
      myXspeed = 0;
      myYspeed = 0;
      myCenterX = (int)(Math.random()*500);
      myCenterY = (int)(Math.random()*500);
      myPointDirection = (int)(Math.random()*500);
  }
}
