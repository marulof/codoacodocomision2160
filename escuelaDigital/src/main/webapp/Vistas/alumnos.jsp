<%-- 
    Document   : alumnos
    Created on : Dec 18, 2021, 3:35:46 PM
    Author     : marul
--%>


<%@page import="modelo.AlumnosDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Alumnos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Alumnos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <h1> Lista de Alumnos</h1>
        <div class="container">
            <div class="row">
                <a class="btn btn-primary w-25 m-3" 
                   href="AlumnosController?accion=nuevo">Agregar Alumno</a>
                <table class="table table-primary"
                <thead>
                <th>Id</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Email</th>
                <th>Telèfono</th>
                <th>Modificar</th>
                <th>Eliminar</th>
                </thead>
                
                <tbody>
                <%
                    List<Alumnos>resultado=null;
                    AlumnosDAO alumno= new AlumnosDAO();
                    resultado=alumno.listarAlumnos();
                    
                    for(int a=0; a<resultado.size; a++){
                    String ruta="AlumnosController?accion=modificar&id="+resultado.get(a).getId();
                    String rutaE="AlumnosController?accion=eliminar&id="+resultado.get(a).getId();
                    %>
                    <tr>
                        <td>
                            <%=resultado.get(a).getId()%>
                            <%=resultado.get(a).getNombres()%>
                            <%=resultado.get(a).getApellidos()%>
                            <%=resultado.get(a).getEmail()%>
                            <%=resultado.get(a).getTelefono()%>
                        <td><a class= "text-success" href=<%=ruta%>>x</a></td>
                        <td><a class= "text-danger" href=<%=rutaE%>>x</a></td>
                    </tr>
                    <%
                    }
                    %>

                    %>
                    %>
                </tbody>
            </div>
            
        </div>
    </body>
</html>
