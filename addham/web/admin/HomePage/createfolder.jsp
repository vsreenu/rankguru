<%-- 
    Document   : homepage
    Created on : Mar 31, 2013, 12:58:11 AM
    Author     : sree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Welcome to Helen Keller's Institute</title>
<%@include file="layouts/header.jsp" %>
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
<html:form action="CreateFolderAction.do" method="post" enctype="multipart/form-data">
<table border = "0" width="800">
<tr>	<td align="center">	 </td><td></td></tr>
		<tr>	<td align="center">	Folder Name : </td><td><html:select property="uploadType"><html:option value="24hrs">24hrs</html:option>
	<html:option value="70mm">70mm</html:option>
	<html:option value="AtoZ">AtoZ</html:option>
     </html:select></td>
     <td><html:select property="uploadType"><html:option value="24hrs">24hrs</html:option>
	<html:option value="70mm">70mm</html:option>
	<html:option value="AtoZ">AtoZ</html:option>
     </html:select></td>
      <td><html:select property="uploadType"><html:option value="24hrs">24hrs</html:option>
	<html:option value="70mm">70mm</html:option>
	<html:option value="AtoZ">AtoZ</html:option>
     </html:select></td></tr>
		
	<tr >	<td width="400" align="center">		UploadType : </td> <td><html:select property="uploadType">	
	<html:option value="24hrs">24hrs</html:option>
	<html:option value="70mm">70mm</html:option>
	<html:option value="AtoZ">AtoZ</html:option>
     </html:select></td> </tr>
		<tr>	<td align="center">	Article Title : </td><td><html:text property = "title"/></td></tr>
		<tr>	<td align="center">	Article Image : </td><td><html:file property = "image"/></td></tr>
		<tr>	<td align="center">	Article details : </td><td><html:textarea property = "details"/></td></tr>
		<tr>	<td align="right">	<html:submit>Submit</html:submit> </td></tr>
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
