//your variable declarations here
Star[] nightSky = new Star[200];
Spaceship liltimmy = new Spaceship();

public void setup() 
{
  size(500,500);
  for(int i = 0; i  < nightSky.length; i++){
    nightSky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
  liltimmy.show();
  liltimmy.move();
}

public void keyPressed(){
  if(key == 'h'){
    liltimmy.hyperspace();
  }
  if(key == 'd'){
    liltimmy.turn(15);
  }
  if(key == 'a'){
    liltimmy.turn(-15);
  }
  if(key == 'w'){
    liltimmy.accelerate(1.0);
  }
}
