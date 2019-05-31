boolean holdLeft = false, holdRight = false;
 
void setSignal (boolean setTo) { 
  if (keyCode == LEFT) { 
    holdLeft = setTo;
  } 
  if (keyCode == RIGHT) { 
    holdRight = setTo;
  }
}
 
void keyPressed() { 
  setSignal(true);
}
 
void keyReleased() { 
  setSignal(false);
 
    if (keyCode == UP) { 
    ypos=ypos-15;
    //if (ypos > 400) { 
    //  ypos -=20;
    //} else {
    //  ypos+=20;
    //}
  }
}
