
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.container {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}

input[type=submit] {
	background-color: #1E90FF;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #4169E1;
}

input[type=date], select {
	width: 100%;
	padding: 12px; 
	border: 1px solid #ccc; 
	border-radius: 4px; 
	margin-top: 3px; 
	margin-bottom: 3px; 
}
</style>
<title>Home</title>
</head>
<body>
	<c:if test="${todo.username== null}">
		<c:out value="${msg}">
			<c:redirect url="Login.jsp" />
		</c:out>

	</c:if>
	
	<c:if test="${todo.username != null}">

		<header>
			<div>
				<table width="100%">
					<tr>
						<td>
							<h2>
								Welcome
								<c:out value="${todo.username}" />
								! You can search your flight here.
							</h2>
						</td>
						<td align="right">
							<form action="SignOut" method="post">
								<input type="submit" value="SignOut" />
							</form>
						</td>
					</tr>
				</table>
			</div>
		</header>
		<div align="center" class="container">
			<form action="search" method="post">
				<table>
					<tr>
						<td>From :</td>
						<td><select name="from">
								<option value="DEL">DEL</option>
						</select></td>
					</tr>
					<tr>
						<td>To :</td>
						<td><select name="to">
								<option value="MUB">MUB</option>
								<option value="BGR">BGR</option>
						</select></td>
					</tr>
					<tr>
						<td>Date :</td>
						<td><input type="text" name="date" /></td>
					</tr>
					<tr>
						<td>Flight Class :</td>
						<td><select name="class">
								<option value="E">Economy</option>
								<option value="EB">Business</option>
						</select></td>
					</tr>
					<tr>
						<td>Sort by :</td>
						<td><select name="sortBy">
								<option value="1">Fare</option>
								<option value="2">Fare & Flight Duration</option>
						</select></td>
					</tr>
					<tr>
						<td></td>
						<td align="right"><input type="submit" value="Search" /></td>
					</tr>
				</table>
			</form>
		</div>
	</c:if>

</body>
</html>