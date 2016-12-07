<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
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
<h1> Welcome </h1>
<script src="webjars/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		<script src="webjars/jquery/2.2.4/jquery.min.js"></script>	
</body>

</html>