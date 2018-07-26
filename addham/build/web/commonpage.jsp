<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@ page errorPage="errorpage.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
UploadImagePojo uploadhomeimage = (UploadImagePojo)request.getAttribute("uploadhomeimage");
String metadata=uploadhomeimage.getMetaData();
 List<String> metalist=null;
if(metadata!=null)
{
    metalist=Arrays.asList(metadata.split(","));
}
List<UploadImagePojo> images = new ArrayList<UploadImagePojo>();
Object object3 = application.getAttribute("images");
if(object3!=null){
images = (List<UploadImagePojo>)object3;
}
%>

 

<title><%=uploadhomeimage.getTitle()%></title>
  <%@include file="/layoutnew/script.jsp" %>	
</head>
<%if(uploadhomeimage.getArticleType().equalsIgnoreCase("IMAGES")){%>
        <body  oncopy="return false" onpaste="return false" oncut="return false">
        <% } else { %>
<!--<body onload="myFunction()" oncopy="return false" onpaste="return false" oncut="return false">-->
        <body  oncopy="return false" onpaste="return false" oncut="return false">

<%}%>
<script>
function myFunction() {
 $("#normalblackId").css("display", "block");
}
</script>

    <div id="main">	
    <%@include file="/layoutnew/header.jsp" %>
    <%@include file="/layoutnew/menu.jsp" %>
<div id="welcomemiddle">
    
  <!--  <div class="container-fluid">
                		  <p style="border-bottom: 0px dotted #F2F2F2;"></p>

    <div class="row-fluid"> 
          <%
     int count = 0;
   for(UploadImagePojo uploadimagepojo : images)   {
       count++;
       if(count==7)
           break;
%>
<div class="span2">
    	<a href="<%=request.getContextPath()%>/user/<%=uploadimagepojo.getUrl()%>" style="text-decoration: none" title="<%=uploadimagepojo.getTitle()%>">
        <img src="<%=request.getContextPath()%>/<%=uploadimagepojo.getImagePath()%>" alt="Smiley face" border="0" height="170px" width="100%" />
        </a></div>

<%  }%> 
             
    </div>
                             <hr size="6" 	style="color:#D8D8D8;border-color:#D8D8D8;margin-top: 12px"> 								

</div>-->
<!--<hr>-->
<%if(uploadhomeimage.getArticleType().equalsIgnoreCase("IMAGES")){%>
<div class="normalblack" id="normalblackId" style="display:block">
<% } else { %>
<!--<div class="normalblack" id="normalblackId">-->
<div class="normalblack" id="normalblackId" style="display:block">

    <%}%>
<!--<hr>-->
<div class="container-fluid">
      <div class="row-fluid">
        <div class="span9">
<div class="row-fluid">	

 <%
 for(String str : metalist)
 {
     %>
     <h2><%=str%></h2>
     <%
 } 
 %>       
    
 <!--   <div class="sh1"> -->
<table border="0" align="center">
<tr>
    <td><Font COLOR="#585858"><br /><div class="Sree" style="font-size:140%;"><div class="box effect8" style="height: 40px;padding-top: 10px;padding-left: 20px;">
                    <%=uploadhomeimage.getTitle()%><font color="#fff"><%=uploadhomeimage.getCount()%></font></div></div></font></td>
</tr>
</table>
 <!-- </div>-->
 <!-- <table border="0" align="right">
<tr>
    <td><Font COLOR="#585858"><font color="#fff">Posted On : <%=uploadhomeimage.getCreateddate()%> </font><font color="#fff">[<%=uploadhomeimage.getCount()%>]</font></font></td>
</tr>
</table><br /> -->
<%if(uploadhomeimage.getImagePath()!=null&&uploadhomeimage.getArticleType()!=null
        &&!uploadhomeimage.getArticleType().equalsIgnoreCase("IMAGES")&&(uploadhomeimage.getImagePath().toLowerCase().contains("jpg")||uploadhomeimage.getImagePath().toLowerCase().contains("png"))){%>
<br />

<table width="100%">
    <tr >
      <%if(uploadhomeimage.getArticleType().equalsIgnoreCase("70MM")||uploadhomeimage.getArticleType().equalsIgnoreCase("ATOZ")||uploadhomeimage.getArticleType().equalsIgnoreCase("24HRS")||uploadhomeimage.getArticleType().equalsIgnoreCase("DAILYFIVE")){%>
        <td width="20%"></td>
        <td width="60%">
            <img src="<%=request.getContextPath()%>/<%=uploadhomeimage.getImagePath()%>" alt="Smiley face" border="0" height="300px" width="100%">
        </td>
        <td width="20%"></td>
        
        <% }else{%>
        <td width="10%"></td>
        <td width="80%" align="center">
            <img src="<%=request.getContextPath()%>/<%=uploadhomeimage.getImagePath()%>" alt="Smiley face" border="0"  >
        </td>
        <td width="10%"></td>
        <%}%>
    </tr>
</table>
  <%}%>  
<br />    
<div class="Sree">
<table>
    <tr>
                    <%if(!uploadhomeimage.getArticleType().equalsIgnoreCase("IMAGES")){%>
        <td  width="0%"> </td><td  width="96%">
            <div class="box1 effect8" style="margin-top: 10px;padding-top: 25px;padding-left: 20px;padding-right: 15px;padding-bottom: 25px">
  <jsp:include page="<%= uploadhomeimage.getFilPath() %>" flush="true" /> </div> 
  </td>  <td  width="4%"> </td>
            <%}else {%>
            <br />
             <td  width="4%"> </td><td  width="92%">
  <jsp:include page="<%= uploadhomeimage.getFilPath() %>" flush="true" /> 
   </td>  <td  width="4%"> </td>
  <%}%>
               

    </tr> 
</table>
</div>
<br />
<!--<span class='st_googleplus_large' displayText='Google +'></span>
<span class='st_facebook_large' displayText='Facebook'></span>
<span class='st_twitter_large' displayText='Tweet'></span>
<span class='st_linkedin_large' displayText='LinkedIn'></span>
<span class='st_pinterest_large' displayText='Pinterest'></span>
<span class='st_email_large' displayText='Email'></span>
<span class='st_sharethis_large' displayText='ShareThis'></span> -->
<span class='st_sharethis_hcount' displayText='ShareThis'></span>
<span class='st_facebook_hcount' displayText='Facebook'></span>
<span class='st_twitter_hcount' displayText='Tweet'></span>
<span class='st_googleplus_hcount' displayText='Google +'></span>
<span class='st_linkedin_hcount' displayText='LinkedIn'></span>
<br />
<p style="border-bottom: 1px dotted #A4A4A4;"></p>
<div class="Sree">
<%@include file="/layouts/recentarticles.jsp" %>
</div>
</div>
</div>
		<%@include file="layoutnew/leftadds.jsp" %>		
      </div><!--/row-->


    </div>

</div>
</div>
</div>
      <%@include file="layoutnew/footer.jsp" %>
</body></html>