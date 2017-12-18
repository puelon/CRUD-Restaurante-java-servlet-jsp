<%-- 
    Document   : cadastro
    Created on : 23/10/2017, 20:54:52
    Author     : aula
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="models.Menu"%>
<%@page import="dao.MenuDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        
        <style>
            .jumbotron{
            background-color:#1253bc;
            background-image: url("a1.jpg");
            }
            .badge-secondary{
                color:black;
            }
        </style>
                
        <% if(request.getParameter("id") != null)
        {          
            MenuDAO dao = new MenuDAO();
            ArrayList<Menu> m = dao.selectMenu(Integer.parseInt(request.getParameter("id")));
%>

        
        <form action="atualizarMenu" method="POST">
            <input value="<%= m.get(0).getId()%>" name="id" placeholder="ID"/>
            <input value="<%= m.get(0).getNome()%>" name="nome" placeholder="NOME"/>
            <input value="<%= m.get(0).getPreco()%>" name="preco" placeholder="PREÇO"/>
            <input value="<%= m.get(0).getTipo()%>" name="tipo" placeholder="TIPO"/>
            <input type="submit" value="Salvar"/>
        </form>
        <%}else{%>
    <div class="container">
    <div class="jumbotron">
        <h1><span class="badge badge-secondary"><b>Manutenção de Pedidos</b></span></h1>
        </div>
        <div class="card">
            <div class="card-body">
                <form action="InserirMenu" method="POST">
  <div class="form-group">
    <label class="col-form-label" for="formGroupExampleInput">ID</label>
    <input name="id" type="text" class="form-control" id="formGroupExampleInput" placeholder="ID">
  </div>
  <div class="form-group">
    <label class="col-form-label" for="formGroupExampleInput2">Nome</label>
    <input name="nome" type="text" class="form-control" id="formGroupExampleInput2" placeholder="Nome">
  </div>
    <div class="form-group">
    <label class="col-form-label" for="formGroupExampleInput2">Preço</label>
    <input name="preco" type="text" class="form-control" id="formGroupExampleInput2" placeholder="Preço">
  </div>
    <div class="form-group">
    <label class="col-form-label" for="formGroupExampleInput2">Tipo</label>
    <input name="tipo" type="text" class="form-control" id="formGroupExampleInput2" placeholder="Ex:Bebida, Jantar, Sobremesa ou Almoço">
  </div>
 <button type="submit" class="btn btn-success">Cadastrar</button>
 <button type="button" class="btn btn-light"><a href="adminarea.jsp">Voltar</a></button>
</form>


  <%}%>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
</body>
</html>
