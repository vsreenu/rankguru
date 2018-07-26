<%@page import="java.util.List"%>
<%@page import="com.sree.tali.pojo.UploadImagePojo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0049)http://www.helenkellersinstitute.org/sitemap.html -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Java 3 plus</title>
<link href="/java3pluscss/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" async="" src="./java3pluscss/ga.js"></script>

<%@include file="layouts/script.jsp" %>

</head>
<body>
<div id="main">

    
<%@include file="layouts/banner.jsp" %>
    
<%@include file="layouts/menu.jsp" %>
    
<%@include file="layouts/sidemenu.jsp" %>


<div id="welcomemiddle">
<!--<hr>-->



<%@include file="/layouts/leftmenu.jsp" %>

<%
List<UploadImagePojo> homearticles = (List<UploadImagePojo>)request.getAttribute("homearticles");
%>


<div class="Bodycontent">
<br />
<div class="normalblack">
    
    
    <div class="sh1">
<table border="0" align="center">
<tr>
<td></td>
</tr>
</table>
<br />
  </div>
<table border="0" style="margin-left:50px;" cellspacing="10px">
<%for(UploadImagePojo uploadimagepojo :homearticles )
       {%>
    <tr>
  <td ><font COLOR="#8A0829">&#9830; <a href="<%=request.getContextPath()%>/showarticles.do?method=displayArticle&&articleName=<%=uploadimagepojo.getTitle()%>" style="text-decoration: none"><%=uploadimagepojo.getTitle()%></a> </font></td>
  </tr>
    <%}%>
   
</table>
<br />

<p style="border-bottom: 1px dotted #A4A4A4;"></p>

<%@include file="/layouts/navigation.jsp" %>
<%@include file="/layouts/midbanner.jsp" %>

<!--face book comments-->
  

</div>
</div>
</hr>
<!--<hr color="#D8D8D8">
<div id="midbanner">
<div id="midbannerleft"></div>
</div>
<hr color="#D8D8D8">-->
<%@include file="/layouts/footer.jsp" %>

</div>
</div>
</body></html>