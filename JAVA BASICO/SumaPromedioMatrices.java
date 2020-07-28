/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sumapromediomatrices;

import java.util.Scanner;

/**
 *
 * @author lenin
 */
public class SumaPromedioMatrices {

    /**
     * @param args the command line arguments
     */
    public static float suma=0,promedio=0;
    public static void main(String[] args) {
        // TODO code application logic here
        float miMatriz [][] =new float [3][4];
        
        int opcion;
        
        Scanner entrada = new Scanner(System.in);
        
          System.out.println("1. Suma y Promedio de Fila");
          System.out.println("2. Suma y Promedio de Columna");
          System.out.println("");
          System.out.println("Elija una opcion:");
          opcion=entrada.nextInt();
        
        //llenar matriz
        for (int i = 0; i < miMatriz.length; i++) { 
            for (int j = 0; j < miMatriz[i].length; j++) {
                System.out.print("Ingrese un elemento para celda[" + i + "," + j +"]: ");
                miMatriz[i][j]=entrada.nextFloat();
            }
        }
        System.out.println("");
        System.out.println("");
        if(opcion==1){
            fila(miMatriz);
        }else if(opcion==2){
            columna(miMatriz);
        }
        
        
    }
    public static void fila(float matriz[][]) {
        
        for (int i = 0; i < matriz.length; i++) {
            suma=0;
            promedio=0;
            for (int j = 0; j < matriz[i].length; j++) { 
                System.out.print(String.format(" %f ",matriz[i][j]));
                suma=suma+ matriz[i][j];
            }
            System.out.print(String.format(" %f ",suma));
            promedio=suma/matriz[i].length;
            System.out.print(String.format(" %f ",promedio));
            System.out.println();
        }
    }
    public static void columna(float matriz[][]) {
        
        //int columna=matriz[0].length;
        float arrSuma[]=new float[4];
        float arrPromedio[]=new float[4];
        
        for (int j = 0; j < matriz[0].length; j++) {
            suma=0;
            promedio=0;
            for (int i = 0; i < matriz.length; i++) { 
                
                suma=suma+ matriz[i][j];
            }
            promedio=suma/matriz.length;
            arrSuma[j]=suma;
            arrPromedio[j]=promedio;
        }
        //imprime la matriz   
        for (int i = 0; i < matriz.length; i++) {
            
            for (int j = 0; j < matriz[i].length; j++) { 
                System.out.print(String.format(" %f ",matriz[i][j]));
                
            }
            System.out.println("");
            
        }
        //imprime el arreglo con la suma
        for (int i = 0; i < arrSuma.length; i++) {
            
            System.out.print(String.format(" %f ",arrSuma[i]));
       }
        System.out.println("");
        //imprime arreglo con el promedio
       for (int i = 0; i < arrPromedio.length; i++) {
            
            System.out.print(String.format(" %f ",arrPromedio[i]));
       }
        
      
    }
    
}
