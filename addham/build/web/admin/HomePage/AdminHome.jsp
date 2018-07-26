
<%@include file="../header.jsp" %>
<<html:html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome to Helen Keller's Institute</title>
<%@include file="../script.jsp" %>
</head>
<body>

	<div id="adminbox1">
				<h2>Login</h2>
	</div>


	<div class="container">
		<div class="form-bg1">
			<html:form action="HomePageAction.do">
				<h2>Save</h2>
				 <p><html:select property="uploadType">
	<html:option value="24hrs">24hrs</html:option>
	<html:option value="70mm">70mm</html:option>
	<html:option value="AtoZ">AtoZ</html:option>
</html:select></p> 
				<p><html:text property = "title"/></p>
				<p><html:file property = "image"/></p>
				<p><html:textarea property = "details"/></p>
				<label for="remember">
				<button type="submit"></button>
				</label>
			</html:form>
				
		</div>
	</div>

</body>
</html:html>






<!-- <!doctype html>
	<html lang="en"> 
<head>


	
	<title>Login Form</title>
	
	Stylesheets
	<link rel="stylesheet" href="../scriptfiles/base.css">
	<link rel="stylesheet" href="../scriptfiles/skeleton.css">
	<link rel="stylesheet" href="../scriptfiles/layout.css">
	
</head>
<body>


	<div class="container">
		
		<div class="form-bg">
			<form>
				<h2>Login</h2>
				<p><input type="text" placeholder="Username"></p>
				<p><input type="password" placeholder="Password"></p>
				<label for="remember">
				</label>
				<button type="submit"></button>
			<form>
		</div>
	</div>

</body>
</html> -->