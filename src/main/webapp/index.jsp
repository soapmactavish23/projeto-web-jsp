<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
%>

<!DOCTYPE html>
<html>
<head>
    <title>Primeiro Projeto</title>
    <link href="./css/estilo.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body id="body">
<div id="login">
    <div class="container">
        <div id="login-row" class="row justify-content-center align-items-center">
            <div id="login-column" class="col-md-6">
                <div id="login-box" class="col-md-12">
                    <form id="login-form" class="form" action="" method="post">
                        <h3 class="text-center text-info">Login</h3>
                        <div class="form-group">
                            <label for="txtusuario" class="text-info">Usuário:</label><br>
                            <input type="text" name="txtusuario" id="txtusuario" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="txtsenha" class="text-info">Senha:</label><br>
                            <input type="password" name="txtsenha" id="txtsenha" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="remember-me" class="text-info"><span>Lembrar-me</span> <span><input
                                    id="remember-me" name="remember-me" type="checkbox"></span></label><br>
                            <input type="submit" name="submit" class="btn btn-info btn-md" value="Entrar">
                        </div>
                        <div id="register-link" class="text-right">
                            <a href="#" class="text-info">Cadastrar-se</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <p align="center" class="text-light mt-2">
        <%
            String usuario = request.getParameter("txtusuario");
            String senha = request.getParameter("txtsenha");

            usuario = usuario == null ? "" : usuario;
            senha = senha == null ? "" : senha;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaweb?user=root&password12356");
                st = con.createStatement();
                rs = st.executeQuery("SELECT * FROM usuarios");

                while(rs.next()) {
                    out.print(rs.getString(2));
                }
            } catch (Exception e) {
                out.print(e.toString());
            }

            if(usuario.equals("") || senha.equals("")) {
                out.print("Preencha os Dados");
            } else {
                if(usuario.equals("Henrick") && senha.equals("123")) {
                    response.sendRedirect("usuarios.jsp");
                } else {
                    out.print("Dados incorretos");
                }
            }
        %>
    </p>
</div>
</body>
</html>