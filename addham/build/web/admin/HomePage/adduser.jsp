<%-- 
    Document   : homepage
    Created on : Mar 31, 2013, 12:58:11 AM
    Author     : sree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html xmlns="http://www.w3.org/1999/xhtml">
    <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Welcome to Helen Keller's Institute</title>
<%@include file="layouts/header.jsp" %>
<script type="text/javascript">
function submitForm()
{
document.forms[0].action = "<%=request.getContextPath()%>/uploadimages.do?method=createUser";
document.forms[0].submit();
}
</script>
</head>
<body>
<div id="main">
    <%@include file="layouts/top.jsp" %>
      <%@include file="layouts/menu.jsp" %>

<!----     image gallery---->


<div class="clear"></div>


<!----     body  ---->

<div id="fbox">
<!----    box1  ---->
<div id="adminbox1">
<div id="insideadminbox1">
<html:form action="uploadimages" method="post" enctype="multipart/form-data">
<table border = "0" width="800">
<tr><td align="center"></td><td></td></tr>
		
		<tr>	<td align="center">	Username : </td><td><html:text property = "username"/></td></tr>
                <tr>	<td align="center">	Password : </td><td><html:password property = "password"/></td></tr>
		<tr>	<td align="center">     Re Password : </td><td><html:password property = "repassword"/></td></tr>
		<tr>	<td align="center">	Parent Password : </td><td><html:text property = "ppassword"/></td></tr>
		<tr>	<td align="right">	<html:button property = "button" onclick="submitForm()">Submit</html:button> </tdsb></tr>
				</table>
			</html:form>
</div>
</div>				   
</div>

<!----   bottom  image gallery---->
<%@include file="layouts/bottomimages.jsp" %>

<!--<hr color="#D8D8D8">
<div id="midbanner">
<div id="midbannerleft"></div>
</div>
<hr color="#D8D8D8">-->


 <%@include file="layouts/footer.jsp" %>



</div>
</body></html>
