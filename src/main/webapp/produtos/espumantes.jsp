<%@ page import="br.edu.fiap.ideaseeders.vinheria.service.ProductService" %>
<%@ page import="br.edu.fiap.ideaseeders.vinheria.model.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>

<%
    ProductService espumantesProductService = new ProductService();
    List<Product> espumantesProducts = espumantesProductService.getProductsByType("ESPUMANTE");
    NumberFormat espumantesFormatter = NumberFormat.getCurrencyInstance(new Locale("pt", "BR"));
    
    for (Product espumantesProduct : espumantesProducts) {
%>
<div class="col">
  <div class="wine-box position-relative">
    <img src="<%= espumantesProduct.getImagePath() %>" alt="Espumante" class="wine-img" />
    <img src="<%= espumantesProduct.getFlagPath() %>" alt="<%= espumantesProduct.getCountry() %>" class="flag-icon" />
  </div>
  <div class="wine-box-subtitle">
    <span><%= espumantesProduct.getName() %></span>
    <span>
      <i class="bi bi-bag fs-7 me-1"></i>
      <span class="wine-price"><%= espumantesFormatter.format(espumantesProduct.getPrice()) %></span>
    </span>
  </div>
</div>
<%
    }
%>
