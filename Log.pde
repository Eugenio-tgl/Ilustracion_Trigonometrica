class Log implements Agentes{
 float x, y, r;
 float t = 0;
 boolean display = true, des = false;
 int cont = 1, col1;
 
 Log(float x_, float y_, float r_, int col1_){
  this.x = x_;
  this.y = y_;
  this.r = r_;
  this.col1 = col1_;
  if(col1 < 130) des = true;
 }
 
 
 void mover(){
   if(des) x += 0.5;
   else x -= 0.5;
   t+= 0.05;
   
   if(col1 == 255 || col1 == 0)
   cont *= (-1);
   
   col1 += cont;
 }
 
 void display(){
   if(display){
     fill(0, 100, 0);
     ellipse(x, y + log(t)*100, r, r);
   }
 }
 
 void borrar(){
   display = false;
 }
 
 int tipo(){
  
  return 3;
 }
  
}
