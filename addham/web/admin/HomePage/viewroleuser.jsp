<%-- 
    Document   : homepage
    Created on : Mar 31, 2013, 12:58:11 AM
    Author     : sree
--%>

<%@page import="com.sree.tali.pojo.RoleUserMapping"%>
<%@page import="com.sree.tali.pojo.ArticleTypes"%>
<%@page import="com.sree.tali.pojo.UploadImagePojo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sree.tali.hibernate.pojo.UserPojo"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html xmlns="http://www.w3.org/1999/xhtml">
    <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Welcome to Helen Keller's Institute</title>
<%@include file="layouts/header.jsp" %>
<script type="text/javascript">
function submitForm()
{
document.forms[0].action = "<%=request.getContextPath()%>/uploadimages.do?method=viewArticles";
document.forms[0].submit();
}
</script>
</head>
<body>
     <%
     List<RoleUserMapping> roleuserlist = new ArrayList<RoleUserMapping>();
     roleuserlist = (List<RoleUserMapping>)request.getAttribute("roleuserlist");
    %>
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
	<tr >	 <td></td></tr>

	<tr ><td></td> </tr>
    <tr>	<td align="right">	 </td></tr>
</table>
</html:form>
    <%
if(roleuserlist!=null)  {  %>
    <table border = "1" width="90%" style = "margin :2%">
<tr><td>Serial Number</td> <td>Role Name</td><td>User Name</td><td>Action</td></tr>
<%
for(RoleUserMapping roleuser : roleuserlist){
    %>
    <tr><td><%=roleuser.getId()%></td><td><%=roleuser.getRoleName()%></td><td><%=roleuser.getUser()%></td><td><a href="<%=request.getContextPath()%>/uploadimages.do?method=deleteRoleUserMapping&&id=<%=roleuser.getId()%>" style="text-decoration: none">&nbsp;&nbsp;&nbsp;Delete</a>
        </td></tr>

    <%
}
%>
</table>
 <%
}
%>
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
