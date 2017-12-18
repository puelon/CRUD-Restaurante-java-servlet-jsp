<%-- 
    Document   : cadastraitem
    Created on : 11/11/2017, 20:11:41
    Author     : puelon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <style>
            .jumbotron{
               background-color: #c44040;
               height:200px;
            }
            .navbar-collapse{
                border: 2px solid red;
                border-radius: 12px;
            }
            .navbar-collapse:hover{
                
                
            }
            #bt1 .nav-item:hover{
                background-color:#d3d3d3;
                text-transform: uppercase;
                color:red;
                border-bottom:4px solid red;
            }
                        #btn2 .nav-item:hover{
                background-color:#d3d3d3;
                text-transform: uppercase;
                color:red;
                border-bottom:4px solid red;
            }
                        #btn3 .nav-item:hover{
                background-color:#d3d3d3;
                text-transform: uppercase;
                color:red;
                border-bottom:4px solid red;
            }
                #btn4 .nav-item:hover{
                background-color:#d3d3d3;
                text-transform: uppercase;
                color:red;
                border-bottom:4px solid red;
                }          
                #btn5 .nav-item:hover{
                background-color:#d3d3d3;
                text-transform: uppercase;
                color:red;
                border-bottom:4px solid red;
                }          
                
                #btn6 .nav-item:hover{
                background-color:#d3d3d3;
                text-transform: uppercase;
                color:red;
                border-bottom:4px solid red;
            }
            
        </style> 
    </head>
    <body>
    <div class="container">
    <h2>Cadastro de Menu</h2>
        <div class="jumbotron">
            <legend>Sessão Administrativa</legend>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#">Logado como: ${sessionScope.username}</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <div id="bt1">
           <a class="nav-item nav-link active" href="cadastro.jsp">Cadastrar Contato <span class="sr-only">(current)</span></a>
      </div>
    <div id ="btn2">
      <a class="nav-item nav-link active" href="listacontato.jsp">Listar Contato</a>
    </div>
        <div id ="btn3">     
            <a class="nav-item nav-link active" href="cadastramenu.jsp">Cadastrar Menu</a>
        </div>
        <div id="btn4">
      <a class="nav-item nav-link  active" href="listamenu.jsp">Listar Menu</a>
        </div>
                <div id="btn5">
      <a class="nav-item nav-link active" href="#">Reservas</a>
        </div>
      <div id="btn6" >
      <a class="nav-item nav-link active" href="menu.jsp">Sair</a>
        </div>
    </div>
  </div>
</nav>
            
        </div>
    </div>
        
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>    
    </body>
</html>
