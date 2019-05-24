public class back{
  public back(){
  }
  public void display(){
  fill(0);
  rect(0,475,700,700);
  rect(0,0,700,25);
  }
  public void pit(){
    
  }
int x=700;
int y=100;
float speed=-10;
float velocity=0;
int x2=700;
int y2=200;
float speed2=-20;
int x3=700;
int y3=400;
float speed3=-40;





void draw() {
fill(11,26,6);
  rect(x, y, 100, 50);
  speed+=velocity;
  x+=speed;
  if(x<100){
    rect(x2,y2,100,50);
    speed2+=velocity;
    x2+=speed2;
    rect(x3,y3,100,50);
    speed3+=velocity;
    x3+=speed3;
  }


}

void mousePressed() {
  speed-=20;
}

void keyPressed() {
  if(keyCode==UP){
     speed-=20;
  }
}

  
  
  
  
  
}
