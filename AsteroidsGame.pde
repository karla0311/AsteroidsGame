Star[] nightSky = new Star[200];
Spaceship liltimmy = new Spaceship();
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> shot = new ArrayList <Bullet>();
Bullet bull = new Bullet(liltimmy);
//int lives = 5;

public void setup() 
{
  size(500,500);
  for(int i = 0; i  < nightSky.length; i++){
    nightSky[i] = new Star();
  }
  for(int i = 0; i  < 40; i++){
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
    //float d = dist((float)liltimmy.getX(), (float)liltimmy.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
    //if(d < 10){
      //lives--;
    //}
  }
  for(int i = 0; i < shot.size(); i++){
    shot.get(i).show();
    shot.get(i).move();
    if((float)shot.get(i).getX() > 498 || (float)shot.get(i).getX() < 2 || (float)shot.get(i).getY() > 498 || (float)shot.get(i).getY() < 2 ){
      shot.remove(i);
      i--;
    }
  }
  for(int i = 0; i < shot.size(); i++){
    for(int j = 0; j < rocks.size(); j++){
      if(dist((float)shot.get(i).getX(), (float)shot.get(i).getY(), (float)rocks.get(j).getX(), (float)rocks.get(j).getY()) < 12){
        rocks.remove(j);
        shot.remove(i);
        break;
      }
    }
}
  if(rocks.size() == 0){
    textSize(20);
    fill(255);
    text("You Win!", 205, 205);
    text("Refresh the page to play again!", 120, 225);
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
  if(key == ' '){
    shot.add(new Bullet(liltimmy));
  }
}
