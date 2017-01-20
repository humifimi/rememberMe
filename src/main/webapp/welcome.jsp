<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link href='<c:url value="/resources/css/style.css" />' rel="stylesheet" type="text/css">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>welcome successfully</title>
</head>
<body>

<header>
	<h2>Welcome ${user.getUsername()} ${rem} </h2>
</header>
	
	<form action="logoutController" method ="post">
		<input type="submit" value="Logout"  />
		
	</form>
</body>
</html>