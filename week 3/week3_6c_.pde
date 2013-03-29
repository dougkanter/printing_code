import processing.pdf.*;
import toxi.color.*;
import toxi.util.datatypes.*;

int numCircles = int(random(3, 200));
Circle[] myCircles;
 
  FloatRange h = new FloatRange(0.55, 0.75);
  FloatRange s = new FloatRange(0.35, 0.55);
  FloatRange b = new FloatRange(0.6, .8);
  ColorRange range = new ColorRange(h, s, b, "My range"); 
 
void setup() {
//  size(1000, 800);
  size(1100, 800, PDF, "DougKanter_Week3_6c_5.pdf");
  smooth();
//  frameRate(30);
  myCircles = new Circle[numCircles];
  colorMode(HSB, 1, 1, 1);
  background(.95);
  mak();
}
void draw() {  
  exit();  
}

void mak(){
    for (int i = 0; i < numCircles; i++) {
      myCircles[i] = new Circle(random(100, width-100), random(100, height-100), random(10, 40));
  }

  
  for (int i = 0; i < numCircles; i++) {
    TColor ranColor = range.getColor();
    for (int j=i+1; j< numCircles; j++) {
      stroke(ranColor.hue(), .2, ranColor.saturation()-.2,100);
      line(myCircles[i].x, myCircles[i].y, (myCircles[j].x)+50, (myCircles[j].y)+100);
    }
    
    
      fill(ranColor.hue(), ranColor.saturation(), ranColor.brightness());   
    myCircles[i].display();
    
/*    
    float alph = dist(width/2, height/2, mouseX, mouseY);
    float maxAlph = dist(0, 0, width/2, height/2);
    float a1 = map(alph, 0, maxAlph, 40, 180);
    stroke(255, 255, 255, a1);
    strokeWeight(0.1);
*/
  }


}
