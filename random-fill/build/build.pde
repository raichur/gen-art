void setup() {
  size(900, 900);
  H.init(this).background(#ECECEC);
  smooth();

  HColorPool colors = new HColorPool(#FFFFFF, #F7F7F7, #ECECEC, #333333, #0095a8, #00616f, #FF3300, #FF6600);

  HShape d = new HShape("shape.svg");
  H.add(d)
    .strokeWeight(0.5)
    .stroke(#000000)
    .noFill()
    .anchorAt(H.CENTER)
    .loc(width/2, height/2)
    .scale(3)
  ;

  d.randomColors(colors.fillOnly());

  H.drawStage();
}
