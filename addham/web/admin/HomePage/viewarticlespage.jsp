<%-- 
    Document   : homepage
    Created on : Mar 31, 2013, 12:58:11 AM
    Author     : sree
--%>

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
     List<UploadImagePojo> viewarticles = new ArrayList<UploadImagePojo>();
     viewarticles = (List<UploadImagePojo>)session.getAttribute("viewarticles");
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
	<tr >	<td width="400" align="center">	Article Type : </td> <td><html:select property="viewArticleType">	
	         <html:options name="uploadimagepojo" property="articlList" />
     </html:select></td> </tr>

	<tr >	<td width="400" align="center">	Status : </td> <td><html:select property="viewStatus">	
	<html:option value="A">A</html:option>
	<html:option value="I">I</html:option>
     </html:select></td> </tr>
    <tr>	<td align="right">	<html:button property = "button" onclick="submitForm()">Submit</html:button> </tdsb></tr>
</table>
</html:form>
    <%
if(viewarticles!=null)  {  %>
    <table border = "1" width="90%" style = "margin :2%">
<tr><td>Article Type</td> <td>Title</td> <td>Status</td><td>Article Number</td><td>action</td></tr>
<%
for(UploadImagePojo imagepojo : viewarticles){
    %>
    <tr><td><%=imagepojo.getArticleType()%></td><td><%=imagepojo.getTitle()%></td><td><%=imagepojo.getStatus()%></td><td><%=imagepojo.getArticleNumber()%></td><td><a href="<%=request.getContextPath()%>/uploadimages.do?method=inactivateArticle&&id=<%=imagepojo.getId()%>" style="text-decoration: none">&nbsp;&nbsp;&nbsp;Inactivate</a><a href="<%=request.getContextPath()%>/uploadimages.do?method=activateArticle&&id=<%=imagepojo.getId()%>" style="text-decoration: none">&nbsp;&nbsp;&nbsp;Activate</a><a href="<%=request.getContextPath()%>/user/<%=imagepojo.getUrl()%>" style="text-decoration: none">&nbsp;&nbsp;&nbsp;view</a><a href="<%=request.getContextPath()%>/uploadimages.do?method=editArticle&&id=<%=imagepojo.getId()%>" style="text-decoration: none">&nbsp;&nbsp;&nbsp;edit</a>
         <%if(imagepojo.getStatus().equalsIgnoreCase("I")) {%>
            <a href="<%=request.getContextPath()%>/uploadimages.do?method=removeArticle&&id=<%=imagepojo.getId()%>">remove</a>
            <%
            }
            %></td></tr>

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
