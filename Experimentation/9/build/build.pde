class Walker {
  
  float x,y,tx,ty,prevX,prevY;
  
  Walker() {
   
    tx = 0;
    ty = 1000;
    x = map(noise(tx),0,1,0,width);
    y = map(noise(ty),0,1,0,height);
    
  }
  
  void render() {
    
    stroke(255);
    strokeWeight(10);
    line(prevX,prevY,x,y);
    
  }
  
  void step() {
    
    prevX = x;
    prevY = y;
    
    x = map(noise(tx),0,1,0,width);
    y = map(noise(ty),0,1,0,height);
    
    tx += 0.01;
    ty += 0.01;
    
  }
  
}

Walker w;

void setup() {
  
  size(640,640);
  w = new Walker();
  background(0);
  
}

void draw() {
  
 // Run that walker!
 w.step();
 w.render();
  
}
