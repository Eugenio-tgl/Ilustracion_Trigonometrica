class Tan extends Cos{
 
 Tan(float x_, float y_, float r_, int col1_){
  super(x_,y_,r_,col1_);
  
  if(col1 < 130) des = true;
 }
 
 void mover(){
   if(des) x += 0.5;
   else x -= 0.5;
   
   t+= 0.005;
   
   if(col1 == 255 || col1 == 0)
   cont *= (-1);
   
   col1 += cont;
 
 }
 
 void display(){
   
   if(display){
     fill(col1, 0, 0);
     ellipse(x, y + tan(t)*100, r, r);
   }
 }
 
 void borrar(){
   display = false;
 }
 
 int tipo(){
  
  return 2;
 }
  
}
