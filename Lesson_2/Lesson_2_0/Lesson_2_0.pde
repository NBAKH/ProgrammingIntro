float ballX;
float ballY;

void setup(){
  size(800, 600);

  ballX = 500;
  ballY = 100;
}

void draw(){
  // We call our newly made function to draw the field for us
  drawField();

  // We draw the two paddles
  // The left paddle
  rect(10, 300, 10, 80);
  // And the right paddle
  rect(780, 300, 10, 80);

  // And the ball
  ellipse(ballX, ballY, 30, 30);
}

void drawField(){
  // We fill the background with a white color effectively clearing the screen
  background(255);
  // The color of the rectangles will be black
  fill(0);
  // The middle line
  rect(400, 0, 10, 600);
  
  rect(210, 254, 10, 100);
  ellipse(260, 262, 100, 100);

  
  ellipse(400, 300, 100, 100);

  line(500, 250, 500, 350);
  line(500, 250, 550, 350);
  line(550, 250, 550, 350);

  ellipse(640, 300, 100, 100);
  rect(680, 300, 10, 120);
  rect(600, 410, 80, 10);
}