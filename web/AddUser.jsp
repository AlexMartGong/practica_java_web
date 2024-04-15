<%-- 
    Document   : adduser
    Created on : 14 mar. 2024, 07:31:53
    Author     : AlexMG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Usuario</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <!--
    <%
        Date date = new Date();
        SimpleDateFormat ft = new SimpleDateFormat("dd/MM/yyyy");
        String dateMexico = ft.format(date);
        String name = "Alex MG";
    %>
    
    <h2>
        Fecha: <%=dateMexico%>
        Nombre: <%=name%>
    </h2>
    -->

    <div class="card border-dark m-3">
        <div class="card-header">
            <b>Informacion Usuario</b>
        </div>
        <div class="cord-boby">
            <body>
                <form action="SaveUser" method="POST" id="save">
                    <div class="row m-2">

                        <div class="col-sm-12 col-md-6 col-lg-5">

                            <label for="Name">Nombre</label>
                            <input class="form-control" type="text" name="Name" value="" id="Name" placeholder="Ingresa name" required>

                        </div>

                        <div class="col-sm-12 col-md-6 col-lg-5">
                            <label for="Lastname">Apellido</label>
                            <input class="form-control" type="text" name="Lastname" value="" id="Lastname" placeholder="Ingresa lastname" required>
                        </div>
                    </div>

                    <div class="row m-2">
                        <div class="col-lg-5 col-md-6">
                            <label for="Email">Email</label>
                            <input class="form-control" type="text" name="Email" value="" id="Email" placeholder="Ingresa Imail" required>
                        </div>
                    </div>

                    <div class="row m-2">
                        <div class="col-lg-5 col-md-6">
                            <select class="form-select mt-3" name="Rol" id="Rol">
                                <option value="1">Administrador</option>
                                <option value="2">Usuario</option>
                            </select>
                        </div>
                    </div>

                    <div class="row m-2">
                        <div class="col-lg-6 col-md-6">
                            <input type="submit" value="GUARDAR" class="btn btn-success" onclick="javascript: validaEmail(); return false">
                            <a href="#" class="btn btn-danger">CANCELAR</a>
                        </div>
                    </div>

                </form>
        </div>
    </div>
    <a href="javascript:validaEmail()">PRUEBA</a>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>

                                function validaEmail() {
                                    var email = document.getElementById('Email');
                                    var validEmail = /^\w+([.-_+]?\w+)@\w+([.-]?\w+)(\.\w{2,10})+$/;

                                    if (validEmail.test(email.value)) {
                                        document.getElementById("save").submit();
                                        //return true;
                                    } else {
                                        alert('Email no valido');
                                        //return false;
                                    }
                                }

                                $(document).ready(function () {
                                    var queryDict = {}
                                    location.search.substr(1).split("&").forEach(function (item) {
                                        queryDict[item.split("=")[0]] = item.split("=")[1]
                                    })
                                    console.log(queryDict);
//
                                    Swal.fire({
                                        position: "top-end",
                                        icon: "success",
                                        title: "Add user",
                                        showConfirmButton: false,
                                        timer: 1500
                                    });
//
                                    Swal.fire({
                                        icon: "error",
                                        title: "Oops...",
                                        text: "Something went wrong!",
                                        footer: '<a href="#">Why do I have this issue?</a>'
                                    });
                                });



    </script>
</body>
</html>