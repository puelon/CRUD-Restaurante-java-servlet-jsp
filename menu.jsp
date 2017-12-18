<%-- 
    Document   : menu
    Created on : 23/10/2017, 19:37:13
    Author     : aula
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="models.Menu"%>
<%@page import="dao.MenuDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Restaurante do JOKER</title>
  <meta name="description" content="Restaurante do Noob">
  <!-- Latest compiled and minified CSS -->
   <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

</head>

    <style>
    body{
      padding-bottom:40px;
    }
    </style>
    <body data-spy="scroll" data-target="#my-navbar">
  <body>
   <div class="container">
    <nav class="navbar navbar-inverse navbar-fixed-top" id="my-navbar">
     
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
             <a href="" class="navbar-brand"> Restaurante do Joker</a>
      </div>
      <div class="collapse navbar-collapse" id="navbar-collapse">
      <a href="" class="btn btn-info navbar-btn"> Baixe agora</a>
      <ul class="nav navbar-nav">
          <li><a href="#feedback">Feedback </a>
          <li><a href="admin.jsp"> Area Administrativa</a>
          <li><a href="#">Faça aqui reserva!</a>
          <li><a href="#Facebook">Facebook</a>
      </ul>    
      </div>
</nav>

      <div class="jumbotron">
      <div class="container text-center">
        <h1>Restaurant App</h1>
        <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed 
        <div class="btn-group">
          <a href="" class="btn btn-lg btn-warning"> Baixar App</a>
          <a href="" class="btn btn-lg btn-default"> Endereço</a>
          <a href="" class="btn btn-lg btn-warning"> Compartilhe</a>
        </div>
      </div>
      </div>
       <style>
           .card{
               background-color:whitesmoke;
                border: 2px solid red;
                border-radius: 12px;
           }
       </style>
       <body>
              
       <div class="card">
           <h2><span class="label label-info">Cardápio Ativo</h2></span>
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
                </td>
    </tr> 
       <%}%>  
  </tbody>
</table>
       </div>
    <section>
    <div class="page-header" id="feedback">
    <h2>Feedback</h2><small> Meça seus feedback parça</small>
    </section>
    </div><!-- End of Container -->
            <div class="row">
          <div class="col-md-4">
            <blockquote>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi gravida quam ac ante rutrum, in mollis ligula mattis. Integer nulla nisi, ullamcorper et posuere vel</p>
              <footer>John doe</footer>
            </blockquote>
          </div>
          <div class="col-md-4">
            <blockquote>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi gravida quam ac ante rutrum, in mollis ligula mattis. Integer nulla nisi, ullamcorper et posuere vel</p>
              <footer>John doe</footer>
            </blockquote>
          </div>
          <div class="col-md-4">
            <blockquote>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi gravida quam ac ante rutrum, in mollis ligula mattis. Integer nulla nisi, ullamcorper et posuere vel</p>
              <footer>John doe</footer>
            </blockquote>
          </div>
      </div>


      <section>
        <div class="well">
        <div class="container text-center">
          <h3> Faça ja, sua reserva!</h3>
          <p> Insira seu nome, e-mail e whatsapp para contato</br>

          <form action="" class="form-inline">
            <div class ="form-group">
            <label for="reserva">Reserva</label>
            <input type="text" class="form-control" id="reserva" placeholder="Insira seu nome">
             </div>

            <div class ="form-group">
            <label for="email">Email</label>
            <input type="text" class="form-control" id="email" placeholder="Insira seu email">
            </div>



            <div class ="form-group">
            <label for="whatsapp">Whatsapp</label>
            <input type="text" class="form-control" id="whatsapp" placeholder= "Insira seu whatsapp">
            </div>
            <button type="submit" class="btn btn-default"><a href="reserva.jsp" target="_blank">Reservar</a></br></button>
            <hr>
          </form>
          </div>
      </section>




