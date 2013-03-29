import processing.pdf.*;

void setup()
{  
//  size(1280, 800);
  size(1500, 2000, PDF, "week2_e2_a_11i_2p_again2.pdf");
  smooth();
  background(0);
  translate(width / 3, height / 4);
  
  int circleRadius = 200;
  float numVertices = 20;
  float vertexDegree = 360 / numVertices;
  int numberOfCircles = 25;
  
  fill(255,20);
  noStroke();
  
  for(int f = 0; f < numberOfCircles; f++){
    beginShape();
    for(int i = 0; i < numVertices; i++) {
      float x = cos(radians(i * vertexDegree)) * (circleRadius + random(-5, 10) + (f * random(50)));
      float y = sin(radians(i * vertexDegree)) * (circleRadius + random(-10, 50) + (f * random(80)));
      curveVertex(x + (i * int(random(30))), y);
    }
    endShape();
  }

/*  
  for (int g=0; g < 60; g++){
    float randomY = random(0,height * 1.5);
    float randomX = random(-50,250) - randomY/6;
    float circleSize = map(randomY,0,height,2,50);
    float opacity = map(randomY,0,height/4,0,200);
    fill(opacity, opacity);
    noStroke();
    ellipse (randomX, randomY, circleSize, circleSize);
  }
*/  
  
  translate (250, -30);
//  fill(255,0,0);
//  ellipse(0,0,20,20);
  int spokes = 5;
  for(int j=0; j<spokes; j++){
    beginShape();
    float spokeAngle= random(360);
    float x = cos(radians(spokeAngle)) * 70;
    float y = sin(radians(spokeAngle)) * 380;
    float pX = 0;
    float pY = 0;
    float pX2 = 0;
    float pY2 = 0;
    vertex(0,0);
    vertex(0,y);
//    vertex(x,0);
    vertex(x,y);
    vertex(x,pX);
    vertex(0,pY);
    vertex(0,pX);
    vertex(pX,y);
    vertex(y,pY);
    float x2 = cos(radians(spokeAngle)) * 35;
    float y2 = sin(radians(spokeAngle * 2)) * 255; 
    vertex(x2,y2);
    vertex(0,0);
    int spokeOpacity=int(random(50,250));
    int spokeWeight=int(random(7));
    strokeWeight(spokeWeight);
    strokeCap(SQUARE);
    stroke(0,spokeOpacity);
    pX = x;
    pY = y;
    pX2 = x2;
    pY2 = y2;
    endShape();
//    line (0,0,x,y);
//    line(x,y,x2,y2);
//    float pX = x;
//    float pY = ;
    
  
//  fill(0, 0, 255);
//  stroke(0,0,255);
//  line(0,0,x, y);
  }
}

void draw(){
  exit();
}
