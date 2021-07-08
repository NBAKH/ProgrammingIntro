float ballX;
float ballY;

float accX;
float accY;

void setup(){
  size(800, 600);

  // The starting position of the ball
  ballX = 500;
  ballY = 100;

  // The direction the ball will accelerate
  accX = 3;
  accY = 1;
}

void draw(){
  // We call our newly made function to draw the field for us
  drawField();

  // We draw the two paddles
  // The left paddle
  rect(10, 300, 10, 80);
  // And the right paddle
  rect(780, 300, 10, 80);

  // We update the position of the ball
  ballX = ballX + accX;
  ballY = ballY + accY;

  // We draw the ball
  ellipse(ballX, ballY, 30, 30);
}

void drawField(){
  // We fill the background with a white color effectively clearing the screen
  background(255);
  // The color of the rectangles will be black
  fill(0);
  // The middle line
  rect(400, 0, 10, 600);
  
  // "P"
  rect(210, 254, 10, 100);
  ellipse(260, 262, 100, 100);

  // "O"
  ellipse(400, 300, 100, 100);

  // "N"
  line(500, 250, 500, 350);
  line(500, 250, 550, 350);
  line(550, 250, 550, 350);

  // "G"
  ellipse(640, 300, 100, 100);
  rect(680, 300, 10, 120);
  rect(600, 410, 80, 10);
}