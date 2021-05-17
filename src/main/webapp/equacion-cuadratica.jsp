<%-- 
    Document   : equacion-cuadratica
    Created on : 16/05/2021, 03:13:06
    Author     : Leticia Boch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Equacion Cuadratica</title>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </head>
    <body>
        <h1>
            Insertar Numeros
            <br /><!-- comment -->
            <br /><!-- comment -->
        </h1>
        
        <form action="crear-numero.html" method="POST">

            <label>Primer numero</label> 
            <input type="number" name="primero" id="nombre" required="true" />
            <br /><!-- comment -->
            <label>Segundo numero</label>
            <input type="number" name="segundo" required="true" />
            <br /><!-- comment -->
            <label>Tercer numero</label>
            <input type="number" name="tercero" required="true" />
            <br /><!-- comment -->
            <input type="submit" value="Enviar" />

        </form>

        <% if (request.getAttribute("mensaje") != null && request.getAttribute("mensaje2") != null) {%>
        <div><%=request.getAttribute("mensaje")%> <br /> <%=request.getAttribute("mensaje2")%></div>
        <%}%>
        <br /><!-- comment -->
        <br /><!-- comment -->
        <ul>
            <li>
                <a href="numeros.html"> Ver Listado de numeros</a>
            </li>
            <li>
                <a href="index.html"> Menu</a>
            </li>
        </ul>
    </body>
</html>
