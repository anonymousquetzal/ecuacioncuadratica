/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servicio;

import java.util.ArrayList;
import java.util.List;
import modelo.Numeros;

/**
 *
 * @author Leticia Boch
 */
public class NumeroServicio {
    public static List<Numeros> paisDatasource = new ArrayList<>();
    
    public List<Numeros> buscarNumeros() {
        return paisDatasource;
    }

    public void agregarNumero(Numeros numeros) {        
        //numeros.setId(paisDatasource.size() + 1);
        paisDatasource.add(numeros);
    }


}
