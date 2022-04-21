void setup(){
  size(500,500);
  background(8,21,67);
  
  
};
void draw(){
  color cloud = color(217,230,249);
  color moon = color(229);
  color earth = color(11,103,21);
  
  /* luna*/
  fill(moon);
  stroke(239,249,74);
  strokeWeight(6);
  ellipse(250,400,300,300);
  
/*Montañas*/
strokeWeight(1);
fill(222,10,10);
triangle(440,400,460,400,450,380);
  
  /* Estrellas */
  strokeWeight(1);
  fill(moon);
  line(40,124,44,115);
  line(35,118,48,120);
  
  line(70,150,74,141);
  line(65,144,78,146);
  
  line(90,124,94,115);
  line(85,118,98,120);
  
  line(140,124,144,115);
  line(135,118,148,120);
  
  line(190,124,194,115);
  line(185,118,198,120);
  
  line(240,124,244,115);
  line(235,118,248,120);
  
  line(290,124,294,115);
  line(285,118,298,120);
  
  line(340,124,344,115);
  line(335,118,348,120);
  
  line(390,124,394,115);
  line(385,118,398,120);
  
  line(440,124,444,115);
  line(435,118,448,120);
  
  line(490,124,494,115);
  line(485,118,498,120);
  
  line(120,150,124,141);
  line(115,144,128,146);
  
  line(170,150,174,141);
  line(165,144,178,146);
  
  line(220,150,224,141);
  line(215,144,228,146);
  
  line(270,150,274,141);
  line(265,144,278,146);
  
  line(320,150,324,141);
  line(315,144,328,146);
  
  line(370,150,374,141);
  line(365,144,378,146);
  
  line(420,150,424,141);
  line(415,144,428,146);
  
  line(470,150,474,141);
  line(465,144,478,146);
  
  /*Cometa*/
  
  fill(moon);
  line(374,240,274,190);
  
  /*Crateres*/
  strokeWeight(2);
  stroke(0,0,0);
  ellipse(350,350,50,50);
  
  stroke(0,0,0);
  ellipse(190,300,30,30);
  
  /* nubes*/
  noStroke();
  fill(cloud);
  ellipse(40,30,70,50);
  ellipse(80,30,70,50);
  ellipse(120,30,70,50);
  
  ellipse(200,30,70,50);
  ellipse(250,30,70,50);
  ellipse(290,30,70,50);
  
  ellipse(390,30,70,50);
  ellipse(430,30,70,50);
  ellipse(470,30,70,50);
  
   /* tierra*/
  fill(earth);
  rect(0,400, 500,250);
  
  
  
}
