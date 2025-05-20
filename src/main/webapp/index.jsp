<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Primeiro Projeto</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <form method="post" action="index.jsp">
        <div class="mb-3">
            <label for="txtnome" class="form-label">Nome</label>
            <input class="form-control" id="txtnome" name="txtnome">
        </div>
        <button type="submit" class="btn btn-primary">Enviar</button>
    </form>
    <p class="text-muted mt-4">
        <%
            String nome = request.getParameter("txtnome");
            int idade = 25;

            out.print(nome);
        %>
    </p>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO"
        crossorigin="anonymous"></script>
</body>
</html>