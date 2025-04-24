<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="br.edu.fiap.ideaseeders.vinheria.model.User" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Vinheria Agnello</title>
    <link href="resources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="resources/css/header.css" rel="stylesheet" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
      rel="stylesheet"
    />
    <script src="resources/js/bootstrap.bundle.min.js"></script>
    <style>
      @font-face {
        font-family: "Sackers Gothic Std";
        src: url("resources/fonts/sackersgothicstd-medium.otf")
          format("opentype");
        font-weight: normal;
        font-style: normal;
      }
    </style>
  </head>
  <body>
    <%
      User loggedInUser = (User) session.getAttribute("user");
    %>
    <div class="navbar-custom">
      <div class="container">
        <!-- DESKTOP -->
        <div class="d-none d-md-flex row align-items-center">
          <!-- Esquerda -->
          <div class="col-4 d-flex align-items-center gap-3">
            <a class="btn-assinatura" href="assinatura.jsp">Assinatura</a>
            <a class="nav-link-custom" href="produtos.jsp">Produtos</a>
          </div>

          <!-- Centro -->
          <div class="col-4 text-center">
            <a href="index.jsp">
              <img
                src="resources/img/slogan.png"
                alt="Vinheria Agnello"
                class="logo-desktop"
              />
            </a>
          </div>

          <!-- Direita -->
          <div
            class="col-4 d-flex align-items-center justify-content-end gap-3"
          >
            <a class="nav-link-custom" href="#">
              <i class="bi bi-bag fs-5"></i> Carrinho
            </a>
            
            <% if (loggedInUser != null) { %>
              <div class="d-flex align-items-center">
                <span class="nav-link-custom me-3">
                  <%= loggedInUser.getNome().split(" ")[0] %> <i class="bi bi-person-circle fs-5"></i>
                </span>
                <a class="nav-link-custom" href="api/logout">
                  <i class="bi bi-box-arrow-right fs-5"></i> Sair
                </a>
              </div>
            <% } else { %>
              <a class="nav-link-custom" href="signin.jsp">
                Entrar <i class="bi bi-person-circle fs-5"></i>
              </a>
            <% } %>
          </div>
        </div>

        <!-- MOBILE -->
        <div
          class="d-flex d-md-none justify-content-between align-items-center px-2"
        >
          <div class="menu-icon d-block d-md-none px-3 py-2">
            <i class="bi bi-list fs-3" id="menu-toggle"></i>
          </div>

          <!-- Offcanvas Menu -->
          <div id="menu-offcanvas" class="offcanvas-menu">
            <div class="offcanvas-content">
              <button id="menu-close" class="close-btn">&times;</button>
              <ul class="offcanvas-links">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="produtos.jsp">Produtos</a></li>
                <li><a href="#">Assinatura</a></li>
                <% if (loggedInUser != null) { %>
                  <li><hr></li>
                  <li><a href="api/logout"><i class="bi bi-box-arrow-right me-2"></i>Sair</a></li>
                <% } else { %>
                  <li><a href="signin.jsp"><i class="bi bi-person-circle me-2"></i>Entrar</a></li>
                <% } %>
              </ul>
            </div>
          </div>

          <a href="index.jsp">
            <img
              src="resources/img/slogan.png"
              alt="Vinheria Agnello"
              class="logo-mobile"
            />
          </a>

          <% if (loggedInUser != null) { %>
            <div class="d-flex align-items-center">
              <span class="me-2"><i class="bi bi-person-circle fs-4"></i> <%= loggedInUser.getNome().split(" ")[0] %></span>
              <a href="api/logout"><i class="bi bi-box-arrow-right fs-4"></i></a>
            </div>
          <% } else { %>
            <a href="signin.jsp"><i class="bi bi-person-circle fs-4"></i></a>
          <% } %>
        </div>
      </div>
    </div>

    <script>
      const toggle = document.getElementById("menu-toggle");
      const menu = document.getElementById("menu-offcanvas");
      const close = document.getElementById("menu-close");

      toggle.addEventListener("click", () => {
        menu.classList.add("active");
      });

      close.addEventListener("click", () => {
        menu.classList.remove("active");
      });

      window.addEventListener("click", function (e) {
        if (
          menu.classList.contains("active") &&
          !menu.contains(e.target) &&
          e.target !== toggle
        ) {
          menu.classList.remove("active");
        }
      });
    </script>
  </body>
</html>
