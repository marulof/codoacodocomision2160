<%-- 
    Document   : alumnos
    Created on : Dec 23, 2021, 1:00:05 AM
    Author     : marul
--%>

<%@page import="modelo.*"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <title>Lista de Alumnos</title>
    </head>
    <body>
        <h1>Lista de Alumnos</h1>
        <div class="container">
            <div class="row d-flex justify-content-center">
                <a class="btn btn-primary w-25 m-3" href="AlumnosController?accion=nuevo" target="target">Agregar Alumno</a>
                <table class="table table-primary">
                    <thead>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Email</th>
                    <th>Telefono</th>
                    <th>Modificar</th>
                    <th>Eliminar</th>
                    </thead>
                    <tbody>
                      <% 
                            List<Alumnos> resultado = null;
                            AlumnosDAO alumno = new AlumnosDAO();
                            resultado = alumno.listarAlumnos();
                            
                            for (int i = 0; i < resultado.size(); i++) {
                                    String ruta = "AlumnosController?accion=modificar&id=" + resultado.get(i).getId();
                                    String rutaE = "AlumnosController?accion=eliminar&id=" + resultado.get(i).getId();
                                
                          %>
                          <tr>
                              <td><%=resultado.get(i).getId() %></td>
                              <td><%=resultado.get(i).getNombre() %></td>
                              <td><%=resultado.get(i).getApellido()%></td>
                              <td><%=resultado.get(i).getEmail()%></td>
                              <td><%=resultado.get(i).getTel()%></td>
                              <td> <a class="text-success" href=<%=ruta%>>X</a> </td>
                              <td> <a class="text-danger" href=<%=rutaE%>>X</a> </td>
                          </tr>
                        <%
                          }
                        %>
                    </tbody>
                </table>
            </div>   
        </div>
    </body>
</html>
