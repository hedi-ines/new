<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- ajout du tag c de jstl -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ma premiere webapp avec spring</title>
</head>

<body>

<!-- Tag de redirection vers les pages html de l'application. le ".html" est juste pour faire jolie, le programme ne prend pas en compte l'extrention du fichier-->
	
	<c:redirect url="/welcome.html" />
</body>
</html>
