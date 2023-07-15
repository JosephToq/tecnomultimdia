//funcion para fondo de lso textos
void fondoText(){
  rectMode(CORNER);
  fill(0);
  rect(0,400,600,200);
  
}

//funciones que compara si el mouse enta en la posicion del mouse con el boton usando la funcion dist y retorna valor true si se cumple la comparacion
Boolean hiceClickenElBotonD(){

  if(dist(mouseX, mouseX,480,480)<145 && dist(mouseY,mouseY,570,570)<38){   
    return true; 
  }
  return false; 
}

Boolean hiceClickenElBotonI(){

  if(dist(mouseX, mouseX,120,120)<145 && dist(mouseY,mouseY,570,570)<38 ){   
    return true; 
  }
  return false; 
}

//funcion para dibujar el boton de reinicio
void botreinicio(){

  rectMode(CENTER);
  fill(250);
  rect(480,570,200,40);
  fill(0);
  textSize(20);
  text("Reiniciar",385,580);

}
//funcion para dibujar el boton de siguiente
void botnext(){
  
  rectMode(CENTER);
  fill(250);
  rect(480,570,200,40);
  fill(0);
  textSize(20);
  text("Siguiente",385,580);

}

//funcion para crear las deciciones a tomar
void opciones(String b1,String b2){
  
  rectMode(CENTER);
  fill(250);
  rect(120,570,200,40);
  rect(480,570,200,40);
  
  fill(0);
  textSize(20);
  text(b1,25,580);
  text(b2,385,580);

}


//funcion para escibir la historia
void textpantalla(String t){
   
   textSize(40);
   fill(250,0,0);
   text(t,300,510,560,200);
  
}

//funcion para escribir la historia, el texto mas pequeno
void textpantallaS(String t){

  
   textSize(33);
   fill(250,0,0);
   text(t,300,510,560,200);
  
}
