<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title> Menu Form </title>
<link href="webjars/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
<script  type="text/javascript" src="tinyfck/tiny_mce.js"></script>
<script  type="text/javascript">
    tinyMCE.init({
        mode : "textareas",
        plugins : "style,table,advhr,advimage,advlink,emotions,insertdatetime,preview,zoom,flash,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable",
        theme_advanced_buttons1_add_before : "save,newdocument,separator",
        theme_advanced_buttons1_add : "fontselect,fontsizeselect",
        theme_advanced_buttons2_add : "separator,insertdate,inserttime,preview,separator,forecolor,backcolor",
        theme_advanced_buttons2_add_before: "cut,copy,paste,pastetext,pasteword,separator,search,replace,separator",
        theme_advanced_buttons3_add_before : "tablecontrols,separator",
        theme_advanced_buttons3_add : "emotions,iespell,flash,advhr,separator,print,separator,ltr,rtl,separator,fullscreen",
        theme_advanced_toolbar_location : "top",
        theme_advanced_toolbar_align : "left",
        theme_advanced_path_location : "bottom",
        content_css : "/example_data/example_full.css",
        plugin_insertdate_dateFormat : "%Y-%m-%d",
        plugin_insertdate_timeFormat : "%H:%M:%S",
        extended_valid_elements : "hr[class|width|size|noshade],font[face|size|color|style],span[class|align|style]",
        external_link_list_url : "example_data/example_link_list.js",
        external_image_list_url : "example_data/example_image_list.js",
        flash_external_list_url : "example_data/example_flash_list.js",
        file_browser_callback : "fileBrowserCallBack",
        theme_advanced_resize_horizontal : false,
        theme_advanced_resizing : true,
        apply_source_formatting : true
        //language : "zh_cn_utf8"
    });
        
    function fileBrowserCallBack(field_name, url, type, win) {
        var connector = "../../filemanager/browser.html?Connector=connectors/jsp/connector";
        var enableAutoTypeSelection = true;
 
        var cType;
        tinyfck_field = field_name;
        tinyfck = win;
    
        switch (type) {
            case "image":
                cType = "Image";
                break;
            case "flash":
                cType = "Flash";
                break;
            case "file":
                cType = "File";
                break;
        }
    
        if (enableAutoTypeSelection && cType) {
            connector += "&Type=" + cType;
        }
        window.open(connector, "tinyfck", "modal,width=600,height=400");
    }
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
	<form:form action="${pageContext.request.contextPath}/addmenu" commandName="menu" method="post">
		
		<c:if test="${!empty menu.mname}">
				<div class="form-group">
					<form:label path="mid">
							<spring:message text="ID" />
						</form:label>
					<form:input path="mid" readonly="true" size="8"
							disabled="true" /> <form:hidden path="mid" />
				</div>
			</c:if>

		<div class="form-group">
			<form:label path="mname">Name</form:label>
			 <form:input  class="form-control"  path="mname" id="mname"/>
		</div>

	<div class="form-group">
		<textarea id="description" name="description" style="width: 650px; height: 400px"></textarea>
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