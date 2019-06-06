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
linez[] lines = new linez[1000];
double[] bb=new double[20000];
Rect r;
linez l;
Over o;
PImage img;
start sb;
boolean page=false;
  void setup(){
    size(700,500);
    sb=new start();
   
    for(int x = 0; x<recta.length; x++ ){
      recta[x] = new Rect();
      lines[x]=new linez();
      bb[x]=Math.random()*49+1;
    }
    img=loadImage("bus.png");
    r=new Rect();
    l=new linez();
    o=new Over();
   
    
  }
  
  void draw(){
    if(page==false){
      sb.display();
    }
    if(holdLeft){
      page=true;
    }
    if(page==true){
    background(150,150,200);
  
    
    fill(0);
    rect(0,475,700,700);
    rect(0,0,700,25);
    playerDraw();
    playerMove();
    rects();
    }
    
  }
  void rects(){
    
    int passedTime=(millis()-savedTime);
    if (chg==false) {
      pushMatrix();
      if(bb[count]<10){
        lines[count].drawrect();
      }
      else{
        recta[count].drawrect();
      }
      popMatrix();
      
  
    
    
   
   
  } else {
    pushMatrix();
    if(bb[count]<10){
        lines[count+1].drawrect();
      }
      else{
        recta[count+1].drawrect();
      }
    
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
  image(img,xpos-32,ypos-40,90,90);
}
 
void playerMove() {
 
 
  float speed =-12.0 ; 
  for(int i=0;i<recta.length;i++){
    if(xpos+20>recta[i].x&&xpos<recta[i].x+100&&ypos+20>recta[i].y&&ypos<recta[i].y+60){
    ypos=100000000;
    o.display();
    score="     Game Over \nYou got a score of:"+Integer.toString(count2);
    
  }
  if(xpos+20>lines[i].x&&xpos<lines[i].x+700&&ypos+20>lines[i].y&&ypos<lines[i].y+20){
    ypos=100000000;
    o.display();
    score="     Game Over \nYou got a score of:"+Integer.toString(count2);
    
  }
  if(xpos+20>lines[i].x&&xpos<lines[i].x+700&&ypos+20>lines[i].a&&ypos<lines[i].a+20){
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

    
