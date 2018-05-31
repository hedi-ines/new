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
<title>Liste des livres</title>

</head>

<body>
	<br>
	<jsp:include page="header.jsp"></jsp:include>
		

	<div id="content"
		style="background: linear-gradient(to bottom, #33ccff 0%, #ffffff 100%); color: black; padding: 20px">
		<!-- gradient <background: linear-gradient(to bottom, #33ccff 0%, #ffffff 100%)> -->

		<center>
			<br>
			<h1><b>Liste des livres</b></h1>
			<br>
		</center>
		 <c:url value="/delete" var="deleteUrl" /> 
		 <c:url value="/displayEdit" var="editUrl" />

		<c:forEach items="${livres}" var="livre">
			<!-- id de l'article -->

			<div title="${livre.id}"></div>

			<h3 class="well row">
				<b>${livre.title}</b> <span style="position: relative"> <a
					href="${deleteUrl}/${article.id}.html"> 
				</a>
				</span>
			</h3> 
			<p>Auteur : ${livre.author}</p>
			<div class="row">
				<div class="col-sm-4">Editeur: ${livre.editor}</div>
				<div class="col-sm-8">Genre: ${livre.genre}</div>
			</div>
			<br>
			<p>
				<spring:escapeBody>Résumé: ${livre.resume}</spring:escapeBody>
				<p><a href="${deleteUrl}/${livre.id}">Supprimer</a></p>
				<p> <a href="${editUrl}/${livre.id}">Modifier</a></p>
			</p>
	</div>


	<br>
	
	<p></p>
	</c:forEach>
	




	<br>
	<jsp:include page="footer.jsp">
		<jsp:param value="footer" name="footer" /></jsp:include>
</body>

</html>