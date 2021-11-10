<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Seminario"%>
<%
    Seminario sem = (Seminario) request.getAttribute("sem");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> 
            <c:if test="${sem.id == 0}">
                Nuevo
            </c:if>
                
            <c:if test="${sem.id != 0}">
                Editar
            </c:if>
            Seminario</h1>
        <form action="MainController" method="post">
            <table>
                <input type="hidden" name="id" value="${sem.id}">
                <tr>
                    <td>Titulo</td>
                    <td><input type="text" name="titulo" value="${sem.titulo}"></td>
                </tr>
                <tr>
                    <td>Expositor</td>
                    <td><input type="text" name="expositor" value="${sem.expositor}"></td>
                </tr>
                <tr>
                    <td>Fecha</td>
                    <td><input type="text" name="fecha" value="${sem.fecha}"></td>
                </tr>
                <tr>
                    <td>Horas</td>
                    <td><input type="text" name="horas" value="${sem.horas}"></td>
                </tr>
                <tr>
                    <td>Cupos</td>
                    <td><input type="text" name="cupos" value="${sem.cupos}"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
