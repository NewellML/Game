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
  fill(0, 255, 255); 
  rect(xpos, ypos, 20, 20);
}
 
void playerMove() {
 
  float speed =-12.0 ; 
  if (holdLeft) { 
    ypos += speed;
  } 
  if(ypos<25){
    ypos=-200000000;
    o.display();
  }
  if(ypos>475){
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
 
  if(ypos==500)
    ypos=500;
   
  else
    ypos=ypos+5;

 

 
  
}

    
      
    
      
    
    
  
    
    
    
    
  
 
