import processing.video.*;
Movie video;
PFont font;
snake s1 ;
food f1;
boolean play= false,wallorthru=false,checkclick=false,phase1=true,phase2=false;
PVector food =new PVector(random(20,width),random(20,height));
PImage photo,food1,food2,food3,food4,food5,food6,food7,food8,food9,food10;
color bg,text,snake,eye;
int random;
void setup(){
frameRate(10);
size(700,700);
font = loadFont("8-Bit-Madness-48.vlw");
textFont(font,48);
photo = loadImage("SPACE menu select.jpg");
foodsetting();
s1 = new snake(int(random(300,600)),int(random(300,600)));
f1 = new food();
f1.randomfood();
f1.location();
 video =new Movie(this,"video-1525679172.mp4");
 video.loop();
}
void draw(){
 image(video,0,0);
if(phase2==true)
image(photo, 0, 0);
if(bg==color(0,0,51)||(bg==color(255,204,153))||(bg==color(228,241,254)))
if((wallorthru==true)||(wallorthru==false))
if(checkclick==true)
play=true;
if(play==true)
playing();

}
void keyPressed(){
    s1.control();
    if(keyCode==ENTER)
     restart();
    if(keyCode==SHIFT){
     phase1=false;
     phase2=true;
    }
}
void mouseClicked() {
  if(phase2==true&&play==false){
  if((mouseX>=208&&mouseX<=508)&&(mouseY>=92.5&&mouseY<=167.5)){
   bg =  color(0,0,51);
   text = color(255,68,223);
   snake = color(255,255,51);
   eye = color(0,0,51);
   println("space");
 }//space
  if((mouseX>=208&&mouseX<=508)&&(mouseY>=262.5&&mouseY<=337.5)){
  
   bg =  color(255,204,153);
   text = color(144,101,56);
   snake = color(#EA7E33);
   eye = color(0);
    println("desert");
  }//desert
    
   if((mouseX>=208&&mouseX<=508)&&(mouseY>=444.2&&mouseY<=519.5)){ 
   bg =   color(228,241,254);
   text = color(1,50,67);
   snake =  color(68,108,179);
   eye = color(1,50,67);
    println("ice");
   }//ice
 
  if((mouseX>=208&&mouseX<=295.5)&&(mouseY>=619.5&&mouseY<=676.5))
  {
    println("wall");
    wallorthru=true;
    checkclick=true;
  }
  if((mouseX>=411.5&&mouseX<=468.5)&&(mouseY>=619.5&&mouseY<=676.5))
  {
    println(" no wall");
    wallorthru=false;
    checkclick=true;
  }
  }
}
void restart(){
    s1 = new snake(int(random(300,600)),int(random(300,600)));
    s1.setzero();
    f1.randomfood();
    f1.location();
     loop();
  }
void playing(){

   background(bg);
   if(wallorthru==true)
   s1.wall();
   s1.update();
   s1.drawsnake();
   f1.drawfood();
   s1.score();
}

void movieEvent(Movie video){
  video.read();
}
void foodsetting(){
  food1 = loadImage("food1.png");
  food2 = loadImage("food2.png");
  food3 = loadImage("food3.png");
  food4 = loadImage("food4.png");
  food5 = loadImage("food5.png");
  food6 = loadImage("food6.png");
  food7 = loadImage("food7.png");
  food8 = loadImage("food8.png");
  food9 = loadImage("food9.png");
  food10 = loadImage("food10.png");
}