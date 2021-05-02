<%-- 
UNIVERSIDAD NACIONAL DE COSTA RICA
EIF-209  -  PROGRAMACIÓN IV
PROYECTO I
ESTUDIANTE: JOEL ZAMORA Y DIEGO JIMÉNEZ
PROFESOR: JOSE SÁNCHEZ SALAZAR
--%>

<%@page import="java.util.Map"%>
<%@page import="logic.Estudiante"%>
<%@page import="presentation.estudiante.ModelEst"%>
<% ModelEst model = (ModelEst)request.getAttribute("model"); %>
<% Map<String,String> grupo = (Map<String,String>)request.getAttribute("grupo");%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="${pageContext.request.contextPath}/css/header.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/css/curso.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Estudiantes a cargo</title>
    </head>
    <body>
        <%@ include file="/presentation/header.jsp" %>
        <h1>Aquí los estudiantes disponibles de este grupo</h1>
        <h2>Si desea agregar la nota del curso, haga clic en algún estudiante</h2>
        <table border>
            <thead>
                <tr >
                    <th>ID</th> <th>Nombre</th> <th>Correo</th> <th>Teléfono</th> 
                </tr>
            </thead>
            <tbody>
                <% for(Estudiante estudiante : model.getEstudiantes()){ %>
                    <tr>
                        <td><%=estudiante.getId()%></td> 
                        <td><a href="/CursosLibres/presentation/profesor/agregarnota?id=<%=estudiante.getId()%>&grupo=<%=grupo.get("grupo")%>"><%=estudiante.getNombre()%></a></td>
                        <td><%=estudiante.getCorreo()%></td>
                        <td><%=estudiante.getTelefono()%></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
        <%@ include file="/presentation/footer.jsp" %>
    </body>
</html>
