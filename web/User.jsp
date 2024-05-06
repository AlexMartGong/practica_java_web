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
        <h1 class="m-3">Usuarios registrados</h1>

        <br>

        <div class="m-5">
            <a href="AddUser.jsp" type="button" class="btn btn-secondary">
                <i class="fa-solid fa-user-plus"></i>
                Agregar Usuario</a>
        </div>

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
                        <td style="text-align: center">
                            <c:if test="${user.getRol() == 1}">
                                <i class="fa-solid fa-user-secret fa-2x"></i>
                            </c:if>

                            <c:if test="${user.getRol() == 2}">
                                <i class="fa-solid fa-user fa-2x"></i>
                            </c:if>
                        </td>
                        <td style="text-align: center">
                            <c:if test="${user.isEstatus() == true}">
                                <i class="text-success fa-solid fa-user-check fa-2x"></i>
                            </c:if>
                            <c:if test="${user.isEstatus() == false}">
                                <i class="text-danger fa-solid fa-user-slash fa-2x"></i>
                            </c:if>
                        </td>
                        <td style="text-align: center">
                            <a href="Modify?Id=${user.getId()}"><i class="text-primary fa-solid fa-user-pen fa-2x"></i></a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="javascript:Delete(${user.getId()}, '${user.getName()}', ${user.isEstatus()});"><i class="text-danger fa-solid fa-user-minus fa-2x"></i></a>
                        </td>
                    </tr>
                </c:forEach>

            </table>
        </div>

        <form action="Delete" method="POST">
            <input type="hidden" id="Id">
            <input type="hidden" id="Estatus">
        </form>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

        <script>
            //Function for delete
            function Delete(Id, name, Estatus) {

                var messaje = "";
                var messajeActiver = "";

                if (Estatus) {
                    messaje = "desactivar";
                    messajeActiver = "ya no podra logearse.";
                } else {
                    messaje = "activar";
                    messajeActiver = "podra logearse.";
                }

                Swal.fire({
                    title: "Deseas " + messaje + " a " + name + "?",
                    text: "El usuario " + messajeActiver,
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#3085d6",
                    cancelButtonColor: "#d33",
                    cancelCuttonText: "Cancelar",
                    confirmButtonText: "" + messaje.toUpperCase()
                }).then((result) => {
                    if (result.isConfirmed) {
                        document.getElementById("Id").value = Id;
                        document.getElementById("Estatus").value = Estatus;
                    }
                });
            }
        </script>
    </body>
</html>