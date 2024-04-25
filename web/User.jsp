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
                    <th>Rol</th>
                    <th>Estatus</th>
                </tr>
                <c:forEach items="${user}" var="user">
                    <tr>
                        <td>${user.getId()}</td>
                        <td>${user.getName()}</td>
                        <td>${user.getLastName()}</td>
                        <td>${user.getEmail()}</td>
                        <td>${user.getRol()}</td>
                        <td>
                            <c:if test="${user.isEstatus() == true}">
                                <i class="text-success fa-solid fa-user-check"></i>
                            </c:if>
                            <c:if test="${user.isEstatus() == false}">
                                <i class="text-danger fa-solid fa-user-slash"></i>
                            </c:if>
                        </td>
                    </tr>
                </c:forEach>

            </table>
        </div>
    </body>
</html>