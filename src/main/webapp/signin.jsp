<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="br.edu.fiap.ideaseeders.vinheria.model.User" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login - Vinheria Agnello</title>
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="resources/css/header.css" rel="stylesheet" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
      rel="stylesheet"
    />
    <style>
      @font-face {
        font-family: "Sackers Gothic Std";
        src: url("resources/fonts/sackersgothicstd-medium.otf")
          format("opentype");
        font-weight: normal;
        font-style: normal;
      }

      .overall-container {
        background-size: cover;
        background-position: center;
        background-image: url(resources/img/fundoprodutos.jpg);
        min-height: 100vh;
        display: flex;
        align-items: center;
      }
      
      .login-container {
        max-width: 450px;
        padding: 4rem auto;
        margin: 0 auto;
        padding: 2rem;
        border-radius: 8px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        background-color: white;
        height: 100%;
      }
      
      .login-title {
        font-family: "Sackers Gothic Std", sans-serif;
        text-align: center;
        margin-bottom: 2rem;
        color: #8b0000;
      }
      
      .form-group {
        margin-bottom: 1.5rem;
      }
      
      .btn-login {
        background-color: #8b0000;
        color: white;
        width: 100%;
        padding: 0.75rem;
        font-weight: bold;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        margin-top: 1rem;
      }
      
      .btn-login:hover {
        background-color: #6d0000;
      }
      
      .signup-link {
        text-align: center;
        margin-top: 1.5rem;
      }
      
      .signup-link a {
        color: #8b0000;
        text-decoration: none;
        font-weight: bold;
      }
      
      .signup-link a:hover {
        text-decoration: underline;
      }

      .logout-message {
        text-align: center;
        margin-bottom: 2rem;
      }

      .btn-logout {
        background-color: #8b0000;
        color: white;
        width: 50%;
        padding: 0.75rem;
        font-weight: bold;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        margin: 2rem auto;
        display: block;
      }

      .btn-logout:hover {
        background-color: #6d0000;
      }
    </style>
  </head>
  <body>
    <jsp:include page="header.jsp" />
    
    <div class="overall-container">
      <div class="login-container">
        <% 
          // Check if user is already logged in, using the same approach as header.jsp
          User loggedInUser = (User) session.getAttribute("user");
          if (loggedInUser != null) { 
        %>
          <h2 class="login-title">VOCÊ JÁ ESTÁ LOGADO</h2>
          
          <div class="logout-message">
            <p>Você já está autenticado no sistema.</p>
            <p>Para entrar com outra conta, é necessário sair da sua sessão atual.</p>
          </div>
          
          <a href="api/logout" class="btn-logout">SAIR DA CONTA</a>
        <% } else { %>
          <h2 class="login-title">ENTRAR NA CONTA</h2>
          
          <% if(request.getAttribute("error") != null) { %>
            <div class="alert alert-danger" role="alert">
              <%= request.getAttribute("error") %>
            </div>
          <% } %>
          
          <form action="signin" method="post">
            <div class="form-group">
              <label for="email">E-mail</label>
              <input type="email" class="form-control" id="email" name="email" required>
            </div>
            
            <div class="form-group">
              <label for="password">Senha</label>
              <input type="password" class="form-control" id="password" name="password" required>
            </div>
            
            <div class="form-check mb-3">
              <input class="form-check-input" type="checkbox" id="remember" name="remember">
              <label class="form-check-label" for="remember">
                Lembrar de mim
              </label>
            </div>
            
            <button type="submit" class="btn-login">ENTRAR</button>
          </form>
          
          <div class="signup-link">
            <p>Não tem uma conta? <a href="signup.jsp">Cadastre-se</a></p>
            <a href="#">Esqueceu sua senha?</a>
          </div>
        <% } %>
      </div>
    </div>
    
    <jsp:include page="footer.jsp" />
    
    <script src="resources/js/bootstrap.bundle.min.js"></script>
  </body>
</html> 