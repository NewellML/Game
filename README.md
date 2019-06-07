# Our project is a game called Magic School Bus Journey and it is meant to be a fun infinietly generated runner game in 
which you attempt to obtain a high score. Our game starts with an opening screen that instructs you to press shift to begin and
use the shift button to move your character around different obstacles. There are two different types of obstacles which are 
randomly generated and put into an array. We intended to create a relatively difficult game in which the high scores would be 
low. After encountering an obstacle the game ends and your score is displayed.

The toughest part was getting the jump code to work. Our main issue with this was that after pressing the button to have the
character move up the character would continue moving up forever. This was due to some difficulties with the functionality of 
keyCode in processing but eventually we figured it out.


Below is the most interesting code piece from our project. It is the method that creates our obstacles every few seconds. 
This code piece randomly chooses one of the arrays based on a random value every few seconds. Then it creates the obstacle
out of the array that it chose. It also keeps a running count of the amount of obstacles the player has succesfully passed.
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
    
    Built with Processing(https://processing.org/)
    
    Authors
    computer science shared code repository
    
    Inspiration from Jetpack joyride and geometry dash
    Thank you to the magic school bus show for allowing us to use their images
