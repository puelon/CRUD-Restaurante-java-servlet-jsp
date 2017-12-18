<%-- 
    Document   : reserva
    Created on : 11/11/2017, 17:55:39
    Author     : puelon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Menu </title>
	<meta name="description" content="Restaurante do Joker">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">	
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
	 </head>
<body>
  <div class="container">
			<div class="jumbotron">
	<h1 class="display-3"> Restaurante do tio Jóker, O Palhaço</h1>
	<p class="lead"> Seja bem vindo ao restaurante do bobo, do palhaço, o coringa, o Jóker</p>
	<hr class="my-4">
	<p class="lead"> Clique em cancelar para retornar ao menu principal, ou clique em continuar para escolher o prato</p>
	</div>

		<fieldset>
		<legend><b><span></br>Reserva</b></span></legend>
<form>

  <div class="row">    
  <div class="form-group col-md-6">
      <label for="name" class="col-form-label">Nome </label>
      <input type="name" class="form-control" id="name" placeholder="Nome Completo">
    </div>
    </br>
  </div>
		<fieldset>
		<legend><b></br>Disponibilidade</b></br></legend>
		<div class="checkbox">
		 <span class="input-group-addon col-sm-2">
		<label><input type="checkbox" value="pessoas1">01 Pessoas</label>
		</span>
		</div>
		</br>
		<div class="checkbox">
		  <span class="input-group-addon col-sm-2">
		<label><input type="checkbox" value="pessoas1">02 Pessoas</label>
		</span>
		</div>
		</br>

	<div class="checkbox">
		  <span class="input-group-addon col-sm-2">
		<label><input type="checkbox" value="pessoas1">03 Pessoas</label>
		</span>
		</div>
		</br>

	<div class="checkbox">
	  	<span class="input-group-addon col-sm-2">
		<label><input type="checkbox" value="pessoas1">04 Pessoas</label>
		</span>
		</div>
		</br>

	<div class="checkbox">
		  <span class="input-group-addon col-sm-2">
		<label><input type="checkbox" value="pessoas1">05 ou mais Pessoas</label>
		</span>
		</div>
		</br>
		</fieldset>
        </hr>
        <label>Horário</label>
        <div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Dropdown
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenu2" name="time">
    <button class="dropdown-item" type="button">Action</button>
    <button class="dropdown-item" type="button">Another action</button>
    <button class="dropdown-item" type="button">Something else here</button>
    <button class="dropdown-item" type="button">Action</button>
    <button class="dropdown-item" type="button">Another action</button>
    <button class="dropdown-item" type="button">Something else here</button>
    <button class="dropdown-item" type="button">Action</button>
    <button class="dropdown-item" type="button">Another action</button>
    <button class="dropdown-item" type="button">Something else here</button>
    <button class="dropdown-item" type="button">Action</button>
    <button class="dropdown-item" type="button">Another action</button>
    <button class="dropdown-item" type="button">Something else here</button>
        </div>
        </div>
	<fieldset>
	<legend><b></br>Opções</br></br></legend>
	<div class="form-check form-check-inline">
	  <label class="form-check-label">
	    <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1"> Almoço
	  </label>
	</div>
	<div class="form-check form-check-inline">
	  <label class="form-check-label">
	    <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2"> Jantar
	  </label>
	</div>
	</fieldset>
	</br>
	</br>
	<button type="button" class="btn btn-light btn-lg col-sm-offset-3"><a href="restaurante.html" target="_blank">Cancelar</a></button>
	<button type="button" class="btn btn-success btn-lg col-sm-offset-3"><a href="cardapio.jsp">Continuar</a></button></br>

</div>
	<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	</body>
