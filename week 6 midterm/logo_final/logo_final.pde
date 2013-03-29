 import processing.pdf.*;
import geomerative.*;


void setup() {
  size(1280,800);
//  size(1280,800,PDF, "geo.pdf");
  background(255);
  smooth();

  RG.init(this);

  RFont font = new RFont("facitregular.ttf", 80, RFont.LEFT);
  
  String dbt = "Databetes";

  float r = random(225,255);
  float g = random(150,225);
  float b = random(125,225);

  float r2 = random(125,225);
  float g2 = random(100);
  float b2 = random(150);  

  pushMatrix();
  noStroke();
  translate(560,335);
  fill(41,137,202);
  font.draw(dbt);
  popMatrix();  

  pushMatrix();
    translate(100,300);
    RShape c1 = new RShape();
    strokeWeight(2);
    stroke(r,g,b);
    noFill();    
    c1.addMoveTo(0,10);
    c1.addBezierTo(50, -30, 205, 45, 260, 75);
    c1.addBezierTo(500,210,660,200,715,165);
    c1.draw();
  popMatrix();


  // curve 2
  pushMatrix();
      translate(210,340);
      RShape c2 = new RShape();
      stroke(r2,g2,b2);
      strokeWeight(2);
      noFill();
      c2.addMoveTo( 0, 85);
      c2.addBezierTo( 40, 35, 90, 5, 150, 0);
      c2.addBezierTo(255, -10, 400, 85, 515, 80);
      c2.draw();
   popMatrix();

}

void draw() {
//  exit();

}
