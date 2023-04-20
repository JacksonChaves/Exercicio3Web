<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>

    <style>
        form{
            width: 300px;
            display: flex;
            flex-direction: column;
            gap: 25px;
        }
    </style>

</head>
<body>

    <form action="processa_vaga" method="post">
        <label>
            Nome:
            <input type="text" name="field_nome" value=" ">
        </label>

        <label>
            Data de nascimento:
            <input type="text" name="field_data" value=" ">
        </label>

        <div>
            <div>Idioma nativo: </div>
            <input type="radio" name="field_idioma" value="Portugues" checked>Português
            <input type="radio" name="field_idioma" value="Espanhol">Espanhol
            <input type="radio" name="field_idioma" value="Ingles">Inglês
        </div>

        <div>
            <div>idioma nativo: </div>
            <input type="checkbox" name="field_habilidades" value="Java" checked>Java
            <input type="checkbox" name="field_habilidades" value="Javascript">Javascript
            <input type="checkbox" name="field_habilidades" value="Html">Html
            <input type="checkbox" name="field_habilidades" value="Css">Css

        </div>
        <label>
            <input type="submit" value="aplicar">
        </label>
        <label>
            <input type="reset">
        </label>
    </form>
</body>
</html>