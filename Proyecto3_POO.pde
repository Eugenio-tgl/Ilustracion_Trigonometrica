PFont fuente;
Flujo p;
ArrayList <Agentes> Agentes;

int clave = 0, col;

void setup(){
  
  size(1200, 800);
  
  Agentes = new ArrayList<Agentes>();
  background(255);
  
  fuente = loadFont("Coli48.vlw");
  p = new Flujo();
  noStroke();
}

void draw(){
  p.PantallaActual();
  
  
}
void keyPressed(){
  switch(key){
   case '1':
   clave = 1;
   break;
   
   case '2':
   clave = 2;
   break;
   
   case '3':
   clave = 3;
   break;
   
   case '4':
   clave = 4;
   break;
   
   case 'q':
   for(Agentes a:Agentes)
     if(a.tipo() == 1)
     a.borrar();
   break;
   
   case 'w':
   for(Agentes a:Agentes)
   if(a.tipo() == 2)
    a.borrar();
   break;
   
   case 'e':
   for(Agentes a:Agentes)
   if(a.tipo() == 3)
    a.borrar();
   break;
   
   case 'r':
   for(Agentes a:Agentes)
   if(a.tipo() == 4)
    a.borrar();
   break;
   
   case 'p':
   for(Agentes a:Agentes)
    a.borrar();
   break;
   
   case 'n':
   for(Agentes a:Agentes)
    a.borrar();
   background (255);
   break;
   
   case '0':
   exit();
   break;
   
   case 's':
   saveFrame();
   
   break;
   
   default:
   break;
  }
}

void mousePressed(){
  col = round(random(255));
  
 switch(clave){
   case 1:
   Agentes.add(new Cos (mouseX, mouseY, 5, col));
   break;
   
   case 2:
   Agentes.add(new Tan (mouseX, mouseY, 5, col));
   break;
   
   case 3:
   Agentes.add(new Log (mouseX, mouseY, 5, col));
   break;
   
   case 4:
   Agentes.add(new Ran (mouseX, mouseY, 5, col));
   break;
   
   default:
   break;
  }
}
  
