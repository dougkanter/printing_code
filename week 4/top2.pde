import processing.pdf.*;

void setup() {
  size(1200,600, PDF, "font4.pdf");
  background(255);
  drawT();
  drawO();  
  drawP();
  drawExterior();
  }


void grid () {
  for(int i = 100; i <width; i+=100){
    for(int j = 100; j<height; j+=100){
      ellipse(i,j,5,5);
    }
  }
}




void drawT() {
  int tx1=100;
  int tx2=101;
  int tx3=350;
  int tx4=250;
  int tx5=200;
  int tx6=110;

  int ty1=100;
  int ty2=101;
  int ty3=150;
  int ty4=300;
  int ty5=110;
  
  stroke(0);
  strokeWeight(2);
  noFill();
  beginShape();  
  vertex(tx1,ty1);
  curveVertex(tx2,ty2);
  curveVertex(tx3,ty1);
  curveVertex(tx3,ty3);
  curveVertex(tx4,ty3);
  curveVertex(tx4,ty4);
  curveVertex(tx5,ty4);  
  curveVertex(tx5,ty3);
  curveVertex(tx1,ty3);  
  curveVertex(tx2,ty1);  
  curveVertex(tx6,ty5);  
  endShape();
  
  int randomness = 30;
  int randomness2 = 50;
  int randomness3 = 15;
  
  beginShape();  
  strokeWeight(.5);
//  stroke(0,0,0,200);
  vertex((tx1 - int(random(0,randomness))),(ty1 - int(random(0,randomness))));
  curveVertex((tx2 - int(random(0,randomness))),(ty2 - int(random(0,randomness))));
  curveVertex((tx3 + int(random(0,randomness))),(ty1 - int(random(0,randomness))));
  curveVertex((tx3 + int(random(0,randomness))),(ty3 + int(random(0,randomness))));
  curveVertex((tx4 + int(random(0,randomness))),(ty3 + int(random(0,randomness))));
  curveVertex((tx4 + int(random(0,randomness))),(ty4) + int(random(0,randomness)));
  curveVertex((tx5 - int(random(0,randomness))),(ty4 + int(random(0,randomness))));  
  curveVertex((tx5 - int(random(0,randomness))),(ty3 + int(random(0,randomness))));
  curveVertex((tx1 - int(random(0,randomness))),(ty3 + int(random(0,randomness))));  
  curveVertex((tx2 - int(random(0,randomness))),(ty1) - int(random(0,randomness)));  
  curveVertex((tx6 - int(random(0,randomness))),(ty5 - int(random(0,randomness))));  
  endShape();  

//interior T loop  
  beginShape();  
  strokeWeight(.5);
//  stroke(255,0,0,200);
  vertex((tx1 + int(random(0,randomness3))),(ty1 + int(random(0,randomness3))));
  curveVertex((tx2 + int(random(0,randomness3))),(ty2 + int(random(0,randomness3))));
  curveVertex((tx3 - int(random(0,randomness3))),(ty1 + int(random(0,randomness3))));
  curveVertex((tx3 - int(random(0,randomness3))),(ty3 - int(random(0,randomness3))));
  curveVertex((tx4 - int(random(0,randomness3))),(ty3 - int(random(0,randomness3))));
  curveVertex((tx4 - int(random(0,randomness3))),(ty4) - int(random(0,randomness3)));
  curveVertex((tx5 + int(random(0,randomness3))),(ty4 - int(random(0,randomness3))));  
  curveVertex((tx5 + int(random(0,randomness3))),(ty3 - int(random(0,randomness3))));
  curveVertex((tx1 + int(random(0,randomness3))),(ty3 - int(random(0,randomness3))));  
  curveVertex((tx2 + int(random(0,randomness3))),(ty1) + int(random(0,randomness3)));  
  curveVertex((tx6 + int(random(0,randomness3))),(ty5 + int(random(0,randomness3))));  
  endShape();  


//exterior T loop
  beginShape();  
  strokeWeight(.5);
  stroke(0,0,0,200);
  vertex((tx1 - int(random(randomness,randomness2))),(ty1 - int(random(randomness,randomness2))));
  curveVertex((tx2 - int(random(randomness,randomness2))),(ty2 - int(random(randomness,randomness2))));
  curveVertex((tx3 + int(random(randomness,randomness2))),(ty1 - int(random(randomness,randomness2))));
  curveVertex((tx3 + int(random(randomness,randomness2))),(ty3 + int(random(randomness,randomness2))));
  curveVertex((tx4 + int(random(randomness,randomness2))),(ty3 + int(random(randomness,randomness2))));
  curveVertex((tx4 + int(random(randomness,randomness2))),(ty4 + int(random(randomness,randomness2))));
  curveVertex((tx5 - int(random(randomness,randomness2))),(ty4 + int(random(randomness,randomness2))));  
  curveVertex((tx5 - int(random(randomness,randomness2))),(ty3 + int(random(randomness,randomness2))));
  curveVertex((tx1 - int(random(randomness,randomness2))),(ty3 + int(random(randomness,randomness2))));  
  curveVertex((tx2 - int(random(randomness,randomness2))),(ty1 - int(random(randomness,randomness2))));  
  curveVertex((tx6 - int(random(randomness,randomness2))),(ty5 - int(random(randomness,randomness2))));  
  endShape();  
  
}




