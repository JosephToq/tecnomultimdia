//Joseph Steven Toquica Gonzalez, Legajo 91411/7
//tp3
//Link video: https: https://youtu.be/l2PEr_cFOSw

//arreglo para los creditos
String [] creditos = {"Cuatro en raya","Juego creado por","Joseph Toquica","Preciona N para continuar"};
int estado;
//Variables
int tablero = 5;
int tamano;
int turno;
PFont fuente;
int puntos;
int puntos2;
boolean victoria = true;
int inicio= 1;

//Creamos el arreglo para la combinación de cada jugador
boolean [][] player1 = new boolean [tablero][tablero];
boolean [][] player2 = new boolean [tablero][tablero];

void setup(){
  size (500,500);
  
  //Textos del juego
  fuente = loadFont("AgencyFB-Bold-100.vlw");
  textFont(fuente);
  
  //tamaño de los circulos
  tamano = width/11;
  
  for (int i=0; i<tablero; i++) {
    for (int j=0; j<tablero; j++) {
      player1[i][j] = false;
      player2[i][j] = false;
    }
  }
}

void draw(){
  //Creditos
  if (estado==0) {
    background(2,29,137);
    pantallas(creditos[0], width/2, 200, 60 );
    pantallas(creditos[3], width/2, 480, 25 );
  } else if (estado==1) {
    background(2,29,137);
    pantallas(creditos[1], width/2, 200, 60 );
    pantallas(creditos[2], width/2, 300, 40 );
    pantallas(creditos[3], width/2, 480, 25 );
    //Empieza el juego
  } else if(inicio==1) {
    
  //Fondo azul
  fill(0,0,255);
  noStroke();
  rect(200,0,300,500);
  
  //Fondo amarillo
  fill(255,251,91);
  rect(0,0,200,500);
  
  //Cuadrado 4 en raya
  fill(255);
  rect(250,20,200,90,20);
  
  //titulo puntaje
  fill(255);
  rect(10,20,180,40);
  fill(0);
  text("PUNTAJE",105,53);
  
  //puntaje jugador 1
  fill(0);
  textSize(25);
  text("Jugador 1 = "+ puntos,85,100);
  
  //puntaje jugador 2
  fill(0);
  textSize(25);
  text("Jugador 2 = "+ puntos2,85,130);
  
  //Titulo reglas
  fill(255);
  rect(10,160,180,40);
  fill(0);
  text("REGLAS",105,194);
  
  //Reglas del juego
  fill(0);
  textSize(19);
  text("Los jugadores deben turnarse \n\npara colocar un circulo de su \n\ncolor en el tablero, el primero \n\nen conseguir una línea de 4 \n\nvertical, horizontal o diagonal \n\ncon su color gana.",100,230);
  
  //Creamos el tablero de jueg, en este caso va a ser un tablero de circulos de 5*5
  for(int i=0;i<tablero;i++){
    for(int j=0; j<tablero;j++){
    strokeWeight(3);
    stroke(0);
    fill(255);
    ellipse(i*tamano+260,j*tamano+150,tamano,tamano);
    
    //Usamos la funciíon creada para las fichas de juego en este caso la ficha roja, depndiendo la posición en el tablero se dibuja una ficha roja
      if(player1[i][j]){
        rojo(i*tamano+238+tamano/2,j*tamano+128+tamano/2,tamano/2,tamano/2);
      }
    //Usamos la funcion creada para las fichas de juego en este caso la ficha amarilla, dependiendo la posición en el tablero se dibuja una ficha amarilla
      if(player2[i][j]){
        amarillo(i*tamano+238+tamano/2,j*tamano+128+tamano/2,tamano/2,tamano/2);
      }
      //posibles combinaciones verticales, horizontales y diagonales para que gane el jugador uno
      if(
      //Horizontales
         player1[0][0] && player1[1][0] && player1 [2][0] && player1 [3][0] || 
         player1[1][0] && player1[2][0] && player1 [3][0] && player1 [4][0] ||
         player1[0][1] && player1[1][1] && player1 [2][1] && player1 [3][1] ||
         player1[1][1] && player1[2][1] && player1 [3][1] && player1 [4][1] ||
         player1[0][2] && player1[1][2] && player1 [2][2] && player1 [3][2] ||
         player1[1][2] && player1[2][2] && player1 [3][2] && player1 [4][2] ||
         player1[0][3] && player1[1][3] && player1 [2][3] && player1 [3][3] ||
         player1[1][3] && player1[2][3] && player1 [3][3] && player1 [4][3] ||
         player1[0][4] && player1[1][4] && player1 [2][4] && player1 [3][4] ||
         player1[1][4] && player1[2][4] && player1 [3][4] && player1 [4][4] ||
      
      //Verticales
         player1[0][0] && player1[0][1] && player1 [0][2] && player1 [0][3] || 
         player1[0][1] && player1[0][2] && player1 [0][3] && player1 [0][4] ||
         player1[1][0] && player1[1][1] && player1 [1][2] && player1 [1][3] ||
         player1[1][1] && player1[1][2] && player1 [1][3] && player1 [1][4] ||
         player1[2][0] && player1[2][1] && player1 [2][2] && player1 [2][3] ||
         player1[2][1] && player1[2][2] && player1 [2][3] && player1 [2][4] ||
         player1[3][0] && player1[3][1] && player1 [3][2] && player1 [3][3] ||
         player1[3][1] && player1[3][2] && player1 [3][3] && player1 [3][4] ||
         player1[4][0] && player1[4][1] && player1 [4][2] && player1 [4][3] ||
         player1[4][1] && player1[4][2] && player1 [4][3] && player1 [4][4] ||
         
      //Diagonales
         player1[0][3] && player1[1][2] && player1 [2][1] && player1 [3][0] || 
         player1[0][4] && player1[1][3] && player1 [2][2] && player1 [3][1] ||
         player1[1][3] && player1[2][2] && player1 [3][1] && player1 [4][0] ||
         player1[1][4] && player1[2][3] && player1 [3][2] && player1 [4][1] ||
         player1[4][3] && player1[3][2] && player1 [2][1] && player1 [1][0] ||
         player1[4][4] && player1[3][3] && player1 [2][2] && player1 [1][1] ||
         player1[3][3] && player1[2][2] && player1 [1][1] && player1 [0][0] ||
         player1[3][4] && player1[2][3] && player1 [1][2] && player1 [0][1]
         ){
           
        //Cuenado el jugador dos logra ganar, aparece un cuadrado anunciado que gano
        rect(210,380,280,100);
        textSize(40);
        fill(255,0,0);
        text("GANA JUGADOR 1", 360, 430);
        
        //En la ventana que dice quien gano muestra que para reiniciar la partida precione la tecla r, ya sea mayuscula o minuscula
        textSize(20);
        text("Percione R para reiniciar",360,460);
        
        //Creamos un if para que el marcador de victorias del jugador aumente un punto, ponemos un limite de 100 victorias como maximo
        if(puntos<100 && victoria == true){
          victoria = false;
          puntos = puntos + 1;
          }
       
      }
      //posibles combinaciones verticales, horizontales y diagonales para que gane el jugador dos
      
      //Horiontales
      if(player2[0][0] && player2[1][0] && player2 [2][0] && player2 [3][0] || 
         player2[1][0] && player2[2][0] && player2 [3][0] && player2 [4][0] ||
         player2[0][1] && player2[1][1] && player2 [2][1] && player2 [3][1] ||
         player2[1][1] && player2[2][1] && player2 [3][1] && player2 [4][1] ||
         player2[0][2] && player2[1][2] && player2 [2][2] && player2 [3][2] ||
         player2[1][2] && player2[2][2] && player2 [3][2] && player2 [4][2] ||
         player2[0][3] && player2[1][3] && player2 [2][3] && player2 [3][3] ||
         player2[1][3] && player2[2][3] && player2 [3][3] && player2 [4][3] ||
         player2[0][4] && player2[1][4] && player2 [2][4] && player2 [3][4] ||
         player2[1][4] && player2[2][4] && player2 [3][4] && player2 [4][4] ||
         
       //Verticales
         player2[0][0] && player2[0][1] && player2 [0][2] && player2 [0][3] || 
         player2[0][1] && player2[0][2] && player2 [0][3] && player2 [0][4] ||
         player2[1][0] && player2[1][1] && player2 [1][2] && player2 [1][3] ||
         player2[1][1] && player2[1][2] && player2 [1][3] && player2 [1][4] ||
         player2[2][0] && player2[2][1] && player2 [2][2] && player2 [2][3] ||
         player2[2][1] && player2[2][2] && player2 [2][3] && player2 [2][4] ||
         player2[3][0] && player2[3][1] && player2 [3][2] && player2 [3][3] ||
         player2[3][1] && player2[3][2] && player2 [3][3] && player2 [3][4] ||
         player2[4][0] && player2[4][1] && player2 [4][2] && player2 [4][3] ||
         player2[4][1] && player2[4][2] && player2 [4][3] && player2 [4][4] ||
         
      //Diagonales
         player2[0][3] && player2[1][2] && player2 [2][1] && player2 [3][0] || 
         player2[0][4] && player2[1][3] && player2 [2][2] && player2 [3][1] ||
         player2[1][3] && player2[2][2] && player2 [3][1] && player2 [4][0] ||
         player2[1][4] && player2[2][3] && player2 [3][2] && player2 [4][1] ||
         player2[4][3] && player2[3][2] && player2 [2][1] && player2 [1][0] ||
         player2[4][4] && player2[3][3] && player2 [2][2] && player2 [1][1] ||
         player2[3][3] && player2[2][2] && player2 [1][1] && player2 [0][0] ||
         player2[3][4] && player2[2][3] && player2 [1][2] && player2 [0][1]
         ){
           
        //Cuenado el jugador dos logra ganar, aparece un cuadrado anunciado que gano
        rect(210,380,280,100);
        textSize(40);
        fill(255,0,0);
        textSize(40);
        fill(255,217,63);
        text("GANA JUGADOR 2", 360, 430);
        
        //En la ventana que dice quien gano muestra que para reiniciar la partida precione la tecla r, ya sea mayuscula o minuscula
        textSize(20);
        text("Percione R para reiniciar",360,460);
        
        //Creamos un if para que el marcador de victorias del jugador aumente un punto, ponemos un limite de 100 victorias como maximo
        if(puntos<100 && victoria == true){
          victoria = false;
          puntos2 = puntos2 + 1;
          }
      }
    }
  }
  
  //Titulo juego
  textSize(30);
  fill(0);
  text("Cuantro en raya",350,75);
}
    
  }
  
  


