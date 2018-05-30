<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!-- phrase à mettre pour que on prennent en compte les $... car spring fait les desactive :is = bolean  el= expression langage jee qui est utilise entre autre par spring -->
<!-- ajout du tag c de jstl -->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Creation d'article</title>
</head>
<body>

	<h1>Creation d'article</h1>
	<form>
	
		<div class="form-row">
			<div class="form-group col-md-2"></div>
			<div class="form-group col-md-8">
				<label for="inputtitre">Titre</label> <input type="text" required
					class="form-control" id="inputtitre" placeholder="titre" name="titre">
				<div class="form-group col-md-2"></div>
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-md-2"></div>
			<div class="form-group col-md-8">
				<label for="inputdescrition">descrition</label> <input type="text"  required
					class="form-control" id="inputdescrition" placeholder="descrition"
					name="descrition">
				<div class="form-group col-md-2"></div>
			</div>
		</div>

		
			
	</form>
	

	<!--  -->
		<c:url value="/welcomme.xhtml" var="addUrl"/>
		<a href=${addUrl}>Ajouter un livre</a>
	
</body>
</html>