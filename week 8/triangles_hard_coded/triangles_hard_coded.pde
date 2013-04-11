void setup(){
  size(1200,700);
  background(236,235,230);
  
  fill(0, 90);
  noStroke();

  int midpoint = 250;
  int endpoint = 500;
  
  int translate1 = 125;
  int translate2 = 125;
  int translate3 = 200;

  pushMatrix();
  
  //top triangles
  translate(translate1,0);
  triangle(0,0,midpoint,height,endpoint,0);
  translate(translate2,0);
  triangle(0,0,midpoint,height,endpoint,0);

  translate(translate3,0);
  triangle(0,0,midpoint,height,endpoint,0);
  translate(translate2,0);
  triangle(0,0,midpoint,height,endpoint,0);
  popMatrix();


  pushMatrix();
  translate(translate1,0);    
  //bottom triangles
  triangle(0,height, midpoint, 0, endpoint, height);
  translate(translate2,0);
  triangle(0,height, midpoint, 0, endpoint, height);


  translate(translate3,0);
  triangle(0,height, midpoint, 0, endpoint, height);
  translate(translate2,0);
  triangle(0,height, midpoint, 0, endpoint, height);

 
  popMatrix();
  }  

void draw() {


}
