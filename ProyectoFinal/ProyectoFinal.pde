// Importación de libreria para implementación de archivos jpg
PImage score,B1,B1A,B1B,neon,mira,go,peligro,T1,T2,T3,T4,vista1,vista2,vista3,vista4,barra,cursor,explosion,modelo,fondo,logo; //Nombres de imágenes
//Declaración de variables globales
int n=10,pos=330,d=0,s=0,tempo,disparos=1;//Declaración de variables
float len=53.8,lan=50.3,posC=1030/3,x=6;
boolean juego=false,GameOver=false,cont=false,last=false,cursorQuieto=false,ale=true,ubi=false,pos0=false,pos1=false,pos2=false,conf=false;
int i=30,j=30,nueva,pox=0,puntaje=0;
//Declaración de objetos
Jenga jenga;
Arma arma;
void setup (){
  size(800,600); // Tamaño de la ventana del sketch
  // Dimensiones 604 x 646 || 1208 x 646
  // Profundidad Largo/2 || Largo/4
  // Se cargan las imágenes
  B1=loadImage("B1.jpg");
  B1A=loadImage("B1A.jpeg");
  B1B=loadImage("B1B.jpeg");
  go=loadImage("go.jpg");
  fondo=loadImage("fondo.jpg");
  peligro = loadImage("peligro.jpg");
  neon = loadImage("neon.jpg");
  mira = loadImage("mira.png");
  T1=loadImage("Tecla1.png");
  T2=loadImage("Tecla2.png");
  T3=loadImage("Tecla3.png");
  T4=loadImage("Tecla4.png");
  vista1=loadImage("Vista1.png");
  vista2=loadImage("Vista2.png");
  vista3=loadImage("Vista3.png");
  vista4=loadImage("Vista4.png");
  barra = loadImage("barra.png");
  cursor = loadImage("cursor.png");
  modelo = loadImage("modelo.png");
  explosion = loadImage("explosion.png");
  score = loadImage("score.jpg");
  logo = loadImage("logo.jpeg");
  //Instancia de Objetos
  jenga = new Jenga();
  arma = new Arma(1);
}


void draw(){
   tempo=second();//Se crea temporizador
   println(puntaje);//Impresión del puntaje en la pantalla
   
   if(cont){
       if(d!=tempo){
            s++;
       } 
       d=tempo;
   }else{
       s=0;
   }
   if(!GameOver && !juego){//Se presenta el menú de inicio si los booleanos 'juego' y 'GameOver'
     inicio();
     
   }else if(!GameOver && juego){  //Se presenta el juego si el booleano 'juego' es verdadero y 'GameOver' sigue siendo falso
       
       image(neon,0,0,800,600);
       image(score,0,0,369,94);
       fill(140,0,75);
       textSize(40);
       text(puntaje,410,50);
       image(modelo,10,400,200,150);
       fill(0);
       textSize(30);
       textAlign(CENTER);
       text("Estás en la vista "+jenga.vista,400,137);// Indicador de la vista del juego
       fill(#FFFFFF);
       text("Estás en la vista "+jenga.vista,397,140);
       vistas();
       jenga.display();
       coordenadas();
       if(!ale && !ubi){ 
             arma.display();
             arma.mover();
       }
       if(ubi){
         jenga.ubicar();
         if(conf){
           ubi=false;
           ale=true;
           cursorQuieto=false;
           conf=false;
         }
       }
       barra();
       if(last){
          last();
       }
   }else{ //Al perder aparece la imagen de game over e imprime el puntaje final ('GameOver' es verdadero)
   background(0);
   fill(0,170,228);
   textSize(40);
   text("Puntaje Total: "+puntaje,200,40);
   image(go,200,50,400,500);
   }
  
}
void vistas(){ //Convenciones de las teclas que cambian las vistas
   image(T1,25,100,50,50);
   image(vista1,80,100,100,50);
   image(T2,25,170,50,50);
   image(vista2,80,170,100,50);
   image(T3,25,240,50,50);
   image(vista3,80,240,100,50);
   image(T4,25,310,50,50);
   image(vista4,80,310,100,50);
 }
void coordenadas(){ //Permite cambiar las vistas del juego
  fill(250,250,250);
  if(keyCode==49){
   jenga.vista=1;
  }else if(keyCode==50){
   jenga.vista=2;
  }else if(keyCode==51){
   jenga.vista=3;
  }else if(keyCode==52){
   jenga.vista=4;
  }
}

void mouseClicked(){ //Dispara de acuerdo a la mira
   if(!ale && !ubi){  
     arma.disparo();
   }
}

void last(){   // En caso de que exista una excepción física de derrota determinado por el booleano 'last' sea verdadero
   cont=true;
   
   image(peligro,160,20,525,338);
   if(s==5){
      GameOver=true;
   }
   fill(0);
   textSize(70);
   text("TORRE CAÍDA",420,250);
}
void keyPressed(){
  if(keyCode == 32){
    cursorQuieto = true;
    if ((posC>=0 && posC<= 148)||(posC>=376 && posC<= 500)){
      arma.d = 150;
      arma.a = 150;
    }else if((posC> 148 && posC<= 220)||(posC>=302 && posC< 376)){
      arma.d = 100;
      arma.a = 100;
    }else if((posC>220 && posC< 302)){
      arma.d = 30;
      arma.a = 30;
    }
    ale=false;
  }
  if(keyCode==ENTER && ubi){
    conf=true;
  }
  if(keyCode==RIGHT && ubi && pox<2){
    pox++;
  }
  if(keyCode==LEFT && ubi && pox>0){
    pox--;
  }
  
}

void barra(){ // Barra de precision
  image(barra, 650, 100, 147-(147/1.5), 1120-(1120/1.5)); 
  if(ale && !ubi){ // Movimiento de la misma mientras la mira no este en movimiento
     mov();
  }
}
void mov(){ // Movimiento del cursor que determina el tamaño de la mira
  if(cursorQuieto == false){
    posC += x;
    if(posC > (1120/3+100-30)){
      x = -20-(disparos); 
    }else if(posC < (100-20)){
      x = 20+(disparos); 
    }
  }
  image(cursor,650-50, posC, 50,50);
}

void inicio(){ //Menú de inicio del juego
   image(fondo,0,0,800,600);
   image(logo,220,200,333,229);
   
   if(mouseY>440 && mouseY<490 && mouseX>220 && mouseX<550){ 
     fill(0,170,228);
     if(mousePressed){ //Al oprimir el botón inicia el juego
        juego=true;
     }
   }else{
     fill(0);
   }
   rect(220,440,333,50);
   fill(255,255,255);
   textSize(40);
   text("INICIAR",320,480);   
}
