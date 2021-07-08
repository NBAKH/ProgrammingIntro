PImage startP; //<>//
PImage game_over;

float ballX;
float ballY;
float accX;
float accY;

float leftPlayerX;
float leftPlayerY;
int leftPlayerHeight;

float rightPlayerX;
float rightPlayerY;
int rightPlayerHeight;

int leftPlayerScore;
int rightPlayerScore;

int stageManager = 0;
int game_position;

void setup() {
  size(800, 600);

  startP = loadImage("pong_start_screen.jpg");
  game_over = loadImage("game_over.png");
  game_position = -600;
  
  ballX = 400;
  ballY = 300;
  accX = random(-3, 3);
  accY = random(-3, 3);

  leftPlayerX = 20;
  leftPlayerY = 250;
  leftPlayerHeight = 100;

  rightPlayerX = width-30;
  rightPlayerY = 250;
  rightPlayerHeight = 100;
}

void draw() {
  switch(stageManager) {
    case(0):
      image(startP, 0, 0, 800, 600);
    break;
    case(1):
      drawField();
      score();
      checkPosition();
      updateBall();
      playerUpdate();
    break;
    case(2):
      if (game_position<1) {
        image(game_over, 0, game_position, 800, 600);
        game_position+=2;
      }
    break;
  }
}

void score() {
  textSize(32);
  fill(0);
  text(leftPlayerScore, 370, 30);
  text(rightPlayerScore, 410, 30);
  if (leftPlayerScore>=1|| rightPlayerScore>=1) {
    stageManager=2;
  }
}


void playerUpdate() {
  fill(0);
  rect(leftPlayerX, leftPlayerY, 10, leftPlayerHeight);
  rect(rightPlayerX, rightPlayerY, 10, rightPlayerHeight);
}

void drawField() {
  background(255);
  fill(0);
  rect(395, 0, 10, 600);
}

void updateBall() {
  fill(255);
  stroke(0);
  ellipse(ballX, ballY, 20, 20);
  ballX = ballX + accX;
  ballY = ballY + accY;
}

void checkPosition() {
  if (ballX<leftPlayerX+20 && ballY>leftPlayerY && ballY<leftPlayerY+leftPlayerHeight) {
    accX=-1*accX;
  }
  //point for player 1
  if (ballX<0) {
    rightPlayerScore++;
    ballX=width/2;
    ballY=height/2;
    textSize(600);
    fill(0);
    //exit();
  }
  //player 2 check
  if (ballX>rightPlayerX-10 && ballY>rightPlayerY && ballY<rightPlayerY+rightPlayerHeight) {
    accX=-1*accX;
  }
  //point for player 
  if (ballX>width) {
    leftPlayerScore++;
    ballX=width/2;
    ballY=height/2;
  }
  if (ballY<0 || ballY>height) {
    accY=-1*accY;
  }
}

void keyTyped() {
  if (stageManager == 0) {
    if (key == ENTER) {
      stageManager++;
    }
  }

  if (stageManager == 2) {
    if (key == ENTER) {
      leftPlayerScore=0;
      rightPlayerScore=0;
      stageManager = 1;
      accX = random(-3, 3);
      accY = random(-3, 3);
    }
  }
}

void keyPressed() {
  if (stageManager == 1) {
    if (key == 'w') {
      leftPlayerY=leftPlayerY-10;
    }
    if (key == 's') {
      leftPlayerY=leftPlayerY+10;
    }
    if (key == CODED) {
      if (keyCode == UP) {
        rightPlayerY=rightPlayerY-10;
      }
      if (keyCode == DOWN) {
        rightPlayerY=rightPlayerY+10;
      }
    }
  }
}