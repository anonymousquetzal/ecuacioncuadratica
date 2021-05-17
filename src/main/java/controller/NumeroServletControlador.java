/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import servicio.NumeroServicio;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import modelo.Numeros;

/**
 *
 * @author Leticia Boch
 */
@WebServlet(name = "NumerosCrearServlet", urlPatterns = {"/crear-numero.html"})
public class NumeroServletControlador extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
          request.setAttribute("mensaje", "");
        
        request.getRequestDispatcher("equacion-cuadratica.jsp").forward(request, response);
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            Numeros numero = new Numeros();
            NumeroServicio numeroServicio = new NumeroServicio();
            
            numero.setPrimero(Double.valueOf(request.getParameter("primero")));
            numero.setSegundo(Double.valueOf(request.getParameter("segundo")));
            numero.setTercero(Double.valueOf(request.getParameter("tercero")));
            double subtotal =0;
            String tempString = "";
            
            //subtotal = Math.sqrt((numero.getSegundo() * numero.getSegundo()) -4* numero.getPrimero()* numero.getTercero());
            subtotal = Math.pow(numero.getSegundo(), 2) -(4*numero.getPrimero()*numero.getTercero());
            
            if (subtotal > 0) {
                numero.setResultado((-numero.getSegundo() + Math.pow(subtotal, .5))/(2*numero.getPrimero()));
                numero.setResultado2((-numero.getSegundo() - Math.pow(subtotal, .5))/(2*numero.getPrimero()));
                tempString = "X son : " + numero.getResultado() + " y " + numero.getResultado2();
            } else if(subtotal == 0){    
                numero.setResultado(-numero.getSegundo() / (2 * numero.getPrimero()));
                tempString = "X es : " + numero.getResultado();
            } else {
                tempString = "No hay raices reales";
            }
            //subtotal = -numero.getSegundo() + subtotal;
            //subtotal = subtotal/(2*numero.getPrimero());
            //numero.setResultado(subtotal);

            numero.setMessage(tempString);
            numeroServicio.agregarNumero(numero);
            
            request.setAttribute("mensaje", "Para  " 
                    + numero.getPrimero() + ", "
                    + numero.getSegundo() + ", "
                    + numero.getTercero());
            request.setAttribute("mensaje2", tempString);
            
            request.getRequestDispatcher("equacion-cuadratica.jsp").forward(request, response);
        } catch (Exception ex) {
            request.setAttribute("error", ex.getMessage());
            //request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
    
    
    
}
