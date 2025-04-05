<div class="layout-produtos">
  <div class="lateral-esquerda">
    <img src="resources/img/glasses.png" alt="Taça e garrafa" />
    <img src="resources/img/barril.png" alt="Barril e uvas" />
  </div>

  <div class="conteudo-central">
    <h3 class="produtos-central-title">Produtos</h3>

    <h4 class="produtos-left-title">Tintos</h4>
    <div class="produtos-row"><%@ include file="produtos/tintos.jsp" %></div>

    <h4 class="produtos-left-title">Branco</h4>
    <div class="produtos-row"><%@ include file="produtos/brancos.jsp" %></div>

    <h4 class="produtos-left-title">Rose</h4>
    <div class="produtos-row"><%@ include file="produtos/rose.jsp" %></div>
    <h4 class="produtos-left-title">Espumante</h4>
    <div class="produtos-row">
      <%@ include file="produtos/espumantes.jsp" %>
    </div>
  </div>

  <div class="lateral-direita">
    <img src="resources/img/grapes.png" alt="Cacho de uvas" />
    <img src="resources/img/cheese.png" alt="Vinho e queijo" />
  </div>
</div>
