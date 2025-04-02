<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>AboutPageContent</title>

    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }

      @font-face {
        font-family: "Sackers Gothic Std";
        src: url("resources/fonts/sackersgothicstd-medium.otf")
          format("opentype");
        font-weight: normal;
        font-style: normal;
      }

      @font-face {
        font-family: "GFS Didot";
        src: url("resources/fonts/GFSDidot-Regular.ttf") format("opentype");
        font-weight: normal;
        font-style: normal;
      }

      html,
      body {
        height: 100%;
      }

      #container {
        min-height: 100vh;
        display: flex;
        flex-direction: row;
        align-items: stretch;
        justify-content: space-between;
        flex-wrap: wrap;
        background-color: #f4e8cf;
      }

      #left {
        display: flex;
        flex-direction: column;
        width: 10%;
      }
      #left img {
        width: 300px;
      }

      #middle {
        display: flex;
        flex-direction: column;
        align-items: center;
        width: 50%;
        gap: 50px;
        margin-top: 100px;
      }

      #middle img {
        width: 375px;
      }

      #text-box h1 {
        font-family: "Sackers Gothic Std", sans-serif;
        color: #480929;
        font-size: 30px;
      }

      #text-box p {
        font-family: "GFS Didot", sans-serif;
        color: #480929;
        font-size: 16px;
      }

      @keyframes fadeIn {
        from {
          opacity: 0;
          transform: translateY(10px);
        }
        to {
          opacity: 1;
          transform: translateY(0);
        }
      }
      #text-box {
        animation: fadeIn 2s ease-in-out;
      }

      #right {
        display: flex;
        flex-direction: column;
        gap: 50px;
        margin-right: 25px;
      }

      .img-odd {
        align-self: flex-start;
        margin-left: -115px;
      }

      @media (max-width: 1150px) {
        #container {
          justify-content: center;
        }

        #left {
          display: none;
        }

        #middle {
          width: 75%;
        }

        #right {
          display: none;
        }
      }

      @media (max-width: 700px) {
        #middle img {
          width: 300px;
        }
      }

      @media (min-height: 1200px) {
        #container {
          justify-content: space-around;
        }

        #left img {
          width: 500px;
        }

        #text-box h1 {
          font-size: 56px;
        }

        #text-box p {
          font-size: 37px;
        }

        #middle {
          width: 35%;
          gap: 150px;
          margin-top: 200px;
        }

        #middle img {
          width: 575px;
        }

        #right {
          gap: 150px;
          margin-right: 0;
        }

        .img-odd,
        .img-pair {
          width: 300px;
          height: auto;
        }
      }

      @media (min-height: 1900px) {
        #left img {
          width: 800px;
        }

        #text-box h1 {
          font-size: 80px;
        }

        #text-box p {
          font-size: 51px;
        }

        #middle img {
          width: 830px;
        }

        .img-odd,
        .img-pair {
          width: 400px;
          height: auto;
        }

        .img-odd {
          margin-left: -215px;
        }
      }
    </style>
  </head>

  <body>
    <div id="container">
      <div id="left">
        <img
          src="resources/img/ilustracao-taca-garrafa.png"
          alt="Ilustração de garrafa e taças de vinho"
        />
      </div>

      <div id="middle">
        <div id="text-box">
          <h1>SOBRE NÓS</h1>
          <br>
          <br>
          <p>
            A Vinheria Agnello é um símbolo de sofisticação e excelência,
            dedicada a proporcionar experiências memoráveis aos apreciadores de
            grandes vinhos. Com uma seleção criteriosa de rótulos raros e
            prestigiados, oferecemos um portfólio que traduz requinte, tradição
            e exclusividade.
          </p>
          <br>
          <p>
            Agora, elevamos essa experiência para o ambiente digital, garantindo
            que cada escolha seja guiada por conhecimento, curadoria impecável e
            um padrão inigualável de atendimento. Aqui, cada garrafa conta uma
            história e cada seleção é pensada para paladares exigentes.
          </p>
          <br>
          <p>
            Para os que buscam o extraordinário, apresentamos o Clube de
            Assinatura Vinheria Agnello, um serviço exclusivo que entrega,
            diretamente a você, vinhos refinados e edições limitadas do mais
            alto padrão. Permita-se descobrir rótulos incomparáveis e
            transformar cada taça em uma experiência singular.
          </p>
        </div>

        <img
          src="resources/img/ilustracao-videira.png"
          alt="Ilustração de videira"
        />
      </div>

      <div id="right">
        <img
          class="img-odd"
          src="resources/img/adega.png"
          alt="Foto em formato de círculo de adega"
          height="150"
        />
        <img
          class="img-pair"
          src="resources/img/familia-agnello.png"
          alt="Foto em formato de círculo de um Senhor e sua filha"
          height="125"
        />
        <img
          class="img-odd"
          src="resources/img/barris.png"
          alt="Foto em formato de círculo de barris de vinho"
          height="150"
        />
      </div>
    </div>
  </body>
</html>
