<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title> Photo Form </title>
<link href="webjars/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
<script>
  tinymce.init({
	  selector:'#pname' 
	  });
  </script>
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
	<form:form action="/design/addimage" method="post" commandName="photo" enctype="multipart/form-data">
		
		<c:if test="${!empty photo.name}">
				<div class="form-group">
					<form:label path="id">
							<spring:message text="ID" />
						</form:label>
					<form:input path="id" readonly="true" size="8"
							disabled="true" /> <form:hidden path="id" />
				</div>
			</c:if>

		<div class="form-group">
			<form:label path="name">Name</form:label>
			 <form:input  class="form-control"  path="name" id="pname"/>
		</div>

		<div class="form-group">
			<form:label path="image">Photo</form:label>
			<input type="file" name="file" onchange="$('#my_form').submit();this.value='';">
		</div> 

		 <div class="form-group">
		 <input type="submit" name="submit" value="Submit" class="btn btn-primary btn-md center-block
		 ">
		 </div>
	</form:form>
	</div>
		<script src="webjars/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		<script src="webjars/jquery/2.2.4/jquery.min.js"></script>
	
</body>