<!-- Estrutura simplificada sem classes Bootstrap para controle total -->
<div class="layout-produtos">
  <!-- Lateral esquerda com imagens decorativas -->
  <div class="lateral-esquerda">
    <img src="resources/img/glasses.png" alt="Taça e garrafa" />
    <img src="resources/img/barril.png" alt="Barril e uvas" />
  </div>

  <!-- Conteúdo central dos vinhos -->
  <div class="conteudo-central">
    <h3 class="produtos-central-title">Produtos</h3>

    <h4 class="produtos-left-title">Tintos</h4>
    <div class="produtos-row"><%@ include file="produtos/tintos.jsp" %></div>

    <h4 class="produtos-left-title">Branco</h4>
    <div class="produtos-row"><%@ include file="produtos/brancos.jsp" %></div>

    <h4 class="produtos-left-title">Rosé</h4>
    <div class="produtos-row"><%@ include file="produtos/rose.jsp" %></div>
  </div>

  <!-- Lateral direita com imagens decorativas -->
  <div class="lateral-direita">
    <img src="resources/img/grapes.png" alt="Cacho de uvas" />
    <img src="resources/img/cheese.png" alt="Vinho e queijo" />
  </div>
</div>
