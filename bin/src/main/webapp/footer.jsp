<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Footer</title>
    <link href="resources/css/footer.css" rel="stylesheet" />
    <style>
      @font-face {
        font-family: "Sackers Gothic Std";
        src: url("resources/fonts/sackersgothicstd-medium.otf")
          format("opentype");
        font-weight: normal;
        font-style: normal;
      }
    </style>
  </head>
  <body>
    <div class="footer-custom d-none d-md-block">
      <div class="container">
        <div class="row align-items-start">
          <!-- Esquerda -->
          <div class="col-4">
            <h3 class="footer-title">Vinheria Agnello</h3>
            <a class="footer-link-custom" href="sobre.jsp">SOBRE NÓS</a>
            <a class="footer-link-custom" href="produtos.jsp">PRODUTOS</a>
            <a class="footer-link-custom" href="">ASSINATURA</a>
            <a class="footer-link-custom" href="">NOSSOS ARTIGOS</a>
          </div>
          <!-- Centro -->
          <div class="col-4">
            <h3 class="footer-title">Contato</h3>
            <div class="footer-info-line">
              <i class="bi bi-envelope fs-6"></i
              ><span class="footer-p-custom">VINHERIAAGNELLO@FIAP.COM</span>
            </div>
            <div class="footer-info-line">
              <i class="bi bi-geo-alt-fill fs-6"></i
              ><span class="footer-p-custom"
                >Av. Paulista, 1106 - 7º andar - Bela Vista, São Paulo -
                Brasil</span
              >
            </div>
            <div class="footer-info-line">
              <i class="bi bi-telephone fs-6"></i
              ><span class="footer-p-custom">(11) 3385-8010</span>
            </div>
          </div>
          <!-- Direito -->
          <div class="col-4 footer-newsletter">
            <h3 class="footer-title">
              Cadastre seu e-mail e receba notícias e promoções
            </h3>
            <input
              type="email"
              placeholder="Coloque seu email"
              class="footer-input"
            />
            <button class="btn-footer">Inscreva-se</button>
            <div class="footer-midia-icons mt-3">
              <i class="bi bi-facebook fs-6"></i>
              <i class="bi bi-instagram fs-6"></i>
              <i class="bi bi-twitter fs-6"></i>
              <i class="bi bi-youtube fs-6"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Footer mobile -->
    <div class="footer-mobile d-md-none">
      <a href="#"><i class="bi bi-bag"></i></a>
      <a href="#"><i class="bi bi-house"></i></a>
      <a href="#"><i class="bi bi-gear"></i></a>
    </div>

    <script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
    <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
  </body>
</html>
