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
    translate(100,height/2);
    rotate(radians(9*1));
    rect(0,0,50,50);
  popMatrix();

  pushMatrix();
    translate(200,height/2);
    rotate(radians(9*2));
    rect(0,0,50,50);
  popMatrix();

  pushMatrix();
    translate(300,height/2);
    rotate(radians(9*3));
    rect(0,0,50,50);
  popMatrix();

  pushMatrix();
    translate(400,height/2);
    rotate(radians(9*4));
    rect(0,0,50,50);
  popMatrix();

  pushMatrix();
    translate(500,height/2);
    rotate(radians(9*5));
    rect(0,0,50,50);
  popMatrix();

  line(0,height/2,width,height/2);

  ellipse(100,height/2,5,5);
  ellipse(200,height/2,5,5);
  ellipse(300,height/2,5,5);
  ellipse(400,height/2,5,5);
  ellipse(500,height/2,5,5);

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
