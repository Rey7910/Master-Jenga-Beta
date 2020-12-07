public class Arma extends General{
    //Atributos locales de la clase
    public int turno; //Variable que determina el arma correspondiente y por ende, el valor de la precision y daño
    public int precision;
    public int dano;
   
    public Arma(int _turno){// el constructor recibe una valor entero, el cual elige que mira se va a utilizar
       turno=_turno;
       if(turno==1){//mira 1 con precision alta
          d=30;
          a=30;
          dano=3;
       }else if(turno==2){//mira 2 con precision media
         d=100;
         a=100;
         dano = 3;
       }else if(turno==3){// mira 3 con precision baja
         d=150;
         a=150;
         dano=5;
       }
       
       x = mouseX-(d/2);
       y = mouseY-(a/2);   
      
    }
    public void display(){   //Aparicion de la mira con su tamaño correspondiente, las valores de las variables 'a' y 'd' sujetas a lo sucedido con la barra de precision
       image(mira,x,y,d,a);
    }
  //Metodos locales 
   public void mover(){      //Movimiento de la mira en termino de la posición del mouse en los ejes de coordenadas
       x = mouseX-(d/2);//coordenadas del mouse en el eje x
       y = mouseY-(a/2);// coordenadas del mouse en el eje y
   }
   public void disparo(){     //metodo para realizar el impacto y la eiminacion de los bloques del Jenga
      float impactoX = x+random(d);//valores aleatorios en el 
      float impactoY = y+random(a);//  rango de las respectivas miras. Para identificar los valores de dispersión
      
     int _j=30;  // son 30 ya que son 30 piezas en el Jenga
      if(impactoX>=pos && impactoX<=pos+(lan*3) && impactoY>=30 && impactoY <=30+(len*n)){
              
              if(impactoX>=pos && impactoX<pos+lan){//columnas
                 _j=0;
               }else if(impactoX>=pos+lan && impactoX<pos+(lan*2)){
                 _j=1;
               }else if(impactoX>=pos+lan && impactoX<pos+(lan*3)){
                 _j=2;
               }
               
               if(impactoY>=30 && impactoY<30+len){//filas
                 i=0;
               }else if(impactoY>=30+len && impactoY<30+(len*2)){
                 i=1;
               }else if(impactoY>=30+len && impactoY<30+(len*3)){
                 i=2;
               }else if(impactoY>=30+len && impactoY<30+(len*4)){
                 i=3;
               }else if(impactoY>=30+len && impactoY<30+(len*5)){
                 i=4;
               }else if(impactoY>=30+len && impactoY<30+(len*6)){
                 i=5;
               }else if(impactoY>=30+len && impactoY<30+(len*7)){
                 i=6;
               }else if(impactoY>=30+len && impactoY<30+(len*8)){
                 i=7;
               }else if(impactoY>=30+len && impactoY<30+(len*9)){
                 i=8;
               }else if(impactoY>=30+len && impactoY<30+(len*10)){
                 i=9;
               }
               jenga.consulta(_j);// se hace la consulta en las matrices
               if(i>=4 && i<=10){
                   puntaje+=20;
               }
               println("i: "+i);
               println("j: "+j);
               
               jenga.conexion(i,j,arma.dano);
               jenga.derrota();
               
               
               
///////////////////////////////////////           
     println("V1");
           for(int i=0;i<10;i++){
             for(int j=0;j<3;j++){
               print(jenga.v1[i][j]+" ");
             }
           println();
          }
          println("---------------------");
//////////////////////////////////////////////    
      println("V2");
          for(int i=0;i<10;i++){
             for(int j=0;j<3;j++){
               print(jenga.v2[i][j]+" ");
             }
           println();
          }
          println("---------------------");
//////////////////////////////////////////
      println("V3");
           for(int i=0;i<10;i++){
             for(int j=0;j<3;j++){
               print(jenga.v3[i][j]+" ");
             }
           println();
          }
println("---------------------");
///////////////////////////////////
      println("V4");
      for(int i=0;i<10;i++){
             for(int j=0;j<3;j++){
               print(jenga.v4[i][j]+" ");
             }
           println();
          }
          println("---------------------");
//////////////////////////////////
      }else{
         i=30;
         j=30;
      }
      fill(255,0,255);// se muestra la explosión a la hora del impacto
      image(explosion,impactoX-50,impactoY-50,100,100);
      if(!ale && !ubi){   
          disparos+=5;
      }
      if(!ubi){
        cursorQuieto=false;
        ale=true;
      }
      

   }
 
}
