<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>AboutPageContent</title>

    <style>

      @font-face {
        font-family: "Sackers Gothic Std";
        src: url("resources/fonts/sackersgothicstd-medium.otf")
          format("opentype");
        font-weight: normal;
        font-style: normal;
      }

      #container {
        display: flex;
        flex-direction: row;
        align-items: flex-start;
        background-color: #f4e8cf;
        justify-content: space-around;
      }

      #left {
        display: flex;
        flex-direction: column;
      }
      #left img{
        width: 250px;
        height: 500px;
      }

      #middle {
        display: flex;
        flex-direction: column;
        align-items: center;
        width: 60%;
        gap: 30px;
        margin: 30px 0px;
      }

      #middle img{
        width: 375px;
      }

      #text-box h1{
        color: #480929;
        font-size: 30px;
      }

      #text-box p{
        color: #480929;
        font-size: 16px;
      }

      #right {
        display: flex;
        flex-direction: column;
        gap: 30px;
      }

    </style>
</head>

<body>
    <div id="container">
        <div id="left">
            <img src="resources/img/ilustracao-taca-garrafas.png" alt="Ilustração de garrafa e taças de vinho">
        </div>

        <div id="middle">

            <div id="text-box">
                <h1>SOBRE NÓS</h1>
                <br>
                <p>A Vinheria Agnello é um símbolo de sofisticação e excelência, dedicada a proporcionar
                experiências memoráveis aos apreciadores de grandes vinhos. Com uma seleção criteriosa
                de rótulos raros e prestigiados, oferecemos um portfólio que traduz requinte, tradição e
                exclusividade.</p>

                <p>Agora, elevamos essa experiência para o ambiente digital, garantindo que cada escolha
                seja guiada por conhecimento, curadoria impecável e um padrão inigualável de
                atendimento. Aqui, cada garrafa conta uma história e cada seleção é pensada para
                paladares exigentes.</p>

                <p>Para os que buscam o extraordinário, apresentamos o Clube de Assinatura Vinheria
                Agnello, um serviço exclusivo que entrega, diretamente a você, vinhos refinados e edições
                limitadas do mais alto padrão. Permita-se descobrir rótulos incomparáveis e transformar
                cada taça em uma experiência singular.</p>
            </div>

            <img src="resources/img/ilustracao-videira.png" alt="Ilustração de videira">
        </div>

        <div id="right">
            <img src="resources/img/adega.png" alt="Foto em formato de círculo de adega" height="150">
            <img src="resources/img/familia-agnello.png" alt="Foto em formato de círculo de um Senhor e sua filha" height="150">
            <img src="resources/img/barris.png" alt="Foto em formato de círculo de barris de vinho" height="150">
        </div>
    </div>
</body>

</html>