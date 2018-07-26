
<%@page import="java.util.Collections"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sree.tali.pojo.UploadImagePojo"%>
<%@page import="java.util.List"%>
<%@ page errorPage="errorpage.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Java 3 plus</title>
  <%@include file="/layoutnew/script.jsp" %>	
</head>
<body  oncopy="return false" onpaste="return false" oncut="return false">
<script>
function myFunction() {
 $("#normalblackId").css("display", "block");
}
</script>       
<%
List<String> desc = new ArrayList<String>();
desc.add("DAILYFIVE");
desc.add("STATECA");
desc.add("NATIONALCA");
desc.add("WORLDCA");
desc.add("70MM");
desc.add("24HRS");
desc.add("ATOZ");
desc.add("ANALYSYS");


List<UploadImagePojo> homearticles = new ArrayList<UploadImagePojo>();
Object object = request.getAttribute("homearticles");
if(object!=null){
homearticles = (List<UploadImagePojo>)object;
}
if(homearticles!=null&&homearticles.size()>0)
{
   if(!desc.contains(homearticles.get(0).getArticleType()))
   {
      Collections.reverse(homearticles);
   }      
}
%>
<div id="main">	
    <%@include file="/layoutnew/header.jsp" %>
    <%@include file="/layoutnew/menu.jsp" %>
<div id="welcomemiddle">
<!--<hr>-->

<div class="normalblack" id="normalblackId" style="display:block">
<!--<hr>-->
<div class="container-fluid">
      <div class="row-fluid">
        
        <div class="span9">
            		  <p style="border-bottom: 0px dotted #F2F2F2;"></p>
<div class="row-fluid">
<table border="0" style="width:98%;margin-left:5%;" cellspacing="2px">
<%for(UploadImagePojo uploadimagepojo :homearticles )
       {
if(uploadimagepojo.getDescription()==null||uploadimagepojo.getDescription().trim().length()==0)
{
    %>
<div class="sh1">
<tr align="center">
    <td ><font COLOR="#585858" style="font-size:21px"><div class="Ramabhadra"><%=uploadimagepojo.getTitle()%></div></font></td>
</tr>
</div>
    <%
}
else{
if(uploadimagepojo.getArticleType().contains("SUB"))
{ %>
      <tr>
        <td ><font COLOR="#8A0829" style="font-size:18px"><div class="Ramabhadra">&#10153; <a href="<%=request.getContextPath()%>/titles/<%=uploadimagepojo.getArticleType()%>" style="text-decoration: none"><%=uploadimagepojo.getTitle()%></a> </div></font></td>
  </tr>
<%
}else{
%>
    <tr>
        <td ><font COLOR="#8A0829" style="font-size:18px"><div class="Ramabhadra">&#10153; <a href="<%=request.getContextPath()%>/user/<%=uploadimagepojo.getUrl()%>" style="text-decoration: none"><%=uploadimagepojo.getTitle()%></a> </div></font></td>
  </tr>
    <%
      }
       }
       }
    %>
   
</table>
<br />

</div><!--/row-->
		  <p style="border-bottom: 1px dotted #A4A4A4;"></p>
             
                  	  
        </div><!--/span-->
		
		<%@include file="layoutnew/leftadds.jsp" %>
			
      </div><!--/row-->


    </div>

</div>
</div>
<%@include file="layoutnew/footer.jsp" %>
</div>
</body></html>