Bacteria[] bugs; 
int red, green, blue;

//declare bacteria variables here   
 void setup()   
 {     
   //initialize bacteria variables here
   fill(240, 248, 255);
   ellipse(250.0, 250.0, 400.0, 400.0);
   noStroke();
   size(500, 500);
   bugs = new Bacteria[50];
   for (int i = 0; i < bugs.length; i++) {
     bugs[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   //move and show the bacteria  
   background(240, 248, 255);
   fill(0, 0, 0);
   ellipse(250.0, 250.0, 400.0, 400.0);
   noStroke();
   for (int i = 0; i < bugs.length; i++) {
     bugs[i].show(); 
     bugs[i].move();
   }
 }  
 void mousePressed() {
   red += (int)((Math.random() * 200) - 100);
   green += (int)((Math.random() * 200) - 100);
   blue += (int)((Math.random() * 200) - 100);
 }  
 class Bacteria    
 {     
   //lots of java! 
   int myX, myY, col, size;
   Bacteria() {
     myX = (int)((Math.random() * 200) + 150);
     myY = (int)((Math.random() * 150) + 170);
     red = (int)(Math.random() * 350);
     green = (int)(Math.random() * 350);
     blue = (int)(Math.random() * 350);
     size = 20;
   }
   void move() {
     myX += (int)((Math.random() * 4) - 2);
     myY += (int)((Math.random() * 4) - 2);
     size += (int)((Math.random() * 4) - 2);
   }
   void show() {
     col = color(red, green, blue);
     fill(col);
     ellipse(myX, myY, size, size);
   }
 }    
