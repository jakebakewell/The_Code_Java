<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
</head>
<body>
	<div class="container d-flex flex-column">
		<h3 class="text-danger"><c:out value="${error}"/></h3>
		<h3>What is the code?</h3>
		<div class="d-flex flex-column">
			<form method="POST" action="/trycode">
				<input type="text" name="code">
				<button type="submit">Try Code</button>
			</form>
		</div>
	</div>
</body>
</html>