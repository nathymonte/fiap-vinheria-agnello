<%@ page import="br.edu.fiap.ideaseeders.vinheria.service.ProductService" %>
<%@ page import="br.edu.fiap.ideaseeders.vinheria.model.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>

<%
    ProductService tintosProductService = new ProductService();
    List<Product> tintosProducts = tintosProductService.getProductsByType("TINTO");
    NumberFormat tintosFormatter = NumberFormat.getCurrencyInstance(new Locale("pt", "BR"));
    
    for (Product tintosProduct : tintosProducts) {
%>
<div class="col">
  <div class="wine-box position-relative">
    <img src="<%= tintosProduct.getImagePath() %>" alt="Vinho tinto" class="wine-img" />
    <img src="<%= tintosProduct.getFlagPath() %>" alt="<%= tintosProduct.getCountry() %>" class="flag-icon" />
  </div>
  <div class="wine-box-subtitle">
    <span><%= tintosProduct.getName() %></span>
    <span>
      <i class="bi bi-bag fs-7 me-1"></i>
      <span class="wine-price"><%= tintosFormatter.format(tintosProduct.getPrice()) %></span>
    </span>
  </div>
</div>
<%
    }
%>
