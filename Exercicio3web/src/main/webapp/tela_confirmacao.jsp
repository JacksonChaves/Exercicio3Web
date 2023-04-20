<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String nome = (String) request.getAttribute("attr_nome");
    LocalDate data = (LocalDate)  request.getAttribute("attr_data");

    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");

    String dataFormatada = data.format(formatter);

    String idioma = (String) request.getAttribute("attr_idioma");
    String[] habilidades = (String[]) request.getAttribute("attr_habilidades");

%>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <h1>CADASTRO SUBMETIDO</h1>
    <ul>
        <li><% out.print(nome);%></li>
        <li><% out.print(dataFormatada);%></li>
        <li><% out.print(idioma);%></li>
        <ul>
            <% for (String habilidade: habilidades){ %>
                <li><% out.print(habilidade);%></li>
            <%}%>
        </ul>
    </ul>

</body>
</html>
