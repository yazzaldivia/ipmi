PImage img1;
void setup(){
size(800,400);
background(200);

img1 = loadImage("Imagefuego.jpeg");
  
}

void draw(){ 
 background( 197 );
  image ( img1, 0, 0, 400, 400 ); 
  
   strokeWeight( 1 );
  fill(183,52,150);
 rect(158+400, 150, 81, 226,10);
 fill(8,6,8);
  rect (158+400, 150,81,10);
fill(216,216,216);
  circle(211+400, 113,22);
  rect (158+400, 105,60,45,8);
      fill(0,0,0);
    rect(219+400,126,21,8,2);
       fill(0,0,0);
   rect(219+400,134,15,14,2);
    fill(170,165,170);
    square(200+400,130,11);
      fill(0,0,0);
rect(154+400,145,6,4);
   fill(139,38,114);
  rect( 195+400, 200, 5, 173 );

  



 
  
  
  
  }
