<%-- 
    Document   : homepage
    Created on : Mar 31, 2013, 12:58:11 AM
    Author     : sree
--%>

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
document.forms[0].action = "<%=request.getContextPath()%>/uploadimages.do?method=createUser";
document.forms[0].submit();
}
</script>
</head>
<body>
    <%
     List<UserPojo> userpojolist = new ArrayList<UserPojo>();
     userpojolist = (List<UserPojo>)request.getAttribute("userpojolist");
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
<table border = "1" width="90%" style = "margin :2%">
<tr><td>UserName</td><td>Status</td><td>action</td></tr>
<%
for(UserPojo userpojo : userpojolist){
    %>
    
    <tr><td><%=userpojo.getUserName()%></td><td><%=userpojo.getStatus()%></td><td><a href="<%=request.getContextPath()%>/uploadimages.do?method=inactivateUser&&id=<%=userpojo.getId()%>">inactivate</a>
         <%if(userpojo.getStatus().equalsIgnoreCase("I")) {%>
            <a href="<%=request.getContextPath()%>/uploadimages.do?method=removeUser&&id=<%=userpojo.getId()%>">remove</a>
            <%
            }
            %>
        </td></tr>

    <%
}
%>
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
