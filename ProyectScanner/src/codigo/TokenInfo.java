/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package codigo;

import java.util.List;

/**
 *
 * @author sebas2002cr
 */
public class TokenInfo {
    private String token;
    private String tipo;
    private List<Integer> lineas;
    private int contador;
    
     public TokenInfo(String token, String tipo, List<Integer> lineas) {
        this.token = token;
        this.tipo = tipo;
        this.lineas = lineas;
        this.contador = 1; // Inicializamos el contador en 1
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public List<Integer> getLineas() {
        return lineas;
    }

    public void setLineas(List<Integer> lineas) {
        this.lineas = lineas;
    }
    
    public int getContador() {
        return contador;
    }

    public void incrementarContador() {
        contador++;
    }

    @Override
    public String toString() {
        return "Token: " + token + ", Tipo: " + tipo + ", Líneas: " + lineas;
    }
}
