<%-- 
    Document   : homepage
    Created on : Mar 31, 2013, 12:58:11 AM
    Author     : sree
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="javax.management.relation.RoleUnresolvedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Welcome to Helen Keller's Institute</title>
<%@include file="layouts/header.jsp" %>
<script type="text/javascript">
    
function submitForm()
{
document.forms[0].action = "<%=request.getContextPath()%>/uploadimages.do?method=roleUserMapping"
document.forms[0].submit();
}

</script>
</head>
<body>
      <%
     List<String> users = new ArrayList<String>();
     List<String> roles = new ArrayList<String>();

     users = (List<String>)request.getAttribute("users");
     roles = (List<String>)request.getAttribute("roles");
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
<tr><td align="center" width="50%"></td><td></td></tr>
<tr><td align="center">	Role  : </td><td>
     <html:select property="role_role" >
          <html:option value="">select</html:option>
         <html:options name="uploadimagepojo" property="role_role_list" />
     </html:select></td></tr>
<tr><td align="center">	User  : </td><td>
     <html:select property="role_user" >
          <html:option value="">select</html:option>
         <html:options name="uploadimagepojo" property="role_user_list" />
     </html:select></td></tr>
<tr><td align="center" width="50%"></td><td><br /></td></tr>
<tr><td align="right" style="margin:20px"><html:button property = "button" onclick="submitForm()">Submit</html:button> </td></tr>
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
