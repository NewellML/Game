String s;
String a;
boolean chg=false;
int totalTime1=1200;
int savedTime;
float xpos=100;
float ypos=250;
float velocity=0;
int count=0;
int count2=0;
String score="Game Over";
Rect[] recta = new Rect[1000];
Rect r;
Over o;
  void setup(){
    size(700,500);
    for(int x = 0; x<recta.length; x++ )
      recta[x] = new Rect();
   
    r=new Rect();
    o=new Over();
    
  }
  void draw(){
    background(150,150,200);
    
    fill(0);
    rect(0,475,700,700);
    rect(0,0,700,25);
    playerDraw();
    playerMove();
    rects();
   
  }
  void rects(){
    
    int passedTime=(millis()-savedTime);
    if (chg==false) {
      pushMatrix();
      recta[count].drawrect();
      popMatrix();
      
  
    
    
   
   
  } else {
    pushMatrix();
    recta[count+1].drawrect();
    popMatrix();
    
  
  }
  if (passedTime>totalTime1) {
    println("3 seconds");
    if (chg==false) {
      chg=true;
      count2++;
    } else if (chg==true) {
      chg=false;
      count+=2;
      count2++;
    }
    savedTime=millis();
    println(savedTime);
    println(count);
    println("count"+count2);
  }
    }
   
  
   
  
 void playerDraw() { 
  fill(74, 226, 87); 
  rect(xpos, ypos, 20, 20);
}
 
void playerMove() {
 
 
  float speed =-12.0 ; 
  for(int i=0;i<recta.length;i++){
    if(xpos+20>recta[i].x&&xpos<recta[i].x+100&&ypos+20>recta[i].y&&ypos<recta[i].y+60){
    ypos=100000000;
    o.display();
    score="     Game Over \nYou got a score of:"+Integer.toString(count2);
    
  }
  }
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
  if(ypos==500)
    ypos=500;
   
  else
    ypos=ypos+5;

 

 
  
}

    
