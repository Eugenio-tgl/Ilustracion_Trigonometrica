class Ran implements Agentes{
 float x, y, r;
 float t = 0;
 int tipo = round(random(1,3));
 color col;
 boolean display = true, des = false;
 int cont1 = 1, cont2 = 1, cont3 = -1;
 int col1, col2, col3;
 
 Ran(float x_, float y_, float r_, int col1_){
  this.x = x_;
  this.y = y_;
  this.r = r_;
  this.col1 = col1_;
  col2 = round(random(255));
  col3 = col2/2;
  col = color (col1, col2, col3);
  if(col1 < 130) des = true;
 }
 
 
 void mover(){
   if(des) x += 0.5;
   else x -= 0.5;
   t+= 0.03;
   
   if(col1 == 255 || col1 == 0)
   cont1 *= (-1);
   
   if(col2 > 249 || col2 < 5)
   cont2 *= (-1);
   
   if(col3 > 249 || col3 < 5)
   cont3 *= (-1);
   
   col1 += cont1;
   col2 += cont2;
   col3 += cont3;
 }
 
 void display(){
   if(display){
     fill(col);
     switch(tipo){
     
     case 1:
     ellipse(x, y + cos(t)*200, r, r);
     
     case 2:
     ellipse(x, y + tan(t)*100, r, r);
     
     case 3:
     ellipse(x, y + log(t)*100, r, r);
     
     }
   }
 }
 
 void borrar(){
   display = false;
 }
 
 int tipo(){
  
  return 4;
 }
  
}
