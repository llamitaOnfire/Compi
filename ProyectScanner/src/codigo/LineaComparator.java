/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package codigo;

import java.util.Comparator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author sebas2002cr
 */
public class LineaComparator implements Comparator<Object> {
    @Override
    public int compare(Object o1, Object o2) {
        // Obtenemos el primer número de la lista de líneas
        int linea1 = obtenerPrimerNumero((String) o1);
        int linea2 = obtenerPrimerNumero((String) o2);

        // Comparamos los primeros números
        return Integer.compare(linea1, linea2);
    }

    public int obtenerPrimerNumero(String cadena) {
    // Utiliza una expresión regular para encontrar el primer número en la cadena
    Pattern pattern = Pattern.compile("\\d+");
    Matcher matcher = pattern.matcher(cadena);
    
    if (matcher.find()) {
        String numeroEncontrado = matcher.group();
        return Integer.parseInt(numeroEncontrado);
    } else {
        return 0; // Si no se encuentra ningún número, devuelve 0
    }
}

}
