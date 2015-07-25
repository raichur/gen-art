
float x = random(0,width); // Random x-location

float t = 3;

void draw() {
  
  float n = noise(t); // Noise value for a specific moment in time.
  
  println(n);
  
  t += 0.01;
  
}
