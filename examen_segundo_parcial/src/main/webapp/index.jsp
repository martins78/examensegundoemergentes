<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Seminario"%>
<%@page import="java.util.List"%>
<%
    List<Seminario> lista = (List<Seminario>) request.getAttribute("lista");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <tr>
                <th>SEGUNDO PARCIAL TEM 742<br>
                    NOMBRE: MARTIN VICTOR CALLE VERA<br>
                    CARNET: 8444180
                </th>
            </tr>
        </table>
        <h1>Registro de seminarios</h1>
        <p><a href="MainController?op=nuevo">Nuevo </a></p>
        <table border = "1">
            <tr>
                <th>Id</th>
                <th>TITULO</th>
                <th>EXPOSITOR</th>
                <th>FECHA</th>
                <th>HORAS</th>
                <th>CUPOS</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${lista}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.titulo}</td>
                    <td>${item.expositor}</td>
                    <td>${item.fecha}</td>
                    <td>${item.horas}</td>
                    <td>${item.cupos}</td>
                    <td><a href="MainController?op=editar&id=${item.id}">Editar</a></td>
                    <td><a href="MainController?op=eliminar&id=${item.id}"
                           onclick="return(confirm('Esta seguro???'))">Eliminar</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
