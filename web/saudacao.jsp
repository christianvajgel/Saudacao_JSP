<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.time.LocalTime" %>

<%
LocalTime hora = LocalTime.now();
LocalTime diaMin = LocalTime.of(05, 00, 00);
LocalTime diaMax = LocalTime.of(11, 59, 59);
LocalTime tardeMin = LocalTime.of(12, 00, 00);
LocalTime tardeMax = LocalTime.of(17, 59, 59);
String nome = request.getParameter("nome");
String titulo = request.getParameter("uf");
String periodo = ""; 

if (hora.isAfter(diaMin) && hora.isBefore(diaMax)){
    periodo = " dia";
} else if(hora.isAfter(tardeMin) && hora.isBefore(tardeMax)){
    periodo = " tarde";
} else {
    periodo = " noite";
}
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bem-vindo</title>
    </head>
    <body>
        <h2>Boa <%= periodo%>, <%= titulo%> <%= nome%>.</h2><br/>
        <h3>São <%= hora%>.</h3>
    </body>
</html>
