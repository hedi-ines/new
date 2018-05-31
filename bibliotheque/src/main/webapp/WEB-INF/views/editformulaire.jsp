<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!-- phrase à mettre pour que on prennent en compte les $... car spring fait les desactive :is = bolean  el= expression langage jee qui est utilise entre autre par spring -->
<!-- ajout du tag c de jstl -->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modification info livre</title>
</head>
<body>
	<jsp:include page="header.jsp">
		<jsp:param value="header" name="header" /></jsp:include>

	<c:url value="/modify.html" var="editUrl" />


	<div id="content"
		style="background: linear-gradient(to bottom, #33ccff 0%, #ffffff 100%); color: black; padding: 20px">
		<center>
			<h1>
				<b>Modification livre</b>
			</h1>
		</center>
		
		<form:form modelAttribute="editLivre" method="post"
			action="${editUrl}">
			
			<form:hidden path="id"/>
			
			<div class="form-group">
				<label for="Title">Titre : </label> <form:input type="text"
					class="form-control" id="title" path="title" />
			</div>
			
			<div class="form-group">
				<label for="Author">Auteur : </label> <form:input type="text"
					class="form-control" id="author" path="author"/>
			</div>

			<div class="form-group">
				<label for="Editor">Editeur : </label> <form:input type="text"
					class="form-control" id="editor" path="editor"/>
			</div>

			<div class="form-group">
				<label for="Genre">Genre : </label> <form:input type="text"
					class="form-control" id="genre" path="genre"/>
			</div>

			<div class="form-group">
				<div class="form-group">
					<label for="Resume">Résumé: </label><br>
					<form:textarea class="form-control" id="resume" path="resume"></form:textarea>
				</div>
			</div>
			<form:button class="menuLink">modifier</form:button>
	
	</form:form>
</div>
	<div>
		<jsp:include page="footer.jsp">
			<jsp:param value="footer" name="footer" /></jsp:include>

	</div>
</body>
</html>