class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Star(){
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
  public void show(){
    fill(#f2f224);
    noStroke();
    ellipse(myX,myY,3,3);
  }
}
