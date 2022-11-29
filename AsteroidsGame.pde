//your variable declarations here
Star[] nightSky = new Star[200];
Spaceship liltimmy = new Spaceship();
Asteroid[] rocks = new Asteroid[50];

public void setup() 
{
  size(500,500);
  for(int i = 0; i  < nightSky.length; i++){
    nightSky[i] = new Star();
  }
  for(int i = 0; i  < rocks.length; i++){
    rocks[i] = new Asteroid();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
  for(int i = 0; i < rocks.length; i++){
    rocks[i].show();
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
