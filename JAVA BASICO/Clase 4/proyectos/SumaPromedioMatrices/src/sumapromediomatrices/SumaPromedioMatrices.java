/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package sumapromediomatrices;

import java.util.Scanner;

/**
 *
 * @author usuario
 */
public class SumaPromedioMatrices {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        //declarar matriz
        float miMatriz[][]=new float[3][4];
		float suma=0,promedio=0;
        Scanner entrada = new Scanner(System.in);
        //llenar matriz
        for (int i = 0; i < miMatriz.length; i++){
            for (int j = 0; j < miMatriz[i].length; j++){
                System.out.print("Ingrese un elemento " + i + "," + j +":");
                miMatriz[i][j]=entrada.nextFloat();  
            }
        }
        //imprimir matriz
        for (int i = 0; i < miMatriz.length; i++){
			suma=0;
			promedio=0;
            for (int j = 0; j < miMatriz[i].length; j++){
            System.out.print(String.format(" %f ",miMatriz[i][j])); 
            suma=suma+ miMatriz[i][j];
            }
            System.out.print(String.format(" %f ",suma)); 
            promedio=suma/miMatriz[i].length;
            System.out.print(String.format(" %f ",promedio)); 
            System.out.println();
        }
    }
    
}
