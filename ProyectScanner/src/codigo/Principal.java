/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package codigo;

import java.io.File;

/**
 *
 * @author sebas2002cr
 */
public class Principal {
    public static void main(String[] args) {
        String ruta = "/Users/sebas2002cr/NetBeansProjects/ProyectScanner/src/codigo/Lexer.flex" ; // cambiar ruta de cada computadora 
        generarLexer(ruta);
    }
    public static void generarLexer(String ruta){
        File archivo = new File(ruta);
        JFlex.Main.generate(archivo);
        
            
    }
}
