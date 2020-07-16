class food{
  int scl=20;
 food(){
 }
 void location(){
 int cols = floor(width/scl);
 int row = floor(height/scl);
  food =new PVector (int(floor(random(1,cols))),int(floor(random(1,row))));
 food.mult(scl);
 }
 void randomfood(){
   random = int(random(1,10));
 }
 void drawfood(){ 
   switch(random){
     case 1 : image(food1,food.x,food.y);
     break;
     case 2 : image(food2,food.x,food.y);
     break;
     case 3 : image(food3,food.x,food.y);
     break;
     case 4 : image(food4,food.x,food.y);
     break;
     case 5 : image(food5,food.x,food.y);
     break;
     case 6 : image(food6,food.x,food.y);
     break;
     case 7 : image(food7,food.x,food.y);
     break;
     case 8 : image(food8,food.x,food.y);
     break;
     case 9 : image(food9,food.x,food.y);
     break;
     case 10 : image(food10,food.x,food.y);
     break;
     default: break;
   }
 }

}