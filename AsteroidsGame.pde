Star[] nightSky = new Star[200];
Spaceship liltimmy = new Spaceship();
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();

public void setup() 
{
  size(500,500);
  for(int i = 0; i  < nightSky.length; i++){
    nightSky[i] = new Star();
  }
  for(int i = 0; i  < 20; i++){
    rocks.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
  for(int i = 0; i < rocks.size(); i++){
    rocks.get(i).show();
    rocks.get(i).move();
    float d = dist((float)liltimmy.getX(), (float)liltimmy.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
    if(d < 10){
      rocks.remove(i);
    }
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

