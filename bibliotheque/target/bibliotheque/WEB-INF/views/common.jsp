<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bibliotheque personnelle</title>
</head>
<body>

<br><br> 
	<jsp:include page="header.jsp">
	<jsp:param value="header" name="header" /></jsp:include>
	<jsp:include page="content.jsp">
	<jsp:param value="content" name="content" /></jsp:include>
	<jsp:include page="footer.jsp">
	<jsp:param value="footer" name="footer" /></jsp:include>
	


</body>
</html>