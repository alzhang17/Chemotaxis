//declare bacteria variables here 
Bacteria bacteria[] = new Bacteria [8];
 void setup()   
 {    
   size(500,500);
   for(int i = 0; i < bacteria.length; i++)
     bacteria[i] = new Bacteria((int)(Math.random()*200),(int)(Math.random()*200));
   //initialize bacteria variables here   
 }   
 void draw()   
 {    
   background(0);
   strokeWeight(3);
   for(int i = 0; i < bacteria.length; i++){
     bacteria[i].show();
     bacteria[i].move();
   }
   
   //move and show the bacteria   
 }  
 class Bacteria    
 {     
   //lots of java!
   int myX, myY, bacteriaColor;
   Bacteria(int x, int y){
     myX = x;
     myY = y;
     bacteriaColor = color((int)(Math.random()*256),(int) (Math.random()*256),(int)(Math.random()*256));
   }
   void show(){
     fill(bacteriaColor);
     noStroke();
     rect(myX, myY, 25, 25);
   }
   void move(){
     if(mouseX < myX)
       myX = (myX - (int)(Math.random()*5-2));
     else if(mouseX > myX)
       myX = myX + (int)(Math.random()*5-2);
     if(mouseY < myY)
       myY = (myY - (int)(Math.random()*5-2));
     else if(mouseY > myY)
       myY = (myY + (int)(Math.random()*5-2));
   }
 }    
