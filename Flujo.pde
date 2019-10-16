class Flujo{
  
  int pantalla = 1;
  
  void PantallaActual(){
  switch (pantalla){
    case 1:
    Pantalla_Inicio();
    break;
    
    case 2:
    Pantalla_Instrucciones();
    break;
    
    case 3:
    Pantalla_Juego();
    break;
  }
  }
  
  void Pantalla_Inicio(){
    
    background(0);
    
    textSize(30);
    textAlign(CENTER, CENTER);
    textFont(fuente);
    
    text("Ilustración trigonometrica", 600, 200);
    text("Presione '1' para continuar", 600, 400);
    
    if (keyPressed)
    if(key == '1')
    pantalla++;
    
  }
  
  void Pantalla_Instrucciones(){
    
    background(0);
    textSize(30);
    textAlign(CENTER, CENTER);
    textFont(fuente);
    text("-Instrucciones-", 600, 100);
    
    textSize(20);
    text("Este programa permite crear 4 agentes que se mueven de manera diversa", 600, 150);
    text("Para seleccionar el agente que quiere crear presione un numero del '1' al '4'", 600, 200);
    text("Una vez seleccionado haga un click izquierdo sobre la pantalla", 600, 240);
    text("Puede crear tantos agentes como guste", 600, 280);
    text("Para detener los agentes 1 presione 'q' ", 600, 320);
    text("Para detener los agentes 2 presione 'w' ", 600, 340);
    text("Para detener los agentes 3 presione 'e' ", 600, 360);
    text("Para detener los agentes 4 presione 'r' ", 600, 380);
    text("Para detener TODOS los agentes presione 'p' ", 600, 400);
    text("Si desea guardar la ilustración creada presione 's'", 600, 450);
    text("Para iniciar con un nuevo lienzo presione 'n'", 600, 480);
    text("Cuando desee salir del programa presione '0' ", 600, 530);
    
 
    text("Presione '2' para continuar.", 600, 590);
    
    if (keyPressed)
    if(key == '2')
    {
      background(255);
      pantalla++;
    }
  }
  
  void Pantalla_Juego(){
      for(Agentes a:Agentes){
      a.display();
      a.mover();
      }   
  }
}
