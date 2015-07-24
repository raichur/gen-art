
// An object in Processing is an entity that has both data and functionality
// The Walker object both keeps track of its data
// And has the capability to perform certain actions.
// Walker with x-location and y-location

// A class is the template for building actual instances of objects.

class Walker {
  
  int x;
  int y;
  
  Walker() {
 
    x = width/2;
    y = height/2;
    
  }
  
  void display() {
    
    stroke(0);
    // Take a step, Mr. walker
    point(x,y);
    
  }
  
  // Random floating point var between 0 and 3.999 and converts it to an integer.
  void step() {
    
    float r = random(1);
    
    if(r < 0.35) {
      
      x++; // Right
      
    } else if (r < 0.6) {
     
      x--;
      
    } else if (r < 0.8) {
     
     y++;
      
    } else {
      
      y--;
    }
    
  }

}

// Declare one global variable of type Walker
Walker w;


void setup() {
 
  size(640,360);
  
  w = new Walker();
  
  background(255);
  
}

void draw() {
  
 // Call functions on Walker
 w.step();
 
 w.display();
  
}
