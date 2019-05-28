float xpos=100;
float ypos=250;

float velocity=0;
back b;
Ben r;
Over o;
  void setup(){
    size(700,500);
    
    b = new back();
    r= new Ben();
    o=new Over();
  }
  void draw(){
    background(150,150,200);
    b.display();
    b.draw();
    playerDraw();
    playerMove();
  
   
  }
 void playerDraw() { 
  fill(74, 226, 87); 
  rect(xpos, ypos, 20, 20);
}
 
void playerMove() {
 
  float speed =-12.0 ; 
  if (holdLeft) { 
    ypos += speed;
  } 
  if(ypos<10){
    ypos=-200000000;
    o.display();
  }
  if(ypos>465){
    ypos=1000000;
    o.display();
  }
  if(xpos+20>b.x2&&xpos<b.x2+100&&ypos+20>b.y2&&ypos<b.y2+50){
    ypos=100000000;
    o.display();
  }
  if(xpos+20>b.x&&xpos<b.x+100&&ypos+20>b.y&&ypos<b.y+50){
    ypos=100000000;
    o.display();
  }
  if(xpos+20>b.x3&&xpos<b.x3+100&&ypos+20>b.y3&&ypos<b.y3+50){
    ypos=100000000;
    o.display();
  }
  if(xpos+20>b.x4&&xpos<b.x4+1200&&ypos+20>b.y4&&ypos<b.y4+20){
    ypos=100000000;
    o.display();
  }
  if(xpos+20>b.x5&&xpos<b.x5+100&&ypos+20>b.y5&&ypos<b.y5+50){
    ypos=100000000;
    o.display();
  }
  
 if(xpos+20>b.x6&&xpos<b.x6+100&&ypos+20>b.y6&&ypos<b.y6+50){
    ypos=100000000;
    o.display();
  }
  if(xpos+20>b.x8&&xpos<b.x8+100&&ypos+20>b.y8&&ypos<b.y8+50){
    ypos=100000000;
    o.display();
  }
  if(xpos+20>b.x7&&xpos<b.x7+100&&ypos+20>b.y7&&ypos<b.y7+50){
    ypos=100000000;
    o.display();
  }
  if(xpos+20>b.x9&&xpos<b.x9+100&&ypos+20>b.y9&&ypos<b.y9+50){
    ypos=100000000;
    o.display();
  }
  if(ypos==500)
    ypos=500;
   
  else
    ypos=ypos+5;

 

 
  
}

    
      
    
      
    
    
  
    
    
    
    
  
 
