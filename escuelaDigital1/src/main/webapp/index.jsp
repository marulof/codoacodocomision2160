<%-- 
    Document   : index
    Created on : Dec 19, 2021, 10:53:30 PM
    Author     : marul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <h1 class="text-center">Login</h1>
        
        
        <div class="container">
            <div class="row d-flex justify-content-center">
                <form class="p-5 w-50" action="AlumnosController?action=ingresar"method="POST">  
                   
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="text" class="form-control" id="email" name="email"/>
                      </div>
                     
                    <div class="mb-3">
                        <label for="pass" class="form-label">Contraseña</label>
                        <input type="text" class="form-control" id="pass" name="pass"/>
                        </div>
                       </div>
                    <button type="submit"class="btn btn-primary">Ingresar</button>
                </form>
            </div>
            
    </body>
</html>
