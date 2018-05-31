<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<%-- <c:url value="/js" var="jsUrl" />
		<script src="${jsUrl}/jquery-3.3.1.min.js"></script>
		<script src="${jsUrl}/bootstrap.min.js}"></script>
		<c:url value="/css/bootstrap.min.css" var="bootstrapCssUrl"/>
		<link rel="stylesheet" href="${bootstrapCssUrl}"/> --%>
<%-- <c:url value="/js" var="jsUrl" />
<script src="${jsUrl}/jquery-3.3.1.min.js"></script>
<script src="${jsUrl}/bootstrap.min.js}"></script>
<c:url value="/css/bootstrap.min.css" var="bootstrapCssUrl"/>
<link rel="stylesheet" href="${bootstrapCssUrl}"/> --%>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  

<title>Bibliotheque personnelle</title>
</head>
<body>
	

	<div id="header"
		style="background: linear-gradient(to right, #336699 0%, #66ffff 100%); color: black; padding: 20px">
		<!-- gradient <background: linear-gradient(to right, #336699 0%, #66ffff 100%)> -->
		<center>
			<div class="title" style="font-family: verdana; font-size: 300%">
				<b>Bibliotheque personnelle</b>
			</div>
			<br> <br>
		</center>

		
		<button>
			<div class="menuLink">
				<c:url value="/welcome.html" var="welcomeUrl"/>
				<a href= "${welcomeUrl}" class="btn btn-default">Liste des livres</a>
				<%-- <c:url value="/form.html" var="createUrl"/>
	<a href="${createUrl}"> clic ici!!!</a> --%>
			</div>
		</button>
		<button>
			<div class="menuLink">
				<a href="index.html" class="btn btn-default">Liste des DvD</a>
			</div>
		</button>
		<button>
			<div>
				<a href="index.html" class="btn btn-default">Liste des Series</a>
			</div>
		</button>
		<button>
			<div>
				<a href="index.html" class="btn btn-default">Liste album</a>
			</div>
		</button>
		<button>
			<div>
				<a href="index.html" class="btn btn-default">Liste Bluray</a>
			</div>
		</button>
		<button>

			<div>
				<c:url value = "/formulaire.html" var ="formulaireUrl"/>
				<a href= "${formulaireUrl}" class="btn btn-default">Ajout d'un nouveau
					produit</a>
				<!-- <a href="formulaire.html" class="btn btn-default"></a> -->
			</div>
		</button>
		<button>
			<div>
				<a href="index.html" class="btn btn-default">Recherche</a>
			</div>
		</button>
		<button>
			<div class>
				<a href="index.html" class="btn btn-default">Services</a>
			</div>
		</button>
		<button>
			<div>
				<a href="index.html" class="btn btn-default">Contact</a>
			</div>
		</button>
	</div>
	<br>
</body>
</html>