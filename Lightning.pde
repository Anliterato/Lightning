int startX = 1;
int startY = 0;
int endX = 0;
int endY = 0;
int begin = 0;

void setup(){
  size(750,750);
  strokeWeight(5);
  background(152, 166, 167);
}

void draw()
{
  if (begin == 1){
    fill(152, 166, 167, 25);
    rect(0,0,750,750);
    stroke(255, 255, 0);
    while (endY <= 700){
      endX = startX + (int)(Math.random() * 19) - 9;
      endY = startY + (int)(Math.random() * 10);
      line(startX, startY, endX ,endY);
      startX = endX;
      startY = endY;
      
      //small explosion
      if (endY > 690){
        fill(255,255,0);
        noStroke();
        ellipse(endX,endY,25,25);
      }
    }
    //in case it goes off screen
    if (startX < 0){
      startX = 1;
    } else if(startX > 750){
      startX = 749;
    }
    
    //moving lightning system
    startX = startX + (int)(Math.random()*3) - 1;
    startY = 0;
    endX = 0;
    endY = 0;
  }
  
  noStroke();
  
  //grass
  fill(0,200,0);
  rect(0,700,750,50);
  
  //clouds
  fill(169,169,169);
  for(int cloudDraw = 0; cloudDraw <= 750; cloudDraw = cloudDraw + 100)
    ellipse(cloudDraw,25,200,200);
    
  }
  
void mousePressed(){
  begin = 1;
}
