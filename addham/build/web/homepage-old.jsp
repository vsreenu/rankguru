
<%@page import="com.sree.tali.pojo.UploadImagePojo"%>
<%@page import="java.util.List"%>
<%@page import="com.sree.tali.pojo.AdminHomepojo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0049)http://www.helenkellersinstitute.org/sitemap.html -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Java 3 plus</title>
<link href="./java3pluscss/style4.css" rel="stylesheet" type="text/css">
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



<%@include file="layouts/leftmenu.jsp" %>


<%
List<UploadImagePojo> homearticles = (List<UploadImagePojo>)session.getAttribute("homearticles");
%>

<div class="Bodycontent">
<br />
<div class="normalblack">
<%for(UploadImagePojo uploadimagepojo :homearticles )
       {%>
<table border="0">
 <tr>
    <td width="150px" align="center"><img src="images/java.png" alt="Big Boat"></td>
	<td width="15px" align=""></td>
        <%String url = request.getContextPath()+"/"+uploadimagepojo.getFilPath();%>
    <td width="550px"><%=uploadimagepojo.getDescription()%> &nbsp; &nbsp;...&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/showarticles.do?method=displayArticle&&articleName=<%=uploadimagepojo.getTitle()%>">more</a></td>
  </tr>
</table> 
     <p style="border-bottom: 1px dotted #A4A4A4;"></p>
<% }%>

<%@include file="layouts/navigation.jsp" %>
<%@include file="layouts/midbanner.jsp" %>

<!--face book comments-->
  

</div>
</div>
</hr>
<!--<hr color="#D8D8D8">
<div id="midbanner">
<div id="midbannerleft"></div>
</div>
<hr color="#D8D8D8">-->


 

<%@include file="layouts/footer.jsp" %>

</div>
</div>
</body></html>