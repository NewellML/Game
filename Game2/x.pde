public class Rect{
    int y=(int)(Math.random()*410)+15;
    int z;
    int x=700;
    float speed=-23;
    float velocity;
  
  public void Rect(int v){    
    fill(11,26,6);
    rect(x,z,50,100);
    velocity=v;
    speed+=velocity;
    x+=speed;
    System.out.println("guy");
  }
  
  void drawrect(){
    fill(11,26,6);
   rect(x,y,100,60);
   speed+=velocity;
    x+=speed;
  }
}
