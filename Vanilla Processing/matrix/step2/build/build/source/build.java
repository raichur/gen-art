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

public void setup() {

  size(600,600);

  pushMatrix();
    translate(100,100);
    rotate(radians(45));
    rect(0,0,50,50);
  popMatrix();

  pushMatrix();
    translate(200,100);
    rotate(radians(45));
    rect(0,0,50,50);
  popMatrix();

  pushMatrix();
    translate(300,100);
    rotate(radians(45));
    rect(0,0,50,50);
  popMatrix();

  pushMatrix();
    translate(400,100);
    rotate(radians(45));
    rect(0,0,50,50);
  popMatrix();

  pushMatrix();
    translate(500,100);
    rotate(radians(45));
    rect(0,0,50,50);
  popMatrix();

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
