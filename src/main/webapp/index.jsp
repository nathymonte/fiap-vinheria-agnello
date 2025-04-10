<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Home</title>
    <link href="resources/css/index.css" rel="stylesheet" />
    <link href="resources/css/scrollbar.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  </head>
  <body>
    <%@include file="header.jsp" %>
    <div class="pagina_indexbackground">
        <%@include file="indexContent.jsp" %>
    </div>
  </body>
  <footer>
    <%@ include file="footer.jsp" %>
  </footer>
</html>
