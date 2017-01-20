<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 	<link href='<c:url value="/resources/css/style.css" />' rel="stylesheet" type="text/css"> 
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>login</title>
</head>

<body>
	<h1>Login</h1>
<div class="center">
	<form action="loginController" method="post">
	<table>
	<tr>
		<td><label>User Name : </label></td>
		<td><input type="text" name="username" value="${cookie['user'].value}" /></td>
	</tr>
	
	<tr>
		<td><label>Password : </label></td>
		<td><input type="password" name="password" /></td>
	</tr>
	
	<tr><td></td><td><p>${message}</p></td></tr>
	
	<tr><td></td>
		<td><label><input type="checkbox" name="remember" <c:if test="${cookie.containsKey('user')}"> checked= "true" </c:if>  />Remember Me</label></td>
	</tr>
		
	<tr><td></td><td><input type="submit" value="Login"></td></tr>
	
	</table>
	</form>
</div>

</body>
</html>