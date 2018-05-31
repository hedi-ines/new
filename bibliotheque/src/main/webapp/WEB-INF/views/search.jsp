<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Recherche un livre</title>
</head>
<body>
	<jsp:include page="header.jsp">
		<jsp:param value="header" name="header" /></jsp:include>

	<div id="content"
		style="background: linear-gradient(to bottom, #33ccff 0%, #ffffff 100%); color: black; padding: 10px; width: auto">
		<center>
			<h1>
				<b>Recherche</b>
			</h1>
		</center>
		<form method="post">

			<div class="form-group">
				<label class="col-md-2 control-label" for="search">Rechercher
					dans titre: </label>
				<div class="col-md-10">
					<input id="search" name="search" type="text" placeholder="Titre"
						class="form-control input-md"><br>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 control-label" for="search1">Rechercher
					dans auteurs: </label>
				<div class="col-md-10">
					<input id="search1" name="search1" type="text" placeholder="Auteur"
						class="form-control input-md"><br>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 control-label" for="search2">Rechercher
					dans le resumé: </label>
				<div class="col-md-10">
					<input id="search2" name="search2" type="text" placeholder="Resumé"
						class="form-control input-md"><br>
				</div>
			</div>

			<div class="col-md-4">
				<button class="btn btn-primary">Chercher</button>
			</div>

		</form>

		<c:if test="${not empty resultList}">
			<table class="table table-striped">
				<thead>
					<tr>
						<!-- <th>ID</th>  -->
						<th>Livre</th>
						<th>Auteur</th>
						<th>Resumé</th>
					</tr>
				</thead>
				<c:forEach items="${ resultList }" var="livre">
					<tbody>
						<tr>
							<%-- <td>${livre.id}</td> --%>
							<td>${livre.title}</td>
							<td>${livre.author}</td>
							<td>${livre.resume}</td>
						</tr>
					</tbody>
				</c:forEach>
			</table>
		</c:if>
	</div>

	<div>
		<jsp:include page="footer.jsp">
			<jsp:param value="footer" name="footer" /></jsp:include>

	</div>

</body>
</html>