//Imagenes y fuente
PFont fuente;
PImage logo;
PImage foncre;
PImage imag2;
PImage imag3;
PImage imag4;
PImage imag5;
PImage mouse;


//Boton
int cirx = 300;
int ciry = 300;
int radius = 100;


//Variables para mover creditos
float h,f1,h2,h3,h4,h5,h6;



void setup(){
  background(0);
  noCursor();
  size(600,600);
  logo = loadImage("rick-and-morty-logo.png");
  foncre = loadImage("fondo.png");
  imag2 = loadImage("img2.png");
  imag3 = loadImage("img3.png");
  imag4 = loadImage("img4.jpg");
  imag5 = loadImage("img5.jpg");
  mouse = loadImage("MOUSE.png");
  imageMode(CENTER);
  h=600;
  h2=800;
  h3=600;
  h4=-200;
  h5=-200;
  h6 = -100;
  textAlign(CENTER);
  fuente = loadFont("Ink.vlw");
  
}

void draw(){
  cursor(mouse,0,0);
  textSize(18);
  textFont(fuente);
    
    h-=2;
    foncre.resize(600,600);
    image(foncre,300,300,600,600);
    image(logo,300,h);
    fill(250);
    h2-=2;
    text("Productor \nLee Harting \n\nCo-Productor \nJohn Harris",300,h2);
    if(h2<-300){
      foncre.resize(600,600);
      image(imag2,300,300,600,600);
      fill(250);
      h3-=3;
      textSize(40);
      text("Equipo de escritores \n\nBrandon Johnson \nSiobhan Thompson",230,h3);
      if(h3<0){
        image(imag3,300,300,600,600);
        fill(250);
        h4+=4;
        textSize(40);
        text("Tema principal \n\nRyan Elder",h4,200);
         if(h4>700){
          foncre.resize(600,600);
          image(imag4,300,300,600,600);
          fill(250);
          h5+=4;
          textSize(40);
          text("Director de arte \nRobbie Erwin \n\nAsistente del director de arte \nJason Boesch",h5,150);
          if(h5>700){
          foncre.resize(600,600);
          image(imag5,300,300,600,600);
          fill(250);
          h6+=4;
          textSize(40);
          text("Jefe de diseño de personajes \nKendra Melton \n\nJefe de diseño de fondos \nVance Caines",h6,100);
          if(h6>700){
            float d = dist(mouseX,mouseY, cirx, ciry);
            if(d > radius){
              fill(61,255,58);
            }else{
              fill(246,255,63);
            }
            ellipse(cirx,ciry,radius,radius);
            fill(0);
            textSize(20);
            text("Restart",300,300);
            //no logre hacer la funcion para reiniciar el programa
          }
          
          }
        }
      }
    }
}
