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
int x4=700;
int y4=250;
float speed4=-5;
int x5=700;
int y5=100;
int x6=700;
int y6=350;
int x7=700;
int y7=100;
int x8=700;
int y8=200;
int x9=700;
int y9=400;
int x10=700;
int y10=100;
int x11=700;
int y11=200;
int x12=700;
int y12=400;
int x13=700;
int y13=150;
int x14=700;
int y14=350;
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
    if(x2<0){
      rect(x4,y4,1200,20);
      speed+=velocity;
      x4+=speed;
      if(x4<-840){
        rect(x5,y5,100,50);
        speed+=velocity;
        x5+=speed2;
        rect(x6,y6,100,50);
        speed+=velocity;
        x6+=speed2;
        if(x6<-200){
          rect(x7, y7, 100, 50);
          speed+=velocity;
          x7+=speed;
          if(x7<100){
            rect(x8,y8,100,50);
            speed2+=velocity;
            x8+=speed2;
            rect(x9,y9,100,50);
            speed3+=velocity;
            x9+=speed3;
           }
           if(x9<0){
            rect(x10, y10, 100, 50);
            speed+=velocity;
            x10+=speed;
            if(x10<100){
              rect(x11,y11,100,50);
              speed2+=velocity;
              x11+=speed2;
              rect(x12,y12,100,50);
              speed3+=velocity;
              x12+=speed3;
              if(x12<0){
                rect(x13,y13,1200,20);
                speed+=velocity;
                x13+=speed;
                rect(x14,y14,1200,20);
                speed+=velocity;
                x14+=speed;
             }
      }
        }
      }
      
    }
  }


}
}



  
  
  
}
