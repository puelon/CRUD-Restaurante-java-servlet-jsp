<%-- 
    Document   : cadastro
    Created on : 23/10/2017, 20:54:52
    Author     : aula
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="models.Restaurante"%>
<%@page import="dao.RestauranteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        
        
                
        <% if(request.getParameter("id") != null)
        {
            
            RestauranteDAO dao = new RestauranteDAO();
            ArrayList<Restaurante> r = dao.selectCliente(Integer.parseInt(request.getParameter("id")));
%>
        <form action="atualizarCliente" method="POST">
            <input value="<%= r.get(0).getId()%>" name="id" placeholder="NOME"/>
            <input value="<%= r.get(0).getNome()%>" name="nome" placeholder="NOME"/>
            <input value="<%= r.get(0).getCpf()%>" name="cpf" placeholder="CPF"/>
            <input value="<%= r.get(0).getEndereco()%>" name="endereco" placeholder="ENDEREÇO"/>
            <input value="<%= r.get(0).getCep()%>" name="cep" placeholder="CEP"/>
            <input type="submit" value="Salvar"/>
        </form>
        <%}else{%>
   
    <style>
        .jumbotron{
            background-color:#7daaf2;
        }
            .card-body{
             background-color:#c9c9cc;   
            }
            #formGroupExampleInput{border: 2px solid; border-radius: 12px;}
            #formGroupExampleInput2{border: 2px solid; border-radius: 12px;}
           
            
        
    </style>
    <div class="container">
    <div class="jumbotron">
        <h2><span class="badge badge-info">Cadastro de Clientes</h2></span>
    </div>
    <div class="card">
        <div class="card-body">
        <form action="InserirCliente" method="POST">
        <div class="form-group">
          <label class="col-form-label" for="formGroupExampleInput">ID</label>
          <input name="id" type="text" class="form-control" id="formGroupExampleInput" placeholder="ID">
        </div>
        <div class="form-group">
          <label class="col-form-label" for="formGroupExampleInput2">NOME</label>
          <input name="nome" type="text" class="form-control" id="formGroupExampleInput2" placeholder="NOME">
        </div>
          <div class="form-group">
          <label class="col-form-label" for="formGroupExampleInput2">CPF</label>
          <input name="cpf" type="text" class="form-control" id="formGroupExampleInput2" placeholder="CPF">
        </div>
          <div class="form-group">
          <label class="col-form-label" for="formGroupExampleInput2">ENDEREÇO</label>
          <input name="endereco" type="text" class="form-control" id="formGroupExampleInput2" placeholder="ENDEREÇO">
        </div>
          <div class="form-group">
          <label class="col-form-label" for="formGroupExampleInput2">CEP</label>
          <input name="cep" type="text" class="form-control" id="formGroupExampleInput2" placeholder="CEP">
        </div>
         <button type="submit" class="btn btn-success">Cadastrar</button>
         <button type="button" class="btn btn-light"><a href="adminarea.jsp">Voltar</a></button>
    </form>
        </div>
    </div>
    </div>
  <%}%>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
</body>
</html>
