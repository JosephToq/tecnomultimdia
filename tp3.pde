// Youtube = https://youtu.be/FAL7bBzuA-c
// Joseph Ateven Toquica Gonzalez 91411/7

PImage [] imagenes = new PImage [28];
String [] lTexto;
int imagenActual = 0;
PFont fuente;

void setup(){
  size(600, 600);
  //Ciclo for para recorrer las imagenes del arreglo
   for (int i = 0 ; i < 28; i++) {
    int index = i + 1;
    imagenes[i] = loadImage(index +".jpg");
    
  //Cargar la fuente para los textos
  fuente=loadFont("fuente.vlw");
  textFont(fuente);
  textLeading(10);
    
  }
  textSize(30);
}

void draw(){
 
  background(200);
  
 
  //usamos la variable imagenActual para guardar
  image(imagenes[imagenActual], 0, 0, 600, 400);
  
  //Realizamos la com,paracion de lo que se debe mostrar dependiendo de la pantalla en la que estemos.
  if(imagenActual == 0 ){
    
    fondoText();
    opciones("Iniciar","Creditos");
    fill(250,0,0);
    textSize(100);
    text("DRACULA",40,500);
    
    
      
      
    }else if (imagenActual == 27){
    
      textSize(20);
      fill(250,0,0);
      lTexto = loadStrings("textos.txt");
      for (int i = 0; i < lTexto.length; i++) {
      text(lTexto[i], 100, i * 50 + 100);
      }
      
         
      fondoText();
      botreinicio();
    
    }else if (imagenActual == 1){
      
      fondoText();
      botnext();
      textpantalla("En algún lugar de Transilvania.");
    }else if (imagenActual == 2){
      
      fondoText();
      botnext();
      textpantalla("Yace Drácula el monstruo, durmiendo en su ataúd y aguardando a que caiga la noche.");
    }else if (imagenActual == 3){
      
      fondoText();
      opciones("Seguir durmiendo","Despertarse");
      textpantalla("Se oscurece la luz del sol, el conde despierta, pero aún tiene algo de sueño.");
    }else if (imagenActual == 4){
      
      fondoText();
      botnext();
      textpantalla("El conde llega  a la casa del panadero.");
    }else if (imagenActual == 5){
      
      fondoText();
      botnext();
      textpantalla("Donde había acordado una cena con el panadero, el conde toca la puerta.");
    }else if (imagenActual == 6){
      
      fondoText();
      botnext();
      textpantalla("El panadero se sorprende al verlo y le dice que la cena era en unas siete horas.");
    }else if (imagenActual == 7){
      
      fondoText();
      botnext();
      textSize(30);
      textpantallaS("El panadero le comento que, si vino antes para ver el eclipse total de sol, el cual está empezando justo ahora.");
    }else if (imagenActual == 8){
      
      fondoText();
      botnext();
      textpantalla("Drácula se pone nervioso y le dice al panadero que debe irse urgente que tiene otro compromiso.");
    }else if (imagenActual == 9){
      
      fondoText();
      opciones("Matar al panadero","Esconderse");
      textpantallaS("Mientras el conde le da excusas al panadero para poder irse el eclipse  está terminando.");
    }else if (imagenActual == 10){
      
      fondoText();
      botnext();
      textpantalla("Drácula intenta ocultarse en un armario que tenía el panadero.");
    }else if (imagenActual == 11){
      
      fondoText();
      opciones("La deja cerrada","Abrir la puerta");
      textpantalla("El panadero se ríe y...");
    }else if (imagenActual == 12){
      
      fondoText();
      botreinicio();
      textpantallaS("El conde Drácula muere rápidamente al recibir el rayo de luz y se hace polvo frente  a los ojos del panadero.");
    }else if (imagenActual == 20){
      
      fondoText();
      botnext();
      textpantalla("El conde se queda durmiendo tranquilamente en su ataúd, ya que se sentía casado.");
    }else if (imagenActual == 21){
      
      fondoText();
      botnext();
      textpantalla("El conde se despierta para asistir a una importante reunión con el panadero.");
    }else if (imagenActual == 22){
      
      fondoText();
      botnext();
      textpantallaS("El conde Drácula se reúne en la casa del panadero para una cena que había programado, el panadero lo saluda alegremente y lo hace pasar.");
    }else if (imagenActual == 23){
      
      fondoText();
      botnext();
      textpantalla("Cenan felizmente, y cantan y beben, hasta que el conde cae dormido en la mesa.");
    }else if (imagenActual == 24){
      
      fondoText();
      botnext();
      textpantallaS("El conde se despierta a medio día al intentar salir ve la luz del sol y solo le queda esconderse hasta que la noche llegue nuevamente.");
    }else if (imagenActual == 25){
      
      fondoText();
      botnext();
      textpantalla("El panadero se despierta y se percata que el conde ya no esta y abre su panadería");
    }else if (imagenActual == 26){
      
      fondoText();
      botreinicio();
      textpantallaS("Cae la noche y Drácula sale de su escondite, sale cautelosamente sin que nadie lo vea y se va tranquilamente a su castillo.");
    }else if (imagenActual == 13){
      
      fondoText();
      botnext();
      textpantalla("El conde Drácula termina con la vida del panadero y sale huyendo rápidamente.");
    }else if (imagenActual == 14){
      
      fondoText();
      botnext();
      textpantalla("Corre mientras hay un poco de oscuridad hasta su castillo.");
    }else if (imagenActual == 15){
      
      fondoText();
      botreinicio();
      textpantalla("Al llegar a su castillo se encierra y se pone triste de haber terminado con la vida de único amigo.");
    }else if (imagenActual == 16){
      
      fondoText();
      botnext();
      textpantalla("El panadero deja tranquilo al conde escondido en el armario y ve el eclipse.");
    }else if (imagenActual == 17){
      
      fondoText();
      botnext();
      textpantalla("La esposa del panadero llega a la tienda y abre el armario sin saber que el conde estaba ahí.");
    }else if (imagenActual == 18){
      
      fondoText();
      botnext();
      textpantallaS("Sale un murciélago volando rápidamente del armario y se esconde en el techo, el panadero se sorprende  al no ver al conde.");
    }else if (imagenActual == 19){
      
      fondoText();
      botreinicio();
      textpantalla("Drácula se va a su castillo al caer la noche, pensando que ahora debe informarse más de los eclipses."); 

    }
}
//Usamos el evento mouseClicked para canviar de pantallas con la funcion de boton
void mouseClicked(){
        if(imagenActual == 0 && hiceClickenElBotonI()){
        
         imagenActual = 1;
        
      }else if(imagenActual == 0 && hiceClickenElBotonD()){
    
        imagenActual = 27;
        
      }else if(imagenActual == 1 && hiceClickenElBotonD()){
           
           imagenActual = 2;
 
     }else if(imagenActual == 2 && hiceClickenElBotonD()){
           
           imagenActual = 3;
           
     }else if(imagenActual == 3 && hiceClickenElBotonD()){
           
           imagenActual = 4;
           
     }else if(imagenActual == 3 && hiceClickenElBotonI()){
           
           imagenActual = 20;
     }else if(imagenActual == 4 && hiceClickenElBotonD()){
           
           imagenActual = 5;
     }else if(imagenActual == 5 && hiceClickenElBotonD()){
           
           imagenActual = 6;
     }else if(imagenActual == 6 && hiceClickenElBotonD()){
           
           imagenActual = 7;
     }else if(imagenActual == 7 && hiceClickenElBotonD()){
           
           imagenActual = 8;
     }else if(imagenActual == 8 && hiceClickenElBotonD()){
           
           imagenActual = 9;
     }else if(imagenActual == 9 && hiceClickenElBotonD()){
           
           imagenActual = 10;
     }else if(imagenActual == 9 && hiceClickenElBotonI()){
           
           imagenActual = 13;
     }else if(imagenActual == 10 && hiceClickenElBotonD()){
           
           imagenActual = 11;
     }else if(imagenActual == 11 && hiceClickenElBotonD()){
           
           imagenActual = 12;
     }else if(imagenActual == 11 && hiceClickenElBotonI()){
           
           imagenActual = 16;
     }else if(imagenActual == 12 && hiceClickenElBotonD()){
           
           imagenActual = 0;
     }else if(imagenActual == 20 && hiceClickenElBotonD()){
           
           imagenActual = 21;
     }else if(imagenActual == 21 && hiceClickenElBotonD()){
           
           imagenActual = 22;
     }else if(imagenActual == 22 && hiceClickenElBotonD()){
           
           imagenActual = 23;
     }else if(imagenActual == 23 && hiceClickenElBotonD()){
           
           imagenActual = 24;
     }else if(imagenActual == 24 && hiceClickenElBotonD()){
           
           imagenActual = 25;
     }else if(imagenActual == 25 && hiceClickenElBotonD()){
           
           imagenActual = 26;
     }else if(imagenActual == 26 && hiceClickenElBotonD()){
           
           imagenActual = 0;
     }else if(imagenActual == 13 && hiceClickenElBotonD()){
           
           imagenActual = 14;
     }else if(imagenActual == 14 && hiceClickenElBotonD()){
           
           imagenActual = 15;
     }else if(imagenActual == 15 && hiceClickenElBotonD()){
           
           imagenActual = 0;
     }else if(imagenActual == 16 && hiceClickenElBotonD()){
           
           imagenActual = 17;
     }else if(imagenActual == 17 && hiceClickenElBotonD()){
           
           imagenActual = 18;
     }else if(imagenActual == 18 && hiceClickenElBotonD()){
           
           imagenActual = 19;
     }else if(imagenActual == 19 && hiceClickenElBotonD()){
           
           imagenActual = 0;
     }else if(imagenActual == 27 && hiceClickenElBotonD()){
           
           imagenActual = 0;
     }
}
