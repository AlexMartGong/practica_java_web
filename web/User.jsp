<%-- 
    Document   : User
    Created on : 24 abr. 2024, 16:12:01
    Author     : te210
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User</title>
    </head>
    <body>
        <h1>User registrados</h1>
        <br>
        <table border="2" border-radius="Jpx">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Lastname</th>
                <th>Email</th>
                <th>Rol</th>
                <th>Estatus</th>
            </tr>
            <c:forEach items="$user" var="user">
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </c:forEach>

        </table>
    </body>
</html>