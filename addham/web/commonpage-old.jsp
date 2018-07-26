<%@page import="com.sree.tali.pojo.UploadImagePojo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
UploadImagePojo uploadhomeimage = (UploadImagePojo)request.getAttribute("uploadhomeimage");
%>
<title>Java 3 plus</title>

<%@include file="/layouts/script.jsp" %>

</head>
<body>
<div id="main">

    
<%@include file="/layouts/banner.jsp" %>
    
<%@include file="/layouts/menu.jsp" %>
    
<%@include file="/layouts/sidemenu.jsp" %>


<div id="welcomemiddle">
<!--<hr>-->

<%@include file="/layouts/leftmenu.jsp" %>
<div class="Bodycontent">
<br />
<div class="normalblack">
    
  <jsp:include page="<%= uploadhomeimage.getFilPath() %>" flush="true" />  
    
<p style="border-bottom: 1px dotted #A4A4A4;"></p>
<%@include file="/layouts/navigation.jsp" %>
<%@include file="/layouts/midbanner.jsp" %>
<!--%@include file="relatedarticles.jsp" %> -->
<%@include file="/layouts/recentarticles.jsp" %>
<%@include file="/layouts/midbanner.jsp" %>

<%@include file="/layouts/comment.jsp"%>
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