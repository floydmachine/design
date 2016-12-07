<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu List</title>
<link href="webjars/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Design</a>
    </div>
    <ul class="nav navbar-nav">
  
      <li><a href="${pageContext.request.contextPath}/photolist">Image List</a></li>
      <li><a href="${pageContext.request.contextPath}/imageform">Image Form</a></li>
      <li><a href="${pageContext.request.contextPath}/menuform">Menu Form</a></li>
      <li><a href="${pageContext.request.contextPath}/menulist">Menu List</a> </li>
    </ul>
  </div>
</nav>

	<div class="container-fluid">
	<h3 align="center">Menu List</h3>
	<table class="table">

			<tr>
				<th>Menu Id</th>
				<th> Menu Name </th>
				<th> Description </th>
				
				<th> Edit</th>
				<th> Delete </th>
			</tr>
			
			<c:forEach items="${menulist}"  var="menu">
			<tr>			
				<td> ${menu.mid} </td>
				<td> ${menu.mname}</td>
				<td> ${menu.description}</td>
				
				<td><a href="${pageContext.request.contextPath}/editmenu/${menu.mid}" class="btn btn-info" >Edit</a></td>
				<td><a href="${pageContext.request.contextPath}/delmenu/${menu.mid}" class="btn btn-danger" >Delete</a> </td>			</tr>
			</c:forEach>
		</table>
	</div>
		<script src="webjars/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		<script src="webjars/jquery/2.2.4/jquery.min.js"></script>
</body>
</html>