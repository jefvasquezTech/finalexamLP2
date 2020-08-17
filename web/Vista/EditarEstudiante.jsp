
<%@page import="Modelo.Estudiante"%>
<%@page import="ModeloDAO.EstudianteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Estudiante</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="index.html">SIGU</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                  <ul class="navbar-nav">
                    <li class="nav-item active">
                      <a class="nav-link" href="ControladorEstudiantes?f_accion=listarestudiante">Estudiantes <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="ControladorCursos?f_accion=listarcurso">Cursos</a>
                    </li>
                    <li class="nav-item  active">
                     <a class="nav-link" href="ControladorCarrera?f_accion=listarcarrera">Carrera<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="ControladorMatricula?f_accion=listarmatricula">Matricula <span class="sr-only">(current)</span></a>
                    </li>
                  </ul>
                </div>
              </nav>
        <div class="container">
            <%
                EstudianteDAO estudianteDAO = new EstudianteDAO();
                int s_idestudiante = Integer.valueOf(request.getParameter("f_idestudiante"));
                Estudiante estudiante = (Estudiante)estudianteDAO.buscarestudiante(s_idestudiante);
            %>
            <form name="EditarEstudianteForm" action="ControladorEstudiantes" method="get">
                <table  class="table">
                    <thead>
                        <tr>
                            <th class="text-center" colspan="2">Editar Estudiante</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-right">Nombre</td>
                            <td><input class="form-control" type="text" name="f_nombre" value="<% out.println(estudiante.getNombre()); %>" maxlength="30" size="20" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">"Apellido</td>
                            <td><input class="form-control" type="text" name="f_apellidos" value="<% out.println(estudiante.getApellidos()); %>" maxlength="40" size="20" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">DNI</td>
                            <td><input class="form-control" type="text" name="f_dni" value="<% out.println(estudiante.getDni()); %>" maxlength="8" size="8" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Codigo</td>
                            <td><input class="form-control" type="text" name="f_codigo" value="<% out.println(estudiante.getCodigo()); %>" maxlength="12" size="12" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Estado</td>
                            <td><input class="form-control" type="text" name="f_estado" value="<% out.println(estudiante.getEstado()); %>" maxlength="1" size="2" /></td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-center">
                                <input class="btn btn-primary" type="submit" value="Editar Estudiante" name="editar" />
                                <input type="hidden" value="editarestudiante02" name="f_accion"/>
                                <input type="hidden" value="<% out.print(estudiante.getIdestudiante()); %>" name="f_idestudiante">

                            </td>
                        </tr>

                    </tbody>
                </table>


            </form>
        </div>
    </body>
</html>
