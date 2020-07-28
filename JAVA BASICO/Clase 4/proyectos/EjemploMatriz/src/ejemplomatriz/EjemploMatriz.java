/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejemplomatriz;

import java.util.Scanner;

/**
 *
 * @author rsalinas
 */
public class EjemploMatriz {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        //declarar matriz
        float miMatriz[][]=new float[3][4];
        float sumandoFila[]=new float[3];
        float promedio[]=new float[3];
        Scanner entrada = new Scanner(System.in);
        //llenar matriz
        for (int i = 0; i < miMatriz.length; i++){
            for (int j = 0; j < miMatriz[i].length; j++){
                System.out.print("Ingrese un elemento: ");
                miMatriz[i][j]=entrada.nextInt();  
                 sumandoFila[i]=sumandoFila[i]+miMatriz[i][j];
                 promedio[i]=sumandoFila[i]/(j+1);
            }
        }
        //imprimir matriz
        for (int i = 0; i < miMatriz.length; i++){
            for (int j = 0; j < miMatriz[i].length; j++){
            System.out.print(String.format(" %.2f ",miMatriz[i][j])); 
            }
            System.out.print(String.format(" Resultado al sumar elementos de esta fila: %.2f ",sumandoFila[i])); 
            System.out.print(String.format(" El promedio de esta suma es: %.2f ",promedio[i])); 
            System.out.println();
        }
    }
}
