<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Footer</title>
    <style>
      @font-face {
        font-family: "Sackers Gothic Std";
        src: url("resources/fonts/sackersgothicstd-medium.otf")
          format("opentype");
        font-weight: normal;
        font-style: normal;
      }

      .footer-custom {
        background-color: #4b0f26;
        padding: 15px 0;
        font-family: "Sackers Gothic Std", serif;
      }
     

      .footer-title {
        color: #f4e8cf;
        text-decoration: none;
        font-size: 0.9rem;
        display: block;
        padding: 10px;
        padding-left: 0;
      }

      .footer-link-custom {
        color: #f4e8cf;
        text-decoration: none;
        font-size: 0.6rem;
        display: block;
        padding: 2px;
        margin-left: 10px;
        padding-left: 0;
      }      

      .footer-p-custom {
        color: #f4e8cf;
        text-decoration: none;
        font-size: 0.6rem;
        display: block;
      }

      .footer-custom i{
        color: #f4e8cf;
      }

      .footer-input{
        padding: 6px;
        font-size: 0.6rem;
        margin-right: 10px;
        border: none;
        border-radius: 4px;
      }

      .btn-footer{
        padding: 6px 12px;
        background-color: #f4e8cf;
        color: #4b0f26;
        font-size: 0.6rem;
        border: none;
        border-radius: 4px;
        cursor: pointer;
      }

      .btn-footer:hover{
        background-color: #e0d6bf;
      }

      .footer-midia-icons i{
        color: #f4e8cf;
        font-size: 1rem;
        margin-right: 10px;
        cursor: pointer;
      }

      .footer-info-line{
        display: flex;
        align-items: flex-start;
        margin-bottom: 8px;
      }

      .footer-info-line i{
        margin-right: 10px;
        font-size: 0.8rem;
        line-height: 1.1;
        flex-shrink: 0;
      }

      .footer-info-line span{
        margin: 0;        
      }

      .footer-newsletter{
        padding-left: 20px;
      }

    </style>
  </head>
  <body>
    <div class="footer-custom">
      <div class="container">
        <div class="row align-items-start">
          <!-- Esquerda -->
          <div class="col-4">
            <h3 class="footer-title"">Vinheria Agnello</h3>
            <a class="footer-link-custom" href="">SOBRE NÓS</a>
            <a class="footer-link-custom" href="produtos.jsp">PRODUTOS</a>
            <a class="footer-link-custom" href="">ASSINATURA</a>
            <a class="footer-link-custom" href="">NOSSOS ARTIGOS</a>
          </div>
          <!-- Centro -->
          <div class="col-4">            
            <h3 class="footer-title">Contato</h3>
            <div class="footer-info-line">
                <i class="bi bi-envelope fs-6"></i><span class="footer-p-custom">VINHERIAAGNELLO@FIAP.COM</span>
            </div>    
            <div class="footer-info-line">
                <i class="bi bi-geo-alt-fill fs-6"></i><span class="footer-p-custom">Av. Paulista, 1106 - 7º andar - Bela Vista, São Paulo - Brasil</span>
            </div>  
            <div class="footer-info-line">
                <i class="bi bi-telephone fs-6"></i><span class="footer-p-custom">(11) 3385-8010</span>
            </div> 
          </div>
          <!-- Direito -->
          <div class="col-4 footer-newsletter">
            <h3 class="footer-title">Cadastre seu e-mail e receba notícias e promoções</h3>
            <input type="email" placeholder="Coloque seu email" class="footer-input" /> <button class="btn-footer">Inscreva-se</button>          
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

    <script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
    <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
  </body>
</html>
