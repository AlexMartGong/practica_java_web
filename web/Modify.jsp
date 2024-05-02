<%-- 
    Document   : Modify
    Created on : 29 abr. 2024, 10:46:41
    Author     : te210
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                    <form action="UserModify" method="POST" id="save">
                        
                        
                        
                        <input class="form-control" type="hidden" name="Id" value="${user.getId()}" id="Id">
                        <input class="form-control" type="hidden" name="Estatus" value="${user.isEstatus()}" id="Estatus">
                        
                        <div class="row m-2">

                            <div class="col-sm-12 col-md-6 col-lg-5">

                                <label for="Name">Nombre</label>
                                <input class="form-control" type="text" name="Name" value="${user.getName()}" id="Name" placeholder="Ingresa name" required>

                            </div>

                            <div class="col-sm-12 col-md-6 col-lg-5">
                                <label for="Lastname">Apellido</label>
                                <input class="form-control" type="text" name="Lastname" value="${user.getLastName()}" id="Lastname" placeholder="Ingresa lastname" required>
                            </div>
                        </div>

                        <div class="row m-2">
                            <div class="col-lg-5 col-md-6">
                                <label for="Email">Email</label>
                                <input class="form-control" type="text" name="Email" value="${user.getEmail()}" id="Email" placeholder="Ingresa Imail" required>
                            </div>
                        </div>

                        <div class="row m-2">
                            <div class="col-lg-5 col-md-6">
                                <label for="Rol">Rol</label>
                                <select class="form-select mt-3" name="Rol" id="Rol">
                                    <c:if test="${user.getRol() == 1}">
                                        <option value="1" selected>Administrador</option>
                                        <option value="1">Usuario</option>
                                    </c:if>

                                    <c:if test="${user.getRol() == 2}">
                                        <option value="2" selected>Usuario</option>
                                        <option value="2">Administrador</option>
                                    </c:if>
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
