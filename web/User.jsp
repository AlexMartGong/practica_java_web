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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>
        <h1>User registrados</h1>
        <br>

        <div class="m-5">
            <table class="table table-striped table-hover table-bordered">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Lastname</th>
                    <th>Email</th>
                    <th style="text-align: center">Rol</th>
                    <th style="text-align: center">Estatus</th>
                    <th style="text-align: center">Tareas</th>
                </tr>
                <c:forEach items="${user}" var="user">
                    <tr>
                        <td>${user.getId()}</td>
                        <td>${user.getName()}</td>
                        <td>${user.getLastName()}</td>
                        <td>${user.getEmail()}</td>
                        <td style="text-align: center">${user.getRol()}</td>
                        <td style="text-align: center">
                            <c:if test="${user.isEstatus() == true}">
                                <i class="text-success fa-solid fa-user-check"></i>
                            </c:if>
                            <c:if test="${user.isEstatus() == false}">
                                <i class="text-danger fa-solid fa-user-slash"></i>
                            </c:if>
                        </td>
                        <td style="text-align: center">
                            <a href="Modify?Id=${user.getId()}"><i class="text-primary fa-solid fa-user-pen"></i></a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="delete?Id=${user.getId()}"><i class="text-danger fa-solid fa-user-minus"></i></a>
                        </td>
                    </tr>
                </c:forEach>

            </table>
        </div>
    </body>
</html>