float x = 100; // Variables for location and speed of ball
float y = 100;
float xspeed = 1;
float yspeed = 3.3;

void setup() {
  size(640,360);
  background(225);
}

void draw() {
  x = x + xspeed; // Move the ball according to its speed
  y = y + yspeed; 
  
  if ((x > width) || (x < 0)) { // It it reaches the side of the screen
    xspeed = xspeed*-1;
  }
  if ((y > height) || (y < 0)) { // It it reaches the top of the screen
    yspeed = yspeed*-1;
  }
  
  stroke(0);
  fill(175);
  ellipse(x,y,16,16); // Display block on x, y
}
