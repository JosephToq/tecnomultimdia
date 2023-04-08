//tp0 Joseph Steven Toquica Gonzalez 91411/7

PImage helicoptero;

void setup(){
    size (800,400);
    helicoptero = loadImage("vehiculo.jpg");
}

void draw(){
  image(helicoptero,0,0,400,400);
  noStroke();
  /*pasto del fondo y color del pasto*/
  fill(240,218,109);
  rect(400,0,400,45);
  rect(400,126,400,160);
  
  
  /*pista del fondo y color de la pista*/
  fill(100,138,158);
  rect(400,302,400,108);
  rect(400,45,400,81);
  
  
  /*borde de la pista del fondo y color del borde de la pista*/
  fill(145,148,149);
  rect(400,285,400,18);
  
  /* cono naranja*/
  fill(255,166,0);
  triangle(720,285,710,303,730,303);
  
  /*lineas pista*/
  stroke(255);
  strokeWeight(2);
  line(400,50,800,50);
  line(400,120,800,120);
  line(600,80,800,80);
  line(400,351,800,351);
  
  /*helicoptero*/
  
  //rectangulo del eje le la elice y teco del helicoptero
  noStroke();
  fill(191);
  rect(450,110,16,30);
  fill(55);
  rect(442,120,32,30);
  
  //lineas para formar las patas del helicoptero
  strokeWeight(4);
  stroke(0);
  line(450,180,450,245);
  line(470,180,470,245);
  line(420,245,500,245);
  line(420,245,410,230);
  
  //cuerpo del helicoptero
  noStroke();
  fill(55);
  circle(457,180,100);
  
  //eje de la cola
  fill(191);
  circle(780,180,20);
  
  
  //ventana del pilo
  fill(27,65,146);
  strokeWeight(4);
  stroke(0);
  rect(426,155,20,50);
  
  //cuerpo del helicoptero
  fill(55);
  noStroke();
  triangle(450,130,450,225,780,180);
  
  //linea de la puerta de helicoptero
  stroke(255);
  line(470,160,470,200);
  
  //lineas de las elices del helicoptero
  stroke(0);
  strokeWeight(4);
  line(410,130,590,60);
  line(410,80,570,180);
  line(760,160,800,200);
  line(800,160,760,200);
  
  
  
}
