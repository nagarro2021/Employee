 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored = "false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>

<%-- <%@ page import="com.Model.Flights" %> --%>
    
<!DOCTYPE html>
<html>
	<head>
	<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	
		<style type="text/css">
.result {
	width: 100%;
	border-collapse: collapse;
	background-color: #f2f2f2;
}

.result td {
	text-align: center;
	height: 25px;
	border: 1px solid black;
}

th {
	text-align: center;
	height: 50px;
	border: 1px solid black;
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
</style>
		<meta charset="ISO-8859-1">
		<title>Results</title>
	</head>
	<body>
		
		<br>
		<c:if test="${searchResult.size()!=0}">
			<header>
			<div>
				<table width = "100%">
					<tr>
						<td>
							<h2>
								Employee Management System
							</h2>
						</td>
						<td align = "right">
							<form action="SignOut" method="post">
							<input type = "submit" value = "SignOut"/>
							</form>
							<!-- <form id="Load" method="post">
							<input type = "submit" value = "Load"/>
							</form> -->
						</td>
					</tr>
				</table>
			</div>
		</header>
			<table class = "result">
			<tr>
				<th> EMPLOYEE CODE </th>
				<th> EMPLOYEE NAME </th>
				<th> LOCATION </th>
				<th> EMAIL </th>
				<th> DATE OF BIRTH </th>
				<th> ACTION </th>
				
			</tr>

			<%-- <c:forEach items = "${searchResult}"  var = "flight"> --%>
			<tr >
  					<td id="empCode"></td>
  					<td id="empName"></td>
  					<td id="empLocation"></td>
  					<td id="empEmail"></td>
  					<td id="empDOB"></td>
  					<td ><button class="btn btn-warning">Edit</button></td>
  				
				</tr> 
				
  			<%-- </c:forEach> --%>
		
		</table>
		</c:if>
		<c:if test="${searchResult.size()==0 }">
			<header>
			<div>
				<table width = "100%">
					<tr>
						<td>
							<h2>
								Sorry! No employee found!
							</h2>
						</td>
						<td align = "right">
							<form action="SignOut" method="post">
							<input type = "submit" value = "SignOut"/>
							</form>
								
						</td>
					</tr>
				</table>
			</div>
		</header>
		</c:if>
		<br>
	</body>
	
	
	<script type="text/javascript" >
	
//	window.onload = function() {
		

	 	const request = new XMLHttpRequest();
		request.open("GET", "http://localhost:6060/employees");
		request.send();
		//request.onload=()=>{
			//console.log(request);
			
		//}  
		
		
		
		console.log(window);
 	/* 	request.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		       // Typical action to be performed when the document is ready:
		        var response = xhttp.responseText;
		    alert(response);
		        var response1 = JSON.parse(xhttp.responseText);
				 document.getElementById("empCode").innerHTML = response1.employeeCode;
				 document.getElementById("empName").innerHTML = response1.employeeName;
				 document.getElementById("empLocation").innerHTML = response1.employeeLocation;
				 document.getElementById("empEmail").innerHTML = response1.employeeEmail;
				 document.getElementById("empDOB").innerHTML = response1.employeeDOB;
				
		    
		    
		        console.log("ok"+response);
		    }
		}; */
		

	
		
		
		
		
		
/* 		 document.getElementById("Load").onclick = function fun() {
		 var Url = "http://localhost:6060/employees";
		 var xhr = new XMLHttpRequest();
		 xhr.open('GET', Url, true);
		 xhr.send();
		 xhr.onreadystatechange = processRequest;
		 function processRequest(e) {
		 if (xhr.readyState == 4 && xhr.status == 200) {
		  alert(xhr.responseText);
		  console.log("vani");
		 var response1 = JSON.parse(xhr.responseText);
		 document.getElementById("empCode").innerHTML = response1.employeeCode;
		 document.getElementById("empName").innerHTML = response1.employeeName;
		 document.getElementById("empLocation").innerHTML = response1.employeeLocation;
		 document.getElementById("empEmail").innerHTML = response1.employeeEmail;
		 document.getElementById("empDOB").innerHTML = response1.employeeDOB;
		// document.getElementById("countryName").innerHTML = response1.countryName;
		 }
		 }
		 } */
		
	//}
	
	
	</script>
	
</html> 