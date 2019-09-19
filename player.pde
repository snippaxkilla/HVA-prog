
class Player {
  float x;
  float y = height/2;
  float w = 50;
  float h = 200;

  float ychange = 0;
  
  Player(boolean left)  {
    if (left) {
      x = w;
    } else {
      x = width - w;
    }
  }
  
  void move(float steps) {
    ychange = steps;
  }
  
  //zorgt ervoor dat je niet uit screen kan
  void update() {
    y += ychange;
    y = constrain(y,h/2,height-h/2);
  }
  
  //laat player zien
  void show () {
  fill(255);
  rectMode(CENTER);
  rect(x, y, w, h);
  }
} 

  
  
