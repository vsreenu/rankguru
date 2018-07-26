<%-- 
    Document   : homepage
    Created on : Mar 31, 2013, 12:58:11 AM
    Author     : sree
--%>

<%@page import="com.sree.tali.hibernate.pojo.ThoranamDataPojo"%>
<%@page import="com.sree.tali.hibernate.pojo.TempDataPojo"%>
<%@page import="com.sree.tali.pojo.TempPojo"%>
<%@page import="com.sree.tali.pojo.UploadImagePojo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sree.tali.hibernate.pojo.UserPojo"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html xmlns="http://www.w3.org/1999/xhtml">
    <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Welcome to Helen Keller's Institute</title>
<%@include file="header_1.jsp" %>
</head>
<body>
     <%
     List<ThoranamDataPojo> viewarticles = new ArrayList<ThoranamDataPojo>();
     viewarticles = (List<ThoranamDataPojo>)session.getAttribute("tempdata");
    %>
<div id="main">
    <%@include file="top.jsp" %>

<!----     image gallery---->


<div class="clear"></div>


<!----     body  ---->

<div id="fbox">
<!----    box1  ---->
<div id="adminbox1">
<div id="insideadminbox1">
    <%
if(viewarticles!=null)  {  %>
    <table border = "1" width="90%" style = "margin :2%">
<tr><td>Article Type</td> <td>Title</td><td>status</td><td>action</td></tr>
<%
for(ThoranamDataPojo imagepojo : viewarticles){
    %>
    <tr><td><%=imagepojo.getUrl()%></td><td><a href="<%=imagepojo.getUrl()%>"><%=imagepojo.getTitle()%></a></td><td><%=imagepojo.getStatus()%></td><td>
           <a href="<%=request.getContextPath()%>/temparticles.do?method=activateTempData&&id=<%=imagepojo.getId()%>" style="text-decoration: none">&nbsp;&nbsp;&nbsp;Activate</a>
           <a href="<%=request.getContextPath()%>/temparticles.do?method=inActivateTempData&&id=<%=imagepojo.getId()%>" style="text-decoration: none">&nbsp;&nbsp;&nbsp;Inactivate</a>
           <a href="<%=request.getContextPath()%>/temparticles.do?method=removeTempData&&id=<%=imagepojo.getId()%>" style="text-decoration: none">&nbsp;&nbsp;&nbsp;delete</a> 
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

<!--<hr color="#D8D8D8">
<div id="midbanner">
<div id="midbannerleft"></div>
</div>
<hr color="#D8D8D8">-->





</div>
</body></html>
