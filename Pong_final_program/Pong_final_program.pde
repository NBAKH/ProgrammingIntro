PImage startP; //<>//
PImage game_over;

float ballX;
float ballY;
float accX;
float accY;

float yPlayer1;
float xPlayer1;
int hPlayer1;

float yPlayer2;
float xPlayer2;
int hPlayer2;

int score1;
int score2;

int stageManager = 0;
int game_position;

void setup() {
  startP = loadImage("pong_start_screen.jpg");
  game_over = loadImage("game_over.png");
  game_position = -600;
  ballX = 400;
  ballY = 300;
  accX = random(-3, 3);
  accY = random(-3, 3);

  xPlayer1 = 20;
  yPlayer1 = 250;
  hPlayer1 = 100;

  xPlayer2 = width-30;
  yPlayer2 = 250;
  hPlayer2 = 100;

  size(800, 600);
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
  text(score1, 370, 30);
  text(score2, 410, 30);
  if (score1>=1|| score2>=1) {
    stageManager=2;
  }
}


void playerUpdate() {
  fill(0);
  rect(xPlayer1, yPlayer1, 10, hPlayer1);
  rect(xPlayer2, yPlayer2, 10, hPlayer2);
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
  if (ballX<xPlayer1+20 && ballY>yPlayer1 && ballY<yPlayer1+hPlayer1) {
    accX=-1*accX;
  }
  //point for player 1
  if (ballX<0) {
    score2++;
    ballX=width/2;
    ballY=height/2;
    textSize(600);
    fill(0);
    //exit();
  }
  //player 2 check
  if (ballX>xPlayer2-10 && ballY>yPlayer2 && ballY<yPlayer2+hPlayer2) {
    accX=-1*accX;
  }
  //point for player 
  if (ballX>width) {
    score1++;
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
      score1=0;
      score2=0;
      stageManager = 1;
      accX = random(-3, 3);
      accY = random(-3, 3);
    }
  }
}

void keyPressed() {
  if (stageManager == 1) {
    if (key == 'w') {
      yPlayer1=yPlayer1-10;
    }
    if (key == 's') {
      yPlayer1=yPlayer1+10;
    }
    if (key == CODED) {
      if (keyCode == UP) {
        yPlayer2=yPlayer2-10;
      }
      if (keyCode == DOWN) {
        yPlayer2=yPlayer2+10;
      }
    }
  }
}