<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cadastro - Vinheria Agnello</title>
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
      
      .signup-container {
        max-width: 650px;
        padding: 4rem auto;
        margin: 0 auto;
        padding: 2rem;
        border-radius: 8px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        background-color: white;
        height: 100%;
      }
      
      .signup-title {
        font-family: "Sackers Gothic Std", sans-serif;
        text-align: center;
        margin-bottom: 2rem;
        color: #8b0000;
      }
      
      .form-group {
        margin-bottom: 1.5rem;
      }
      
      .btn-signup {
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
      
      .btn-signup:hover {
        background-color: #6d0000;
      }
      
      .login-link {
        text-align: center;
        margin-top: 1.5rem;
      }
      
      .login-link a {
        color: #8b0000;
        text-decoration: none;
        font-weight: bold;
      }
      
      .login-link a:hover {
        text-decoration: underline;
      }
      
      .form-section {
        margin-bottom: 2rem;
      }
      
      .section-title {
        font-family: "Sackers Gothic Std", sans-serif;
        color: #8b0000;
        margin-bottom: 1rem;
        padding-bottom: 0.5rem;
        border-bottom: 1px solid #dee2e6;
      }
    </style>
  </head>
  <body>
    <jsp:include page="header.jsp" />
    
    <div class="overall-container">
      <div class="signup-container">
        <h2 class="signup-title">CRIAR CONTA</h2>
        
        <% if(request.getAttribute("error") != null) { %>
          <div class="alert alert-danger" role="alert">
            <%= request.getAttribute("error") %>
          </div>
        <% } %>
        
        <form action="signup" method="post">
          <div class="form-section">
            <h4 class="section-title">Informações Pessoais</h4>
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label for="nome">Nome completo</label>
                  <input type="text" class="form-control" id="nome" name="nome" required>
                </div>
              </div>
              
              <div class="col-md-6">
                <div class="form-group">
                  <label for="cpf">CPF</label>
                  <input type="text" class="form-control" id="cpf" name="cpf" required>
                </div>
              </div>
            </div>
            
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label for="dataNascimento">Data de Nascimento</label>
                  <input type="date" class="form-control" id="dataNascimento" name="dataNascimento" required>
                </div>
              </div>
              
              <div class="col-md-6">
                <div class="form-group">
                  <label for="telefone">Telefone</label>
                  <input type="tel" class="form-control" id="telefone" name="telefone">
                </div>
              </div>
            </div>
          </div>
          
          <div class="form-section">
            <h4 class="section-title">Informações de Acesso</h4>
            <div class="form-group">
              <label for="email">E-mail</label>
              <input type="email" class="form-control" id="email" name="email" required>
            </div>
            
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label for="senha">Senha</label>
                  <input type="password" class="form-control" id="senha" name="senha" required>
                </div>
              </div>
              
              <div class="col-md-6">
                <div class="form-group">
                  <label for="confirmarSenha">Confirmar Senha</label>
                  <input type="password" class="form-control" id="confirmarSenha" name="confirmarSenha" required>
                </div>
              </div>
            </div>
          </div>
          
          <div class="form-check mb-3">
            <input class="form-check-input" type="checkbox" id="termos" name="termos" required>
            <label class="form-check-label" for="termos">
              Li e concordo com os <a href="#">Termos e Condições</a> e <a href="#">Política de Privacidade</a>
            </label>
          </div>
          
          <div class="form-check mb-3">
            <input class="form-check-input" type="checkbox" id="newsletter" name="newsletter">
            <label class="form-check-label" for="newsletter">
              Desejo receber novidades e promoções por e-mail
            </label>
          </div>
          
          <button type="submit" class="btn-signup">CRIAR CONTA</button>
        </form>
        
        <div class="login-link">
          <p>Já tem uma conta? <a href="signin.jsp">Entrar</a></p>
        </div>
      </div>
    </div>
    
    <jsp:include page="footer.jsp" />
    
    <script src="resources/js/bootstrap.bundle.min.js"></script>
  </body>
</html> 