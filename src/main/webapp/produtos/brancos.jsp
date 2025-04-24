<%@ page import="br.edu.fiap.ideaseeders.vinheria.service.ProductService" %>
<%@ page import="br.edu.fiap.ideaseeders.vinheria.model.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>

<%
    ProductService brancosProductService = new ProductService();
    List<Product> brancosProducts = brancosProductService.getProductsByType("BRANCO");
    NumberFormat brancosFormatter = NumberFormat.getCurrencyInstance(new Locale("pt", "BR"));
    
    for (Product brancosProduct : brancosProducts) {
%>
<div class="col">
  <div class="wine-box position-relative">
    <img src="<%= brancosProduct.getImagePath() %>" alt="Vinho branco" class="wine-img" />
    <img src="<%= brancosProduct.getFlagPath() %>" alt="<%= brancosProduct.getCountry() %>" class="flag-icon" />
  </div>
  <div class="wine-box-subtitle">
    <span><%= brancosProduct.getName() %></span>
    <span>
      <i class="bi bi-bag fs-7 me-1"></i>
      <span class="wine-price"><%= brancosFormatter.format(brancosProduct.getPrice()) %></span>
    </span>
  </div>
</div>
<%
    }
%>
