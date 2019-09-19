
class Ball {
  float x = width/2;
  float y = height/2;
  float xspeed;
  float yspeed;
  float r = 30;
  
  Ball() {
    reset();
  }

  //formule voor bounce links
  void checkPlayerLeft(Player p) {
    if (y < p.y + p.h/2 && y > p.y - p.h/2 && x - r < p.x + p.w/2 ) {
       xspeed *= -1;
    }
  }
  
  //formule voor bounce rechts
  void checkPlayerRight(Player p) {
    if (y < p.y + p.h/2 && y > p.y - p.h/2 && x + r > p.x - p.w/2 ) {
       xspeed *= -1;
     }
  }
  
    void update() {
    x = x + xspeed;
    y = y + yspeed;
  }
  
  //reset bal terug midden en geeft andere angle
  void reset() {
    x = width/2;
    y = height/2;
    float angle = random(TWO_PI);
    xspeed = 6 * cos(angle);
    yspeed = 5 * sin(angle);
  }
   
    //zorgt ervoor dat bal terugkaatst
  void wall() {
    if (y < 15 || y > height -15) {
      yspeed *= -1;
    }
    //reset links en score
    if (x > width) {
      leftpoint++;
      reset();
    }
    //reset rechts en score
    if (x < 0) {
      rightpoint++;
      reset();
    }
  }
    
  void show() {
    fill(255);
    ellipse(x,y, r*2, r*2);
  }
}
