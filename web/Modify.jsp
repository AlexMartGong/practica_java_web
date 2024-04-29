<%-- 
    Document   : Modify
    Created on : 29 abr. 2024, 10:46:41
    Author     : te210
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
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
                                <a href="index.html" class="btn btn-danger">CANCELAR</a>
                            </div>
                        </div>

                    </form>
            </div>
        </div>
        <a href="javascript:validaEmail()">PRUEBA</a>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </body>
</html>
