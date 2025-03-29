<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vinheria Agnello</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/bootstrap-icons.css" rel="stylesheet">
<style>
    .navbar-custom {
      background: linear-gradient(to bottom, #d5c4aa, #f4e8cf);
      padding: 15px 0;
    }
    .btn-assinatura {
      background-color: #4b0f26;
      color: white;
      font-size: 0.9rem;
      border-radius: 10px;
      padding: 6px 14px;
      text-decoration: none;
    }
    .logo-text {
      font-family: 'Georgia', serif;
      font-weight: bold;
      font-size: 1.5rem;
      color: #4b0f26;
      line-height: 1.1;
      text-align: center;
      margin: 0;
    }
    .nav-link-custom {
      color: #4b0f26;
      text-decoration: none;
      font-size: 0.9rem;
    }
    .nav-link-custom:hover {
      text-decoration: underline;
    }
</style>
</head>
<body>
<div class="navbar-custom">
    <div class="container">
      <div class="row align-items-center">

        <!-- Esquerda -->
        <div class="col-4 d-flex gap-3">
          <a class="btn-assinatura" href="#">Assinatura</a>
          <a class="nav-link-custom" href="#">Produtos</a>
        </div>

        <!-- Centro: Logo -->
        <div class="col-4 text-center">
          <img src="resources/img/logo.png" alt="Vinheria Agnello" height="100"><br>          
        </div>

        <!-- Direita -->
        <div class="col-4 d-flex justify-content-end gap-3">
          <a class="nav-link-custom" href="#"><i class="bi bi-bag"></i> Carrinho</a>
          <a class="nav-link-custom" href="#"><i class="bi bi-person-circle"></i> Conta</a>
        </div>

      </div>
    </div>
  </div>

  <script src="resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>