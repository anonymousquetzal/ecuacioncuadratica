<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Results</title>
         <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </head>
    <body>
        <h1>Listado de Resultados</h1>

        <table class="table table-dark"> 

            <thead>
                <tr>
                    <th>Primer numero </th>
                    <th>Segundo numero </th>
                    <th>Tercer numero </th>
                    <th>Resultado</th>
                </tr>
            </thead>
            <tbody>                                
            <c:forEach items="${numeroList}" var="numero">
                <tr>
                    <td><c:out value="${numero.primero}" /></td>
                    <td><c:out value="${numero.segundo}" /></td>
                    <td><c:out value="${numero.tercero}" /></td>
                    <td><c:out value="${numero.message}" /></td>

                    <!-- <td><fmt:formatNumber value="${pais.ranking}" pattern="'R' #,##0.000" /></td> -->
                </tr>
            </c:forEach>
        </tbody>

    </table>

   

    <br /><!-- comment -->
    <br /><!-- comment -->
    <ul>
        <li>
            <a href="crear-numero.html"> Agregar numeros</a>
        </li>
        <li>
            <a href="index.html"> Menu</a>
        </li>
    </ul>
</body>
</html>
