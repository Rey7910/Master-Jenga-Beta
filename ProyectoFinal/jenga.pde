public class Jenga extends General{
  // Atributos de arreglos bidimensionales correspondientes a las cuatro vistas del jenga
  public int v1[][] =  new int[n][3];
  public int v2[][] =  new int[n][3];
  public int v3[][] =  new int[n][3];
  public int v4[][] =  new int[n][3];
  public int vista;
  //Método Constructor del Jenga (Asingación de valores estándares de la matriz)
  public Jenga(){
    for(int i=0;i<n;i++){
     for(int j=0;j<3;j++){  
       if(i<4){   
         v1[i][j]=0;
         v2[i][j]=0;
         v3[i][j]=0;
         v4[i][j]=0;
       }else if(i%2==0){
         v1[i][j]=9;
         v2[i][j]=3;
         v3[i][j]=9;
         v4[i][j]=3;
       }else if(i%2==1){
         v1[i][j]=3;
         v2[i][j]=9;
         v3[i][j]=3;
         v4[i][j]=9;
       }
     }
   } 
   vista = 1;  
  }
  // Aparición de los bloques respecto a los valores de la matriz en la vista respectiva
 public void display(){
     switch(vista){
        case 1:
          for(int i=0; i<10; i++){
            for(int j=0; j<3; j++){
              if(v1[i][j] == 9){
                if(v1[i][0] <= 9 && v1[i][0] > 6){
                  image(B1,pos,30+(len*i),151,53.8);
                }else if(v1[i][1] <= 9 && v1[i][1] > 6){
                  image(B1A,pos+(151/12),30+(len*i),151-(151/12)*2,53.8);
                }else if(v1[i][2] <= 9 && v1[i][2] > 6){
                  image(B1B,pos+(151/8),30+(len*i),151-(151/8)*2,53.8); 
                }//////////////////////
              }
              if(v1[i][0] <= 3 && v1[i][0] > 0){
                 image(B1,pos,30+(i*len),50.3,53.8);
              }if(v1[i][1] <= 3 && v1[i][1] > 0){
                 image(B1,pos+50.3,30+(i*len),50.3,53.8);
              }if(v1[i][2] <= 3 && v1[i][2] > 0)
                 image(B1,pos+(50.3*2),30+(i*len),50.3,53.8);               
              } 
            } 
          break;
        case 2:
           for(int i=0; i<10; i++){
            for(int j=0; j<3; j++){
              if(v2[i][j] == 9){
                if(v2[i][0] <= 9 && v2[i][0] > 6){
                  image(B1,pos,30+(len*i),151,53.8);
                }else if(v2[i][1] <= 9 && v2[i][1] > 6){
                  image(B1A,pos+(151/12),30+(len*i),151-(151/12)*2,53.8);
                }else if(v2[i][2] <= 9 && v2[i][2] > 6){
                  image(B1B,pos+(151/8),30+(len*i),151-(151/8)*2,53.8); 
                }//////////////////////
              }
              if(v2[i][0] <= 3 && v2[i][0] > 0){
                 image(B1,pos,30+(i*len),50.3,53.8);
              }if(v2[i][1] <= 3 && v2[i][1] > 0){
                 image(B1,pos+50.3,30+(i*len),50.3,53.8);
              }if(v2[i][2] <= 3 && v2[i][2] > 0)
                 image(B1,pos+(50.3*2),30+(i*len),50.3,53.8);               
              } 
            } 
          break;
        case 3:
          for(int i=0; i<10; i++){
            for(int j=0; j<3; j++){
              if(v3[i][j] == 9){
                if(v3[i][0] <= 9 && v3[i][0] > 6){
                  image(B1,pos,30+(len*i),151,53.8);
                }else if(v3[i][1] <= 9 && v3[i][1] > 6){
                  image(B1A,pos+(151/12),30+(len*i),151-(151/12)*2,53.8);
                }else if(v3[i][2] <= 9 && v3[i][2] > 6){
                  image(B1B,pos+(151/8),30+(len*i),151-(151/8)*2,53.8); 
                }//////////////////////
              }
              if(v3[i][0] <= 3 && v3[i][0] > 0){
                 image(B1,pos,30+(i*len),50.3,53.8);
              }if(v3[i][1] <= 3 && v3[i][1] > 0){
                 image(B1,pos+50.3,30+(i*len),50.3,53.8);
              }if(v3[i][2] <= 3 && v3[i][2] > 0)
                 image(B1,pos+(50.3*2),30+(i*len),50.3,53.8);               
              } 
            } 
          break;
        case 4:
          for(int i=0; i<10; i++){
            for(int j=0; j<3; j++){
              if(v4[i][j] == 9){
                if(v4[i][0] <= 9 && v4[i][0] > 6){
                  image(B1,pos,30+(len*i),151,53.8);
                }else if(v4[i][1] <= 9 && v4[i][1] > 6){
                  image(B1A,pos+(151/12),30+(len*i),151-(151/12)*2,53.8);
                }else if(v4[i][2] <= 9 && v4[i][2] > 6){
                  image(B1B,pos+(151/8),30+(len*i),151-(151/8)*2,53.8); 
                }//////////////////////
              }
              if(v4[i][0] <= 3 && v4[i][0] > 0){
                 image(B1,pos,30+(i*len),50.3,53.8);
              }if(v4[i][1] <= 3 && v4[i][1] > 0){
                image(B1,pos+50.3,30+(i*len),50.3,53.8);
              }if(v4[i][2] <= 3 && v4[i][2] > 0)
                 image(B1,pos+(50.3*2),30+(i*len),50.3,53.8);               
              } 
          }
          break;
     }
     
  }
  // Método para ubicación de nuevas fichas (INCOMPLETO)
  public void ubicar(){
    if(pox==0){
          pos0=true;
          pos1=false;
          pos2=false;
        }else if(pox==1){
          pos0=false;
          pos1=true;
          pos2=false;
        }else if(pox==2){
          pos0=false;
          pos1=false;
          pos2=true;
        }
        
        if(conf){
           ubi=false;
        }
    for(int i=0;i<n;i++){
       for(int j=0;j<3;j++){
          if(vista==1){
              if(v1[i][j]==0 && v1[i+1][j]!=0){
                  nueva=i;
                  
              }
          }else if(vista==2){
              if(v2[i][j]==0 && v2[i+1][j]!=0){
                  nueva=i;
                 
              }
          }else if(vista==3){
              if(v3[i][j]==0 && v3[i+1][j]!=0){
                 nueva=i;
                 
              }
          }else if(vista==4){
              if(v4[i][j]==0 && v4[i+1][j]!=0){
                 nueva=i;
                 
              }
          }
       }
    }
  
        if(vista==1){
           if(nueva%2==0){
             if(v1[nueva][0]==0 && pos0 && conf){
                v1[nueva][0]=9;
                conexion(nueva,0,0);
             }
             if(v1[nueva][1]==0 && pos1 && conf){
                v1[nueva][1]=9;
                conexion(nueva,1,0);
             }
             if(v1[nueva][2]==0 && pos2 && conf){
                v1[nueva][2]=9;
                conexion(nueva,2,0);
             }
           }else{
             if(v1[nueva][0]==0 && pos0 && conf){   
                v1[nueva][0]=3;
                conexion(nueva,0,0);
             }
             if(v1[nueva][1]==0 && pos1 && conf){   
                v1[nueva][1]=3;
                conexion(nueva,1,0);
             }
             if(v1[nueva][2]==0 && pos2 && conf){   
                v1[nueva][2]=3;
                conexion(nueva,2,0);
             }
           }
        }else if(vista==2){
           if(nueva%2==0){
             if(v2[nueva][0]==0 && pos0 && conf){
                v2[nueva][0]=3;
                conexion(nueva,0,0);
             }
             if(v2[nueva][1]==0 && pos1 && conf){
                v2[nueva][1]=3;
                conexion(nueva,1,0);
             }
             if(v2[nueva][2]==0 && pos2 && conf){
                v2[nueva][2]=3;
                conexion(nueva,2,0);
             }
           }else{
             if(v2[nueva][0]==0 && pos0 && conf){   
                v2[nueva][0]=9;
                conexion(nueva,0,0);
             }
             if(v2[nueva][1]==0 && pos1 && conf){   
                v2[nueva][1]=9;
                conexion(nueva,1,0);
             }
             if(v2[nueva][2]==0 && pos2 && conf){   
                v2[nueva][2]=9;
                conexion(nueva,2,0);
             }
           }
        }else if(vista==3){
           if(nueva%2==0){
             if(v3[nueva][0]==0 && pos0 && conf){
                v3[nueva][0]=9;
                conexion(nueva,0,0);
             }
             if(v3[nueva][1]==0 && pos1 && conf){
                v3[nueva][1]=9;
                conexion(nueva,1,0);
             }
             if(v3[nueva][2]==0 && pos2 && conf){
                v3[nueva][2]=9;
                conexion(nueva,2,0);
             }
           }else{
             if(v3[nueva][0]==0 && pos0 && conf){   
                v3[nueva][0]=3;
                conexion(nueva,0,0);
             }
             if(v3[nueva][1]==0 && pos1 && conf){   
                v3[nueva][1]=3;
                conexion(nueva,1,0);
             }
             if(v3[nueva][2]==0 && pos2 && conf){   
                v3[nueva][2]=3;
                conexion(nueva,2,0);
             }
           }
        
        }else if(vista==4){
           if(nueva%2==0){
             if(v4[nueva][0]==0 && pos0 && conf){
                v4[nueva][0]=3;
                conexion(nueva,0,0);
             }
             if(v4[nueva][1]==0 && pos1 && conf){
                v4[nueva][1]=3;
                conexion(nueva,1,0);
             }
             if(v4[nueva][2]==0 && pos2 && conf){
                v4[nueva][2]=3;
                conexion(nueva,2,0);
             }
           }else{
             if(v4[nueva][0]==0 && pos0 && conf){   
                v4[nueva][0]=9;
                conexion(nueva,0,0);
             }
             if(v4[nueva][1]==0 && pos1 && conf){   
                v4[nueva][1]=9;
                conexion(nueva,1,0);
             }
             if(v4[nueva][2]==0 && pos2 && conf){   
                v4[nueva][2]=9;
                conexion(nueva,2,0);
             }
           }
        }
        
    
  }
  // Verificación y búsqueda de excepciones en la física de la torre para determinar el fin del juego
  public void derrota(){
    for(int i=1;i<n;i++){
      for(int j=0;j<3;j++){
         if(v1[i][0]<1 && v1[i][1]<1 && v1[i][2]<1 && v1[i-1][j]>1){
            cont=true; // Contador de 4 segundos
            last=true; // Booleano para iniciar el proceso de fin del juego
                        
         }
         if(v1[i][0]<1 && v1[i][1]<1 && v1[i-1][j]>1 ||v1[i][1]<1 && v1[i][2]<1 && v1[i-1][j]>1){
            cont=true; // Contador de 4 segundos
            last=true; // Booleano para iniciar el proceso de fin de juego
            
         }
      }
    }
  }
  /*Método para la actualización respectiva de las 4 vistas de la matriz luego de un impacto o modificación 
  de un valor en la misma (parámetro de fila, columna y valor a restar en el componente)*/
  public void conexion(int _i,int _j,int _dano){
       if(vista==1 && v1[_i][_j]>0){
         v1[_i][_j]=v1[_i][_j]-_dano;
         if(v1[_i][_j]<0 || v1[_i][_j]==6){
            v1[_i][_j]=0;
         }
         if(v1[_i][_j]>3 && v1[_i][_j]<7){
            v1[_i][_j]=0;
         }
       }else if(vista==2 && v2[_i][_j]>0){
         v2[_i][_j]=v2[_i][_j]-_dano;
         if(v2[_i][_j]<0 || v2[_i][_j]==6){
            v2[_i][_j]=0;
         }
         if(v2[_i][_j]>3 && v2[_i][_j]<7){
            v2[_i][_j]=0;
         }
       }else if(vista==3 && v3[_i][_j]>0){
         v3[_i][_j]=v3[_i][_j]-_dano;
         if(v3[_i][_j]<0 || v3[_i][_j]==6){
            v3[_i][_j]=0;
         }
         if(v3[_i][_j]>3 && v3[_i][_j]<7){
            v3[_i][_j]=0;
         }
       }else if(vista==4 && v4[_i][_j]>0){
         v4[_i][_j]=v4[_i][_j]-_dano;
         if(v4[_i][_j]<0 || v4[_i][_j]==6){
            v4[_i][_j]=0;
         }
         if(v4[_i][_j]>3 && v4[_i][_j]<7){
            v4[_i][_j]=0;
         }
       }
       
       if(_j==0){
           if(vista==1){
             if(_i%2==0){
               v2[_i][0]=v1[_i][0]-6;
               v3[_i][2]=v1[_i][0];
               v4[_i][2]=v1[_i][0]-6;
               
              }else{
               v2[_i][2]=v1[_i][0]+6;
               v3[i][2]=v1[_i][0];
               v4[_i][0]=v1[_i][0]+6;
              }
           }
           if(vista==2){
              if(_i%2==0){
               v3[_i][2]=v2[_i][0]+6;
               v4[_i][2]=v2[i][0];
               v1[_i][0]=v2[_i][0]+6;
              }else{
               v3[_i][0]=v2[_i][0]-6;
               v4[_i][2]=v2[i][0];
               v1[_i][2]=v2[_i][0]-6;
              }
           }
           if(vista==3){
             if(_i%2==0){
                v1[_i][2]=v3[_i][0];
                v2[_i][2]=v3[_i][0]-6;
                v4[_i][0]=v3[_i][0]-6;
                
              }else{
                v1[_i][2]=v3[_i][0];
                v2[_i][0]=v3[_i][0]+6;
                v4[_i][2]=v3[_i][0]+6;
              }
           }
           if(vista==4){
             if(_i%2==0){
                v1[_i][2]=v4[_i][0]+6;
                v2[_i][2]=v4[_i][0];
                v3[_i][0]=v4[_i][0]+6;
              }else{
                v1[_i][0]=v4[_i][0]-6;
                v2[_i][2]=v4[_i][0];
                v3[_i][2]=v4[_i][0]-6;
              }
           }
       }else if(_j==1){
           if(vista==1){
             if(_i%2==0){
                v2[_i][1]=v1[_i][1]-6;
                v3[_i][1]=v1[_i][1];
                v4[_i][1]=v1[_i][1]-6;
                
              }else{
                v2[_i][1]=v1[_i][1]+6;
                v3[_i][1]=v1[_i][1];
                v4[_i][1]=v1[_i][1]+6;
              }
           }
           if(vista==2){
             if(_i%2==0){
               v3[_i][1]=v2[_i][1]+6;
               v4[_i][1]=v2[_i][1];
               v1[_i][1]=v2[_i][1]+6;
              }else{
               v3[_i][1]=v2[_i][1]-6;
               v4[_i][1]=v2[_i][1];
               v1[_i][1]=v2[_i][1]-6;
              }
           }
           if(vista==3){
             if(_i%2==0){
               v1[_i][1]=v3[_i][1];
               v2[_i][1]=v3[_i][1]-6;
               v4[_i][1]=v3[_i][1]-6;
              }else{
               v1[_i][1]=v3[_i][1];
               v2[_i][1]=v3[_i][1]+6;
               v4[_i][1]=v3[_i][1]+6;
              }
           }
           if(vista==4){
             if(_i%2==0){
               v1[_i][1]=v4[_i][1]+6;
               v2[_i][1]=v4[_i][1];
               v3[_i][1]=v4[_i][1]+6;
             }else{
               v1[_i][1]=v4[_i][1]-6;
               v2[_i][1]=v4[_i][1];
               v3[_i][1]=v4[_i][1]-6;
             }
           }
       
       }else if(_j==2){
           if(vista==1){
              if(_i%2==0){
                v2[_i][2]=v1[_i][2]+6;
                v3[_i][0]=v1[_i][2];
                v4[_i][0]=v1[_i][2];
              }else{
                v2[_i][0]=v1[_i][2]+6;
                v3[_i][0]=v1[_i][2];
                v4[_i][2]=v1[_i][2]+6;
              }
           }
           if(vista==2){
             if(_i%2==0){
               v3[_i][0]=v2[_i][2]+6;
               v4[_i][0]=v2[_i][2];
               v1[_i][2]=v2[_i][2]+6;
              }else{
               v3[_i][2]=v2[_i][2]-6;
               v4[_i][0]=v2[_i][2];
               v1[_i][0]=v2[_i][2];
              }
           }
           if(vista==3){
             if(_i%2==0){
                v1[_i][0]=v3[_i][2];
                v2[_i][0]=v3[_i][2]-6;
                v4[_i][2]=v3[_i][2]-6;
              }else{
                v1[_i][0]=v3[_i][2];
                v2[_i][2]=v3[_i][2]+6;
                v4[_i][0]=v3[_i][2]+6;
              }
           }
           if(vista==4){
             if(_i%2==0){
                v1[_i][0]=v4[_i][2]+6;
                v2[_i][0]=v4[_i][2];
                v3[_i][2]=v4[_i][2]+6;
              }else{
                v1[_i][2]=v4[_i][2]-6;
                v2[_i][0]=v4[_i][2];
                v3[_i][0]=v4[_i][2]-6;
              }
           }
       }
       for(int i=0;i<n;i++){
          for(int j=0;j<3;j++){
             if(v1[i][j]==6){
                 v1[i][j]=0;
             }
             if(v2[i][j]==6){
                 v2[i][j]=0;
             }
             if(v3[i][j]==6){
                 v3[i][j]=0;
             }
             if(v4[i][j]==6){
                 v4[i][j]=0;
             }
          }
       }
  }
  //  Metodo para verificación de fichas verticales u horizontales dependiendo sus componentes (3||9)
  public void consulta(int _j){
    if(vista==1 && i%2==0){
        if(v2[i][0]<=3 && v2[i][0]>0){
            j=0;
        }else if(v2[i][0]<1 && v2[i][1]<=3 && v2[i][1]>0){
            j=1;
        }else if(v2[i][0]<1 && v2[i][1]==0 && v2[i][2]<=3 && v2[i][2]>0){
            j=2;
        }
    }else if(vista==2 && i%2==1){
        if(v3[i][0]<=3 && v3[i][0]>0){
            j=0;
        }else if(v3[i][0]<1 && v3[i][1]<=3 && v3[i][1]>0){
            j=1;
        }else if(v3[i][0]<1 && v3[i][1]<1 && v3[i][2]<=3 && v3[i][2]>0){
            j=2;
        }
    }else if(vista==3 && i%2==0){
       if(v4[i][0]<=3 && v4[i][0]>0){
            j=0;
        }else if(v4[i][0]<1 && v4[i][1]<=3 && v4[i][1]>0){
            j=1;
        }else if(v4[i][0]<1 && v4[i][1]<1 && v4[i][2]<=3 && v4[i][2]>0){
            j=2;
        }
    }else if(vista==4 && i%2==1){
       if(v1[i][0]<=3 && v1[i][0]>0){
            j=0;
        }else if(v1[i][0]<1 && v1[i][1]<=3 && v1[i][1]>0){
            j=1;
        }else if(v1[i][0]<1 && v1[i][1]<1 && v1[i][2]<=3 && v1[i][2]>0){
            j=2;
        }
    }else{
       j=_j;
    }
  }
  
}
