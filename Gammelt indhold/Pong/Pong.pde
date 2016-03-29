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

void setup(){
  ballX = 400;
  ballY = 300;
  accX = random(-3,3);
  accY = random(-3,3);
  
  xPlayer1 = 20;
  yPlayer1 = 250;
  hPlayer1 = 100;
  
  xPlayer2 = width-30;
  yPlayer2 = 250;
  hPlayer2 = 100;
  
  size(800,600);
}

void draw(){
  drawField();
  score();
  checkPosition();
  updateBall();
  playerUpdate();
  yPlayer1 = mouseY;
}

void score(){
  //sætter størelsen
  textSize(32);
  //Sort tekst
  fill(0);
  //tekst til spiller 1
  text(score1, 370, 30);
  //tekst til spiller 2
  text(score2, 410, 30);
}
 //<>//
void playerUpdate(){
  fill(0);
  rect(xPlayer1, yPlayer1, 10, hPlayer1);
  rect(xPlayer2, yPlayer2, 10, hPlayer2);
}

void drawField(){
  background(255);
  fill(0);
  rect(395,0,10,600);
}

void updateBall(){
  fill(255);
  stroke(0);
  ellipse(ballX, ballY, 20, 20);
  ballX = ballX + accX;
  ballY = ballY + accY;
}

void checkPosition(){
  //checker hvis bolden rammer spiller 1
  if(ballX<xPlayer1+20 && ballY>yPlayer1 && ballY<yPlayer1+hPlayer1){
    accX=-1*accX;
  }
  //Spiller 2 scorer 
  if(ballX<0){
    score2++;
    ballX=width/2;
    ballY=height/2;
    textSize(600);
    fill(0);
    //exit();
  }
  //checker hvis bolden rammer spiller 2
  if(ballX>xPlayer2-10 && ballY>yPlayer2 && ballY<yPlayer2+hPlayer2){
    accX=-1*accX;
  }
  //Spiller 1 scorer  
  if(ballX>width){
    score1++;
    ballX=width/2;
    ballY=height/2;
    //exit();
  }
  //Checker om den rammer toppen eller bunden
  //|| er ligesom && og betyder eller istedet for og 
  if(ballY<0 || ballY>height){
    accY=-1*accY;
  }
}

void keyPressed(){
  /*if(key == 'w'){
      yPlayer1=yPlayer1-10;
    }
    if(key == 's'){
      yPlayer1=yPlayer1+10;
    }*/
  if (key == CODED) {
    if(keyCode == UP){
      yPlayer2=yPlayer2-10;
    }
    if(keyCode == DOWN){
      yPlayer2=yPlayer2+10;
    }
  }
}