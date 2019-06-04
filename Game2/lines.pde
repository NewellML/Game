public class linez{
  int y=(int)(Math.random()*410)+15;
  int a=(int)(Math.random()*410)+15;
    int z;
    int x=700;
    float speed=-10;
    float velocity;
     public void Rect(int v){    
    fill(11,26,6);
    rect(x,z,1200,20);
    velocity=v;
    speed+=velocity;
    x+=speed;
    System.out.println("guy");
  }
  void drawrect(){
    fill(11,26,6);
   rect(x,y,700,20);
speed+=velocity;
x+=speed;
rect(x,a,700,20);
speed+=velocity;
x+=speed;
  }
}
