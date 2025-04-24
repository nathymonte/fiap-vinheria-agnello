<%@ page import="br.edu.fiap.ideaseeders.vinheria.service.ProductService" %>
<%@ page import="br.edu.fiap.ideaseeders.vinheria.model.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>

<%
    ProductService roseProductService = new ProductService();
    List<Product> roseProducts = roseProductService.getProductsByType("ROSE");
    NumberFormat roseFormatter = NumberFormat.getCurrencyInstance(new Locale("pt", "BR"));
    
    for (Product roseProduct : roseProducts) {
%>
<div class="col">
  <div class="wine-box position-relative">
    <img src="<%= roseProduct.getImagePath() %>" alt="Rosé" class="wine-img" />
    <img src="<%= roseProduct.getFlagPath() %>" alt="<%= roseProduct.getCountry() %>" class="flag-icon" />
  </div>
  <div class="wine-box-subtitle">
    <span><%= roseProduct.getName() %></span>
    <span>
      <i class="bi bi-bag fs-7 me-1"></i>
      <span class="wine-price"><%= roseFormatter.format(roseProduct.getPrice()) %></span>
    </span>
  </div>
</div>
<%
    }
%>
