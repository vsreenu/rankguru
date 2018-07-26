<%@page import="com.sree.tali.hibernate.pojo.TempDataPojo"%>
<%@page import="com.sree.tali.pojo.TempPojo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@ page errorPage="errorpage.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
TempDataPojo uploadhomeimage = (TempDataPojo)request.getAttribute("temp");
String metadata=uploadhomeimage.getTitle();
 List<String> metalist=null;
if(metadata!=null)
{
    metalist=Arrays.asList(metadata.split(","));
}
%>
<title><%=uploadhomeimage.getTitle()%></title>
  <%@include file="script.jsp" %>	
</head>
        <body >



    <div id="main">	
<div id="welcomemiddle">
<!--<hr>-->
<div class="normalblack" id="normalblackId" style="display:block">

<div class="container-fluid">
      <div class="row-fluid">
        <div class="span9">
<div class="row-fluid">	

                           <a href="<%=request.getContextPath()%>/temp/index.jsp" style="text-decoration: none">&nbsp;&nbsp;&nbsp;home</a> 

    
    <div class="sh1">
<table border="0" align="center">
<tr>
    <td><Font COLOR="#585858"><br /><div class="Gidugu" style="font-size:140%;"><div class="box effect8" style="height: 40px;padding-top: 10px;padding-left: 20px;">
                    <%=uploadhomeimage.getTitle()%><font color="#fff"></font></div></div></font></td>
</tr>
</table>
  </div>
 <!-- <table border="0" align="right">
<tr>
</tr>
</table><br /> -->
 
<br />    
<div class="Sree">
<table>
    <tr>
                   
             <td  width="4%"> </td><td  width="92%">
  <%= uploadhomeimage.getText() %>
  
   </td>  <td  width="4%"> </td>
               

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

<br />
<p style="border-bottom: 1px dotted #A4A4A4;"></p>
<div class="Sree">
</div>
</div>
</div>
		<%@include file="leftadds.jsp" %>		
      </div><!--/row-->


    </div>

</div>
</div>
</div>
</body></html>