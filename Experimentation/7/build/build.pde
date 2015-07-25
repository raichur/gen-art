// We can use the Monte Carlo method to make the general rule:
// The higher the number, the more likely it is to be picked.


// How it works:

//1. Pick a random number: R1
//2. Compute probability P (called a "qualifying random value") that R1 should qualify. 
//   Let's try P = R1.
//3. Pick another random number: R2.
//4. If R2 is less than P, then we have found our number–R1.
//5. If R2 is not less than P, go back to step 1 and start over.

float monteCarlo() {
  
    while (true) { // Do this until we find a qualifying random value
     
      float r1 = random(1); // Step 1
      
      float probability = r1; // Step 2
      
      float r2 = random(1); // Step 3
      
      if (r2 < probability) { // Step 4
        
        return r1; // There we go!
        
      }
      
    } // Step 5: It'll continue looping until the if statement is qualified.
    
  }

void draw() {
  
  println(monteCarlo());
  
  
}
