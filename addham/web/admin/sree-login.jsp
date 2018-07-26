
<%@include file="header.jsp" %>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome to Helen Keller's Institute</title>
<%@include file="script.jsp" %>
</head>
<body>


	<div class="container">
		
		<div class="form-bg">
			<html:form action="login.do">
				<h2>Login</h2>
				<p><html:text property = "uname"/></p>
				<p><html:password property = "pword"  /></p>
				<label for="remember">
				<button type="submit"></button>
				</label>
			</html:form>
				
		</div>
	</div>

</body>
</html>






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