public class Ben{
    int x=100;
int y=330;
float speed=-10;
float velocity=0;





void draw() {
fill(11,26,6);
  rect(x, y, 20, 20);

 
  
  
  
  if(keyCode==UP){
  
  speed+=velocity;
  y+=speed;
  if(y<200){
    speed=speed*-1;
  }
  if(y==330){
    speed=0;
  }
  
  
  }
 keyReleased();
 if(key==UP){
 key=0;
 } 
 if(keyCode==UP){
  
  speed+=velocity;
  y+=speed;
  if(y<200){
    speed=speed*-1;
  }
  if(y==330){
    speed=0;
  }
  
  
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
