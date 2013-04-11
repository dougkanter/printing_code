import processing.pdf.*;

void setup(){
  size(1200,700, PDF, "random18.pdf");
  background(236,235,230);
  
  fill(0, 90);
  noStroke();

  int midpoint = int(random(50,300));
  int endpoint = midpoint + 500;
  
  int translate1 = int(random(200,600));
  int translate2 = int(random(50,550));

  pushMatrix();
  translate(width/2 - translate1,0);
  triangle(0,0,midpoint,height,endpoint,0);
  popMatrix();

  pushMatrix();
  translate(width/2 - translate2,0);
  triangle(0,0,midpoint,height,endpoint,0);
  popMatrix();

  pushMatrix();
  translate(width/2 - endpoint + translate1,0);
  triangle(0,0,midpoint,height,endpoint,0);
  popMatrix();

  pushMatrix();
  translate(width/2 - endpoint  + translate2,0);
  triangle(0,0,midpoint,height,endpoint,0);
  popMatrix();



  pushMatrix();
  translate(width/2 - translate1,0);
  triangle(0,height, midpoint, 0, endpoint, height);
  popMatrix();

  pushMatrix();
  translate(width/2 - translate2,0);
  triangle(0,height, midpoint, 0, endpoint, height);
  popMatrix();

  pushMatrix();
  translate(width/2 - endpoint + translate1,0);
  triangle(0,height, midpoint, 0, endpoint, height);
  popMatrix();

  pushMatrix();
  translate(width/2 - endpoint  + translate2,0);
  triangle(0,height, midpoint, 0, endpoint, height); 
  popMatrix();
  }  

void draw() {
  exit();

}
