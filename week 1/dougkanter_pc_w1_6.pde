import processing.pdf.*;

void setup () {
  size(800,800, PDF, "DougKanter_PrintingCode_Week1.pdf");
  background(255);
  smooth();
}

void draw () {
  strokeWeight(25);
  ellipse(400,200,215,215);
  strokeWeight(10);
  triangle (300, 250, 500, 250, 400, 650);
  stroke(255);
  strokeWeight(5);
  rect(250,232,300,10);
  stroke(0);
  exit();
}
