class snake{
  int snakesize=4,scl=20,angle=0,score=0;
  float xspeed=1,yspeed=0;
  int[] headx= new int[2500];
  int[] heady= new int[2500];
  snake(int xpos,int ypos){
  headx[1] = xpos;
  heady[1] = ypos;
  }
  void drawsnake(){
   noStroke();
   fill(snake);
   rect(headx[1],heady[1],scl,scl,5);
   fill(eye);
   ellipse(headx[1]+15,heady[1]+5,10,10);
   ellipse(headx[1]+15,heady[1]+15,10,10);
   
   if(wallorthru==false)
    thru();
   
   for(int i=1;i<snakesize;i++){
   fill(snake);
   rect(headx[i+1],heady[i+1],scl,scl); 
   }  
  }
  void update(){
  for(int i=snakesize;i>=1;i--)
  {
    if (i>1)
    {
      //shift 
      headx[i]=headx[i-1];
      heady[i]=heady[i-1];
    }
    
  }
 headx[1]+=xspeed*scl;
 heady[1]+=yspeed*scl;
   s1.checkdead();
   s1.eat();
 }
  void control(){
  if(keyCode==UP&&angle!=270){
    angle=90;
    xspeed=0;
    yspeed=-1;
   }
  if(keyCode==DOWN&&angle!=90){
   angle=270;
   yspeed=1;
   xspeed=0;
   }
  if(keyCode==RIGHT&&angle!=180){
   angle=0;
   yspeed=0;
   xspeed=1;
    }
   if(keyCode==LEFT&&angle!=0){
   angle=180;
   yspeed=0;
   xspeed=-1;
    }
  }
  void eat(){
    float d =dist(headx[1],heady[1],food.x,food.y);
    println(d);
     if(d>=1&&d<=30){
       snakesize+=2;
       score++;
        f1.location();
        f1.randomfood();
        f1.drawfood();        
     }
  }
  void checkdead(){
     for(int i=2;i<=snakesize;i++)
     if(headx[1]==headx[i]&&heady[1]==heady[i]){
      fill(text);
      text("PREES ENTER TO PLAY AGAIN", 150,400);
      noLoop();
     }
  }
  void thru(){
    if(headx[1]>=width)
     headx[1]=1;
    if(heady[1]>=height)
     heady[1]=1;
   if(headx[1]<=0)
     headx[1]=width;
    if(heady[1]<=0)
     heady[1]=height;
  }
  void wall(){
    fill(0);
    rect(0,0,5,height);
    rect(0,0,width,5);
    rect(695,0,5,height);
    rect(0,695,width,5);
    if(headx[1]<=5||heady[1]<=5||headx[1]>=695||heady[1]>=695){
      fill(text);
      text("PREES ENTER TO PLAY AGAIN", 150,400);
      noLoop();
    }
     }
  
  void setzero(){
     snakesize=4;
     xspeed=1;
     yspeed=0;
     angle=0;
  }
  void score(){
      textSize(32);
      text("score:"+  score, 10,30);
  }
}