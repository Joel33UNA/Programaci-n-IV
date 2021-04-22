<%-- 
UNIVERSIDAD NACIONAL DE COSTA RICA
EIF-209  -  PROGRAMACIÓN IV
PROYECTO I
ESTUDIANTE: JOEL ZAMORA Y DIEGO JIMÉNEZ
PROFESOR: JOSE SÁNCHEZ SALAZAR
--%>


<%@page import="presentation.curso.ModelCurso"%>
<% ModelCurso model = (ModelCurso)request.getAttribute("model"); %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="${pageContext.request.contextPath}/css/header.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cursos</title>
    </head>
    <body>
        <%@ include file="/presentation/header.jsp" %>
        <h1>¡Aquí los cursos disponibles!</h1>
        <h2>Dele clic al nombre del curso para matricular si así lo desea.</h2>
        <table border>
            <thead>
                <tr >
                    <th>Temática</th> <th>Nombre</th> <th>Estatus</th>
                </tr>
            </thead>
            <tbody>
                <% for(int i = 0; i < model.getCursos().size(); i++){ %>
                <tr>
                    <td> <%= model.getCursos().get(i).getTematica() %> </td>
                    <td><a href="/"> <%= model.getCursos().get(i).getNombre() %> </a></td> 
                    <td> <%= model.getCursos().get(i).getEstatus()%> </td>
                </tr>
                <% } %>
            </tbody>
        </table>
        <div>
            <br> 
                Escriba aquí el nombre o la temática del curso que quiere buscar: 
                <input  type="text" name="buscar" value=" "></input>
                <input type="submit" value="Buscar" class="boton"></input>
            </br>
            
        </div>
        <%@ include file="/presentation/footer.jsp" %>
    </body>
</html>