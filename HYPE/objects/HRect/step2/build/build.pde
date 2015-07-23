HRect d;

void setup() {

  size(1200,1200);
  H.init(this).background(#202020);
  smooth();

  for(int i = 0; i < 200; i++) {
    d = new HRect().rounding(10);
    d
      .strokeWeight(1)
      .stroke(#FF3300)
      .fill(#111111, 200)
      .size((int)random(50,250))
      .rotate((int)random(360))
      .loc((int)random(width),(int)random(height))
      .anchorAt(H.CENTER)
    ;
    H.add(d);
  }
  H.drawStage();

}
