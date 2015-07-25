
float x = random(0,width); // Random x-location

float t = 0;

void setup() {
  
  size(640,360);
  background(255);
  
}

void draw() {
  
  float n = noise(t); // Noise value for a specific moment in time.
  
  float x = map(n,0,1,0,width); // Using map() to customize the range of Perlin noise
  
  ellipse(x,180,16,16);
  
  t += 0.01;
  
}
