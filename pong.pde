//zorgt ervoor dat andere code uit tabladen worden aangeroepen
Ball ball;
Player left;
Player right;

//houd score bij
int leftpoint = 0;
int rightpoint = 0;

void setup() {
  size(1920,1080);
  frameRate(120);
  ball = new Ball();
  left = new Player(true);
  right = new Player(false);
}

void draw() {
  background(0);
  
  ball.checkPlayerLeft(left);
  ball.checkPlayerRight(right);
  
  left.show();
  right.show();
  left.update();
  right.update();
  
  ball.update();
  ball.wall();
  ball.show();
  
//scoreboard
  fill(255);
  textSize(100);
  text(leftpoint, 400, 200);
  text(rightpoint, width-400, 200);
}

//game besturing
void keyReleased() {
  left.move(0);
  right.move(0);
}
  
void keyPressed() {
  if (key == 'a') {
    left.move(-4);
  } else if (key == 'd') {
    left.move(4);
  }
  if (key == 'j') {
    right.move(-4);
  } else if (key == 'l') {
    right.move(4);
  }
}
