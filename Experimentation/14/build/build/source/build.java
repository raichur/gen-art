import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class build extends PApplet {

class Mover {

  PVector location;
  PVector velocity;

  public void update() {
    location.add(velocity); // The Mover moves
  }

  public void display() {
    stroke(0);
    fill(175);

    // The Mover is displayed
    ellipse(location.x, location.y, 16, 16);
  }

  Mover m = new Mover();

  Mover() {
    location = new PVector(random(width), random(height));
    velocity = new PVector(random(-2, 2), random(-2, 2));
  }

  public void checkEdges() {

    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }

    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }

  }

}


// Declare the Mover object
Mover mover;

public void setup() {

  size(600, 600);

  mover = new Mover();

}

public void draw() {

  mover.update();
  mover.checkEdges();
  mover.display();

}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "build" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
