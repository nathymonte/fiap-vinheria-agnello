<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Vinheria Agnello</title>
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" />
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

      body {
        font-family: "Sackers Gothic Std", serif;
      }

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
      .nav-link-custom {
        color: #4b0f26;
        text-decoration: none;
        font-size: 0.9rem;
      }
      .nav-link-custom:hover {
        text-decoration: underline;
      }

      a img {
        cursor: pointer;
      }
    </style>
  </head>
  <body>
    <div class="navbar-custom">
      <div class="container">
        <div class="row align-items-center">
          <!-- Esquerda -->
          <div class="col-4 d-flex align-items-center gap-3">
            <a class="btn-assinatura" href="#">Assinatura</a>
            <a class="nav-link-custom" href="produtos.jsp">Produtos</a>
          </div>

          <!-- Centro: Logo -->
          <div class="col-4 text-center">
            <a href="index.jsp">
              <img
                src="resources/img/slogan.png"
                alt="Vinheria Agnello"
                height="150"
              /><br />
            </a>
          </div>

          <!-- Direita -->
          <div
            class="col-4 d-flex align-items-center justify-content-end gap-3"
          >
            <a class="nav-link-custom" href="#"
              ><i class="bi bi-bag fs-5"></i> Carrinho</a
            >
            <a class="nav-link-custom" href="#"
              >Conta
              <i class="bi bi-person-circle fs-5"></i>
            </a>
          </div>
        </div>
      </div>
    </div>

    <script src="resources/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
