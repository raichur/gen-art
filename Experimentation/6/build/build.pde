import java.util.*;

// Reminder: SD is calculated by:
// 1. Taking the difference from the mean for each person. 
// 2. Then squaring it (variance).
// 3. Calculate the average of all these values.
// 4. Take the square root as the SD.

Random generator; // var name generator

void setup() {
  
  size(640,100);
  
  generator = new Random();
  
}

void draw() {
  
  float num = (float) generator.nextGaussian();
  
  float sd = 60;
  
  float mean = 320;
  
  float x = sd * num + mean;
  
  noStroke();
  
  fill(0,10);
  
  ellipse(x,50,16,16);
  
  
}
