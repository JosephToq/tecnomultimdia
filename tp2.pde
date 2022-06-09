//Joseph Steven Toquica Gonzalez, Legajo 91411/7
//tp2
//Link video: https://youtu.be/j8Fk9a6XYes

//Boton de reset
int cirx = 650;
int ciry = 430;
int radius = 50;

void setup(){
  size (700,480);
  /*Al iniciar el programa s el mouse no esta dentro de la ventana, el programa lo pondra en
  0,0*/
  mouseX=0;
  mouseY=0;
}

void draw(){
  //Degrade para los circulos dependiendo donde este el mouse
  float mx = map(mouseX,0,width,0,255);
  float my = map(mouseY,0,height,0,255);
  //color de fondo
  background(0,0,0);
  //color de los circulos
  fill(mx,0,my);
  /*llamamos nuestra función, cada circulo se va crear a 30pixeles de X y de Y*/
  circulos(30,30);
  /*creamos un botón para realizar el reset del programa cuando demos click dentro del
  circulo,la pantalla se pondra en negro como si el mouse estubiera en la posicion 0,0
  de nuestra ventana*/
  float d = dist(mouseX,mouseY,cirx,ciry);
            if(d >radius){
              fill(61,255,58);
            }else{
              fill(246,255,63);
              if(mousePressed){
                mouseX=0;
                mouseY=0;
              }
            }
   ellipse(cirx,ciry,radius,radius);
   fill(0);
   textSize(10);
   text("Restart",633,433);
  
  }  
//funcion para crear circulos
void circulos(int x1, int y1){
  //dibuja los circulos,  los separa en 30 pixeles de x
  for (int x=x1; x<=width ;x+=30){
    //dibuja los circulos,  los separa en 30 pixeles de y
    for (int y=y1; y<=height;y+=30){
      //guardamos la distancia entre el centro de cada circulo y la posición del mouse
      //se divide en 4 para que el tamaño del circulo no sea muy grande.
    float d = dist(x/4,y/4,mouseX/4,mouseY/4);
    //creamos las elipses con las variables creadas para la función, y con el tamaño
    //dependiendo donde se encuentre el mouse de estas
    ellipse(x,y,d,d);
    } 
  }
}
