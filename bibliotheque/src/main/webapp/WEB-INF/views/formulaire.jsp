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
	<jsp:include page="header.jsp">
		<jsp:param value="header" name="header" /></jsp:include>

	<form method="post">
		<div id="content"
			style="background: linear-gradient(to bottom, #33ccff 0%, #ffffff 100%); color: black; padding: 20px">
			<center>
				<h1>
					<b>Creation d'article</b>
				</h1>
			</center>
			
		


			<div class="form-group">
				<label for="Title">Titre : </label> <input type="text"
					class="form-control" id="title" placeholder="Titre" name="title">
			</div>
			<div class="form-group">
				<label for="Author">Auteur : </label> <input type="text"
					class="form-control" id="author" placeholder="Auteur" name="author">
			</div>

			<div class="form-group">
				<label for="Editor">Editeur : </label> <input type="text"
					class="form-control" id="editor" placeholder="Editeur" name="editor">
			</div>

			<div class="form-group">
				<label for="Genre">Genre : </label> <input type="text"
					class="form-control" id="genre" placeholder="Genre" name="genre">
			</div>

			<div class="form-group">
				<div class="form-group">
					<label for="Resume">Résumé: </label><br>
					<textarea class="form-control" id="resume" placeholder="Resumé" name="resume"></textarea>
				</div>
			</div>
			<button class="menuLink">Ajouter un livre</button>
		</div>

	</form>	

	<div>
		<jsp:include page="footer.jsp">
			<jsp:param value="footer" name="footer" /></jsp:include>

	</div>

</body>
</html>