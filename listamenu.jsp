<%-- 
    Document   : listamenu
    Created on : 11/11/2017, 22:37:42
    Author     : puelon
--%>

<%@page import="models.Menu"%>
<%@page import="dao.MenuDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

    
    </head>
    <body>
        <table class="table table-hover table-dark">
  <thead>
    <tr>
      <th scope="col"></th>
      <th scope="col">ID</th>
      <th scope="col">Nome</th>
      <th scope="col">Preço</th>
      <th scope="col">Tipo</th>
    </tr>
               <%
                MenuDAO mdao = new MenuDAO();
                ArrayList<Menu> lista;
                lista = mdao.selectMenu();
                for (Menu m : lista) 
                {
            %>
  
    </thead>
  <tbody>
    <tr>
      <th scope="row">Pratos</th>
                <td><%= m.getId()%></td>
                <td><%= m.getNome()%></td>
                <td><%= m.getPreco()%></td>
                <td><%= m.getTipo()%></td>            
                <td>
                <a href="cadastramenu.jsp?id=<%= m.getId()%>">Editar</a>
                <a href="excluirMenu?id=<%= m.getId()%>">Excluir</a>
                </td>
    </tr> 
       <%}%>  
  </tbody>
</table>
   
        
        
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
    </body>
</html>