void drawO(){
  translate(20,0);
  stroke(0);
  noFill();


  int ox1 = 425;
  int ox2 = 440;
  int ox3 = 475;
  int ox4 = 575;
  int ox5 = 400;
  int ox6 = 420;
  int ox7 = 426;
  int ox8 = 428;
  
  int oy1 = 125;
  int oy2 = 115;
  int oy3 = 100;
  int oy4 = 125;
  int oy5 = 300;
  int oy6 = 200;
  int oy7 = 134;
  int oy8 = 124;
  int oy9 = 115;
  
 int a = 20;
 int b = 42;
 int c = 46;
 int d = 52; 
 int e = 15;

//outside of O
  strokeWeight(2);
  beginShape();
  vertex(ox1,oy1);
  curveVertex(ox2,oy2);
  curveVertex(ox3,oy3);
  curveVertex(ox4,oy4);
  curveVertex(ox4,oy5);
  curveVertex(ox1,oy5);
  curveVertex(ox5,oy6);
  curveVertex(ox6,oy7);
  curveVertex(ox7,oy8);
  curveVertex(ox8,oy9);
  endShape();


//exterior O
  beginShape();
  strokeWeight(.5);
//  stroke(255,0,0);
  vertex((ox1 - int(random(0,e))) , (oy1 - int(random(0,e))));
  curveVertex((ox2 - int(random(0,e))) , (oy2 - int(random(0,e))));
  curveVertex((ox3 - int(random(0,e))) , (oy3 - int(random(0,e))));
  curveVertex((ox4 + int(random(0,e))) , (oy4 - int(random(0,e))));
  curveVertex((ox4 + int(random(0,e))),(oy5 + int(random(0,e))));
  curveVertex((ox1 - int(random(0,e))),(oy5 + int(random(0,e))));
  curveVertex((ox5 - int(random(0,e))),(oy6 - int(random(0,e))));
  curveVertex((ox6 - int(random(0,e))),(oy7 - int(random(0,e))));
  curveVertex((ox7 - int(random(0,e))),(oy8 - int(random(0,e))));
  curveVertex((ox8 - int(random(0,e))),(oy9 - int(random(0,e))));
  endShape();


  beginShape();
  strokeWeight(.5);
  stroke(0);  
  vertex((ox1 + int(random(a,b))) , (oy1 + int(random(a,b))));
  curveVertex((ox2 + int(random(a,b))) , (oy2 + int(random(a,b))));
  curveVertex((ox3 + int(random(a,b))) , (oy3 + int(random(a,b))));
  curveVertex((ox4 - int(random(a,b))) , (oy4 + int(random(a,b))));
  curveVertex((ox4 - int(random(a,b))),(oy5 - int(random(a,b))));
  curveVertex((ox1 + int(random(a,b))),(oy5 - int(random(a,b))));
  curveVertex((ox5 + int(random(a,b))),(oy6 + int(random(a,b))));
  curveVertex((ox6 + int(random(a,b))),(oy7 + int(random(a,b))));
  curveVertex((ox7 + int(random(a,b))),(oy8 + int(random(a,b))));
  curveVertex((ox8 + int(random(a,b))),(oy9 + int(random(a,b))));
  endShape();



  beginShape();
  strokeWeight(.5);
  stroke(0);  
  vertex((ox1 + int(random(b,c))) , (oy1 + int(random(b,c))));
  curveVertex((ox2 + int(random(b,c))) , (oy2 + int(random(b,c))));
  curveVertex((ox3 + int(random(b,c))) , (oy3 + int(random(b,c))));
  curveVertex((ox4 - int(random(b,c))) , (oy4 + int(random(b,c))));
  curveVertex((ox4 - int(random(b,c))),(oy5 - int(random(b,c))));
  curveVertex((ox1 + int(random(b,c))),(oy5 - int(random(b,c))));
  curveVertex((ox5 + int(random(b,c))),(oy6 + int(random(b,c))));
  curveVertex((ox6 + int(random(b,c))),(oy7 + int(random(b,c))));
  curveVertex((ox7 + int(random(b,c))),(oy8 + int(random(b,c))));
  curveVertex((ox8 + int(random(b,c))),(oy9 + int(random(b,c))));
  endShape();



  beginShape();
  strokeWeight(.5);
//  stroke(0,0,0,200);  
  vertex((ox1 + int(random(c,d))) , (oy1 + int(random(c,d))));
  curveVertex((ox2 + int(random(c,d))) , (oy2 + int(random(c,d))));
  curveVertex((ox3 + int(random(c,d))) , (oy3 + int(random(c,d))));
  curveVertex((ox4 - int(random(c,d))) , (oy4 + int(random(c,d))));
  curveVertex((ox4 - int(random(c,d))),(oy5 - int(random(c,d))));
  curveVertex((ox1 + int(random(c,d))),(oy5 - int(random(c,d))));
  curveVertex((ox5 + int(random(c,d))),(oy6 + int(random(c,d))));
  curveVertex((ox6 + int(random(c,d))),(oy7 + int(random(c,d))));
  curveVertex((ox7 + int(random(c,d))),(oy8 + int(random(c,d))));
  curveVertex((ox8 + int(random(c,d))),(oy9 + int(random(c,d))));
  endShape();
  
  
/*  
//inside of 0
  beginShape();
  noFill();
  stroke(0,0,0,200);
  vertex(490,180);
  curveVertex(490,180);
  curveVertex(515,180);
  curveVertex(515,200);
  curveVertex(490,200);
  curveVertex(490,180);
  curveVertex(490,180);
  curveVertex(490,180);
  curveVertex(490,180); 
  endShape();
*/  



}




