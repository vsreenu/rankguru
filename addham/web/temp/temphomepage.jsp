<%-- 
    Document   : homepage
    Created on : Mar 31, 2013, 12:58:11 AM
    Author     : sree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Welcome to Helen Keller's Institute</title>
<%@include file="header_1.jsp" %>
<script type="text/javascript">
function submitForm()
{
document.forms[0].action = "<%=request.getContextPath()%>/temparticles.do?method=saveTemp" ;
document.forms[0].submit();
}
</script>
</head>
<body>
    <a href="temphomepage.jsp"></a>
<div id="main">
    <%@include file="top.jsp" %>

<!----     image gallery---->


<div class="clear"></div>


<!----     body  ---->

<div id="fbox">
<!----    box1  ---->
<div id="adminbox1">
<div id="insideadminbox1">
<html:form action="temparticles" method="post" enctype="multipart/form-data">
<table border = "0" width="800">
<tr><td align="center"></td><td></td></tr>
		
	<tr >	<td width="400" align="center">	password : </td> <td><html:text property = "type"/> </td> </tr>
       	<tr>	<td align="right">	<html:button property = "button" onclick="submitForm()">Submit</html:button> </td></tr>
				</table>
			</html:form>
</div>
</div>				   
</div>

<!----   bottom  image gallery---->

<!--<hr color="#D8D8D8">
<div id="midbanner">
<div id="midbannerleft"></div>
</div>
<hr color="#D8D8D8">-->





</div>
</body></html>
