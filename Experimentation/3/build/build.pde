
// An object in Processing is an entity that has both data and functionality
// The Walker object both keeps track of its data
// And has the capability to perform certain actions.
// Walker with x-location and y-location

// A class is the template for building actual instances of objects.

class Walker {
  
  int x;
  int y;

}

// Objects have a constructor where they are initialized.
Walker() {
 
 x = width/2;
 y = height/2;
  
}

void display() {
  
  stroke(0);
  // Take a step, Mr. walker
  point(x,y);
  
}

void step() {
  
  int choice = int(random(4)); // 0, 1, 2, or 3
  
  if(choice == 0){
    
    x++;
    
  } else if(choice == 2) {
    
    x--;
    
  } else {
    
    y--;
    
  }
}