void drawP(){
  translate(-10,0);
  stroke(0);
  noFill();
  
  int opx1 = 650;
  int opx2 = 725;
  int opx3 = 780;
  int opx4 = 810;
  int opx5 = 720;
  int opx6 = 690;
  int opx7 = 660;
  int opx8 = 647;
  
  int opy1 = 100;
  int opy2 = 90;
  int opy3 = 200;
  int opy4 = 230;
  int opy5 = 300;
  int opy6 = 150;
  int opy7 = 110;
  
  int pix1 = 710;
  int pix2 = 760;
  int pix3 = 700;
  
  int piy1 = 130;
  int piy2 = 160;
  int piy3 = 150;
  
  int opRandom = 30;
  
//outside of P  
  beginShape();
  strokeWeight(2);
  stroke(0);
  vertex(opx1 , opy1);
  curveVertex(opx1, opy1);
  curveVertex(opx2 , opy2);
  curveVertex(opx3 , opy1);
  curveVertex(opx4 , opy3);
  curveVertex(opx5 , opy4);
  curveVertex(opx6 , opy5);
  curveVertex(opx1 , opy5);
  curveVertex(opx1 , opy3);
  curveVertex(opx7 , opy6);
  curveVertex(opx8 , opy7);
  curveVertex(opx1 , opy1);
  curveVertex(opx1 , opy1);   
  endShape();

//outside the outside P
  beginShape();
  strokeWeight(.5);
//  stroke(255,0,0);
  vertex((opx1 - int(random(0,opRandom))) , (opy1 - int(random(0,opRandom))));
  curveVertex((opx1 - int(random(0,opRandom))) , (opy1 - int(random(0,opRandom))));
  curveVertex((opx2 - int(random(0,opRandom))) , (opy2 - int(random(0,opRandom))));
  curveVertex((opx3 + int(random(0,opRandom))) , (opy1 - int(random(0,opRandom))));
  curveVertex((opx4 + int(random(0,opRandom))) , (opy3 + int(random(0,opRandom))));
  curveVertex((opx5 + int(random(0,opRandom))) , (opy4 + int(random(0,opRandom))));
  curveVertex((opx6 + int(random(0,opRandom))) , (opy5 + int(random(0,opRandom))));
  curveVertex((opx1 - int(random(0,opRandom))) , (opy5 + int(random(0,opRandom))));
  curveVertex((opx1 - int(random(0,opRandom))) , (opy3 + int(random(0,opRandom))));
  curveVertex((opx7 - int(random(0,opRandom))) , (opy6 + int(random(0,opRandom))));
  curveVertex((opx8 - int(random(0,opRandom))) , (opy7 + int(random(0,opRandom))));
  curveVertex((opx1 - int(random(0,opRandom))) , (opy1 - int(random(0,opRandom))));
  curveVertex((opx1 - int(random(0,opRandom))) , (opy1));   
  endShape();



//inside of P
  beginShape();
  noFill();
  strokeWeight(1);
  stroke(0);
  vertex(pix1 , piy1);
  curveVertex(pix1 , piy1);
  curveVertex(pix2 , piy1);
  curveVertex(pix2 , piy2);
  curveVertex(pix1 , piy2);
  curveVertex(pix3 , piy3);
  curveVertex(pix1 , piy1);
  curveVertex(pix1 , piy1);
  endShape();

  int randomP1 = 25;
  int randomP2 = 30;

//1st outer loop of inside of P
  beginShape();
  strokeWeight(.5);
  noFill();
//  stroke(255,0,0);
  vertex(pix1 , (piy1 - int(random(0,randomP1/2))));
  curveVertex((pix1 - int(random(0,randomP1))), (piy1 - int(random(0,randomP1))));
  curveVertex((pix2 + int(random(0,randomP1))), (piy1 - int(random(0,randomP1))));
  curveVertex((pix2 + int(random(0,randomP1))), (piy2 + int(random(0,randomP1))));
  curveVertex((pix1 - int(random(0,randomP1))), (piy2 + int(random(0,randomP1))));
//  curveVertex((pix3 - int(random(0,randomP1))), (piy3 + int(random(0,randomP1))));
  curveVertex((pix1 - int(random(0,randomP1))), (piy1 - int(random(0,randomP1/2))));
  curveVertex((pix1 - int(random(0,randomP1/2))), (piy1 - int(random(0,randomP1/2))));
  endShape();



//2nd outer loop of inside of P
  beginShape();
  strokeWeight(.5);
  noFill();
//  stroke(255,0,0);
  vertex(pix1 , (piy1 - int(random(randomP1/2 , randomP2))));
  curveVertex((pix1 - int(random(randomP1 , randomP2))) , (piy1 - int(random(randomP1 , randomP2))));
  curveVertex((pix2 + int(random(randomP1 , randomP2))) , (piy1 - int(random(randomP1 , randomP2))));
  curveVertex((pix2 + int(random(randomP1 , randomP2))) , (piy2 + int(random(randomP1 , randomP2))));
  curveVertex((pix1 - int(random(randomP1 , randomP2))) , (piy2 + int(random(randomP1 , randomP2))));
//  curveVertex((pix3 - int(random(0,randomP1))), (piy3 + int(random(0,randomP1))));
  curveVertex((pix1 - int(random(randomP1 , randomP2))) , (piy1 - int(random(randomP1 , randomP2))));
  curveVertex((pix1 - int(random(randomP1 , randomP2))) , (piy1 - int(random(randomP1 , randomP2))));
  vertex(pix1 , (piy1 - int(random(randomP1/2 , randomP2))));
  endShape();

}


void drawExterior(){
  beginShape();
  strokeWeight(.1);
  stroke(0,150);
  noFill();
  vertex(70,250);
  curveVertex(70,250);
  curveVertex(100,170);
  curveVertex(130,250);
  curveVertex(140,370);
  curveVertex(320,360);
  curveVertex(350,260);
  curveVertex(380,250);
  curveVertex(400,320);  
  curveVertex(500,380);
  curveVertex(600,400);
  curveVertex(800,410);
  curveVertex(800,410);
  endShape();


  beginShape();
  strokeWeight(.1);
  noFill();
  vertex(250,50);
  curveVertex(250,50);
  curveVertex(380,110);
  curveVertex(550,70);
  curveVertex(700,50);
  vertex(700,50);
  endShape();


}



void draw(){
  exit();
}
