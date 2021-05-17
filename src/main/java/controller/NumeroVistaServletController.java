/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import servicio.NumeroServicio;
import java.util.Date;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *
 * @author Leticia Boch
 */
@WebServlet(name = "NumerosServletControlador", urlPatterns = {"/numeros.html"})
public class NumeroVistaServletController extends HttpServlet{
    
    private final NumeroServicio numeroServicio = new NumeroServicio();
    
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        var numeroList = this.numeroServicio.buscarNumeros();

        request.setAttribute("numeroList", numeroList);
        //request.setAttribute("currentDate", new Date());

        request.getRequestDispatcher("numeros.jsp").forward(request, response);
    }
    
}