//Reiniciar precionando r o R
void keyPressed(){
  
  if(key == 'N' || key == 'n'){
  estado ++;
  }
  
  if(key ==  'R' || key ==  'r'){
    restart();
    victoria = true;
  }
}

void pantallas(String texto, int px, int py, int tamText) {
  textSize(tamText);
  textAlign(CENTER);
  fill(58, 255, 0);
  text(texto, px, py);
}

//Creamos un ciclo for para realizar los turnos entre el jugador uno y dos, ademas solo se puede dibujar en el tablero y no se puede poner la ficha en un mismo lugar
void mousePressed(){
  for(int i=0; i<tamano; i++){
    for(int j=0; j<tamano;j++){
       if (mouseX>i*tamano+238 && mouseX<i*tamano+tamano+238 && mouseY>j*tamano+128 && mouseY<j*tamano+tamano+128 
        && player1[i][j]==false && !player2[i][j]) {
          if(turno%2==0){
          player1[i][j] = true;
          }else{
           player2[i][j] = true;
          }
          turno++;
      }
    }
  }
}

// funciones para crear la fichas de cada jugador
void rojo(int px, int py, int ancho, int alto) {
  strokeWeight(5); 
  stroke(255);
  fill(255, 0, 0);
  ellipse(px, py, ancho, alto);
}
void amarillo (int px, int py, int ancho, int alto) {
  strokeWeight(5); 
  stroke(255);
  fill(255,255,55);
  ellipse(px, py, ancho, alto);
}


//Creamos la función para que se limpie el tablero
void restart() {
  for (int i=0; i<tablero; i++) {
    for (int j=0; j<tablero; j++) {
      player1[i][j] = false;
      player2[i][j] = false;
    }
  }
  turno = 0;
}
