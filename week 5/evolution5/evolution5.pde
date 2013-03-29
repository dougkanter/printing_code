/* Import libraries
----------------------------------------------------------- */

import geomerative.*;
import processing.pdf.*;

/* Global variables
----------------------------------------------------------- */

float print_width = 8.27;
float print_height = 11.69;
float make_bigger = 70;

PImage runner; 
PImage evolution;

//PFont h36;
PFont h22;
PFont h22l;
PFont h18;
PFont h38;
PFont h38l;
PFont h42;
//PFont h44;
//PFont h40;


void setup()
{
  size(round(print_width * make_bigger), round(print_height * make_bigger));
  setupShapes();
  smooth();
  
  translate(0,10);
  background(255);
  beginRecord(PDF, "print.pdf");

  runner = loadImage("runner.jpg");
  runner.resize(575,0);
  image(runner,0,0);
  evolution=(loadImage("evolution.jpg"));
//  h36 = loadFont("Helvetica-36.vlw");
  h22 = createFont("Helvetica", 22);
  h22l = createFont("Helvetica-Light", 22);
  h18 = createFont("Helvetica-Light", 18);
  h38 = createFont("Helvetica", 38);
  h38l = createFont("Helvetica-Light", 38);
//  h38 = loadFont("Helvetica-38.vlw");
//  h40 = loadFont("Helvetica-40.vlw");
  h42 = createFont("Helvetica", 42);
//  h42 = loadFont("Helvetica-42.vlw");
//  h44 = loadFont("Helvetica-44.vlw");
  textFont(h38l,38);

  String b = "born";
  String t = "to";
  String r = "run";
  String subHeader = "A Hidden Tribe,";
  String subHeader2 = "Superathletes, and";
  String subHeader3 = "the Greatest Race";
  String subHeader4 = "the World Has";
  String subHeader5 = "Never Seen";
  String sub = "A Hidden Tribe, Superathletes, and the Greatest Race the World Has Never Seen";
  String author = "Christopher McDougall";

  ModularGrid grid = new ModularGrid(3, 11, 20, 100);

//  grid.display();
  noStroke();

  Module first = grid.modules[0][1];
  Module second = grid.modules[1][1];
  Module third = grid.modules[2][1];
  Module fourth = grid.modules[0][2];
  Module fifth = grid.modules[1][9];
  Module sixth = grid.modules[1][10];

  Module seventh = grid.modules[2][7];


//born
  pushMatrix();
  translate(first.x + grid.moduleWidth, first.y + grid.moduleHeight);
  textAlign(RIGHT,BOTTOM);
  fill(125);
  text(b,0,0);
  popMatrix();

//to
  pushMatrix();
  translate(second.x+ grid.gutterSize, second.y+ grid.moduleHeight);
  textAlign(LEFT,BOTTOM);
  fill(125);
  text(t,0,0);
  popMatrix();

//run
  pushMatrix();
  translate(third.x + grid.moduleWidth, third.y+ grid.moduleHeight);
  textAlign(RIGHT,BOTTOM);
  fill(64,122,219);
  textFont(h38,38);  
  text(r,0,0);
  popMatrix();

/*
//subHeader
  pushMatrix();
  translate(fourth.x + 28, fourth.y+ grid.moduleHeight/6);
  textAlign(LEFT,BOTTOM);
  fill(150);
  textFont(h42,10);  
  text(sub,0,0);
  popMatrix();
*/

//subHeader
  pushMatrix();
  translate(seventh.x + grid.moduleWidth, seventh.y+ grid.moduleHeight);
  textAlign(RIGHT,BOTTOM);
  fill(125);
  textFont(h18,18);  
  text(subHeader,0,0);
  popMatrix();

//subHeader2
  pushMatrix();
  translate(seventh.x + grid.moduleWidth, seventh.y+ grid.moduleHeight+ grid.moduleHeight/2);
  text(subHeader2,0,0);
  popMatrix();

//subHeader3
  pushMatrix();
  translate(seventh.x + grid.moduleWidth, seventh.y+ grid.moduleHeight+ grid.moduleHeight/2+ grid.moduleHeight/2);
  text(subHeader3,0,0);
  popMatrix();


//subHeader4
  pushMatrix();
  translate(seventh.x + grid.moduleWidth, seventh.y+ grid.moduleHeight+ grid.moduleHeight+ grid.moduleHeight/2);
  text(subHeader4,0,0);
  popMatrix();
  
  
//subHeader5
  pushMatrix();
  translate(seventh.x + grid.moduleWidth, seventh.y+ grid.moduleHeight+ grid.moduleHeight/2+ grid.moduleHeight + grid.moduleHeight/2);
  text(subHeader5,0,0);
  popMatrix();  
  

translate(0,grid.moduleHeight);

//evolution
  pushMatrix();
  translate(fifth.x + grid.moduleWidth, fifth.y);
  int evoSize = int(grid.moduleWidth + grid.gutterSize);
  evolution.resize(evoSize,0);
  image(evolution,0,0);
  popMatrix();

//author
  pushMatrix();
  translate(sixth.x + grid.moduleWidth + grid.gutterSize, sixth.y + 5);
  textAlign(CENTER,TOP);
  fill(0);
  textFont(h22l,22);  
  text(author,0,0);
  popMatrix();

// println(PFont.list());
  endRecord();
}




/* Stuff you don't need to worry about unless you want to
---------------------------------------------------- */

/*
	Some fun methods you can try to use in the RShape objects

	shape.draw(); // always draws in 0,0
	shape.translate(); // alternate translate just for this shape
	shape.scale(float); // scale the shape by a percentage
	shape.transform(x, y, width, height); // fit the shape inside a rectangle width this x,y,width,height
	shape.getX();
	shape.getY();
	shape.getWidth();
	shape.getHeight();
*/

void setupShapes()
{
	RG.init(this);
  RG.ignoreStyles(true);

//  head = RG.loadShape("head.svg");
//  butterfly = RG.loadShape("butterfly.svg");
//  eye = RG.loadShape("eye.svg");
//  sigurros = RG.loadShape("sigurros.svg");
}
