<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html  lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User Home</title>
<link rel="stylesheet" type="text/css"
 href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />
</head>
<body>
	<div class="container">
	  	<div class="starter-template">
	  		<h2>Please Provide User details</h2>
			<form action="/User/createUser" method="post">
				<table class="table table-bordered">
					<tr>
						<td>
							User Name
						</td>
						<td>
							<input type="text"name="name">
						</td>
					</tr>
					<tr>
					<td>
						Address
					</td>
					<td>
						<input type="text" name="address">
					</td>
					</tr>
				</table>
				<br/>
				<input type="submit" value="Submit">
			</form>
		</div>
	</div>
</body>
</html>
