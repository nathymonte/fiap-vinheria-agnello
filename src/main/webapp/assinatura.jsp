<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Assinatura</title>
    <link href="resources/css/assinatura.css" rel="stylesheet" />
  </head>
  <body>
    <%@ include file="headerAssinatura.jsp" %>
    <!--div class="pagina_assinaturabackground">
    <%@ include file="assinaturaContent.jsp" %>
    </div-->

    <!--img src="resources/img/cheese.png" alt="cheese" class="glasses-img wine-img">
    <img src="resources/img/glasses.png" alt="glasses" class="glasses-img"-->

    <div class="tagline-bar">
      <p>Uma jornada de sabores: vinhos selecionados todos os meses</p>
    </div>

    <section class="assinatura-section">
      <div class="assinatura-content">
        <h1 class="assinatura-title">Descubra novos sabores com a nossa assinatura de vinhos</h1>
        <div class="assinatura-description">
          <p>
            Para verdadeiros apreciadores, cada taça é uma nova experiência. Pensando nisso, criamos um plano de assinatura exclusivo, feito para quem busca descobrir vinhos selecionados com curadoria especializada. Todos os meses, você recebe em casa rótulos escolhidos por sommeliers experientes, explorando diferentes terroirs, safras e estilos.
          </p>
          <p>
            Desde clássicos renomados até descobertas surpreendentes, cada garrafa vem acompanhada de nossas recomendações e notas de degustação, proporcionando uma experiência completa.
          </p>
          <p>
            Seja para ampliar seu repertório enológico ou para desfrutar de momentos especiais com vinhos excepcionais, nossa assinatura é o caminho ideal para uma jornada sensorial inesquecível. Brinde ao novo, explore o extraordinário. Assine agora e eleve sua experiência com vinhos!
          </p>
        </div>
        <div class="assinatura-box">
          <div class="assinatura-left">
            <div class="assinatura-toggle">
              <button class="toggle-button active">Mensal</button>
              <button class="toggle-button">Anual</button>
            </div>
            <h2 class="assinatura-price">
              <span class="price-value">R$975</span><span class="price-month">/mês</span>
            </h2>
            <h3 class="assinatura-cta-text">Descubra o Melhor do <br> Mundo dos Vinhos</h3>
            <p class="assinatura-small-text">
              Descreva rótulos selecionados e receba em casa vinhos excepcionais que elevam sua jornada enológica.
            </p>
            <button class="assinatura-button">Assine Aqui</button>
          </div>
          <div class="assinatura-right">
            <div class="benefits-container">
              <ul class="assinatura-benefits">
                <li><img src="resources/img/caixinha.png"> Seleção Especializada – Todos os meses, você recebe vinhos escolhidos por sommeliers experientes, garantindo rótulos de alta qualidade e descobertas surpreendentes</li>
                <li><img src="resources/img/caixinha.png"> Experiência enriquecedora – Cada garrafa vem com notas de degustação, harmonizações recomendadas e curiosidades sobre sua origem, aprimorando seu conhecimento enológico</li>
                <li><img src="resources/img/caixinha.png"> Exploração de Diferentes Terroirs – Viaje pelo mundo do vinho sem sair de casa, conhecendo diferentes estilos, safras e produtores renomados.</li>
                <li><img src="resources/img/caixinha.png"> Custo-benefício excepcional – Acesso a vinhos selecionados com condições especiais, garantindo qualidade e exclusividade por um preço justo.</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>

    <%@ include file="footer.jsp" %>
  </body>
</html>
