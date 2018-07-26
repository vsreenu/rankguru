<%@page import="java.util.ArrayList"%>
<%@page import="com.sree.tali.pojo.UploadImagePojo"%>
<%@page import="java.util.List"%>
<%@ page errorPage="errorpage.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addham</title>
  <%@include file="/layoutnew/script.jsp" %>
<style> .allblur { width:100%; border: solid 1px #555;margin-bottom: 10px; background-color: #eed; box-shadow: 0 0 5px 2px rgba(0,0,0,0.6); -moz-box-shadow: 0 0 5px 2px rgba(0,0,0,0.6); -webkit-box-shadow: 0 0 5px 2px rgba(0,0,0,0.6); -o-box-shadow: 0 0 5px 2px rgba(0,0,0,0.6); } </style> 
<style> .allblur70mm { width:100%;height:45px; border: solid 1px #555;margin-bottom: 10px; background-color: #BDBDBD; box-shadow: 0 0 2px 1px rgba(0,0,0,0.6); -moz-box-shadow: 0 0 2px 1px rgba(0,0,0,0.6); -webkit-box-shadow: 0 0 2px 1px rgba(0,0,0,0.6); -o-box-shadow: 0 0 2px 1px rgba(0,0,0,0.6); } </style> 
</head>
<body  oncopy="return false" onpaste="return false" oncut="return false">
<script>
function myFunction() {
 $("#normalblackId").css("display", "block");
}
</script>
<style>
        .syntax { 
    border-radius: 6px;
	border:1px solid;
    border-color:#009900; 
    background: #E6E6E6;
    padding: 20px; 
	margin-top:20px;
	margin-bottom:20px;
	margin-right:20px;
	color:#B40431;

}

  @media screen and (max-width: 1000px) {
  #hiddenonphone {
    visibility: hidden;
    clear: both;
    display: none;
  }
}
  </style>  
    <%
 List<UploadImagePojo> mm70 = new ArrayList<UploadImagePojo>();
 List<UploadImagePojo> hrs24 = new ArrayList<UploadImagePojo>();
 List<UploadImagePojo> atoz = new ArrayList<UploadImagePojo>();
 List<UploadImagePojo> images = new ArrayList<UploadImagePojo>();

Object object = request.getAttribute("mm70");
Object object1 = request.getAttribute("hrs24");
Object object2 = request.getAttribute("atoz");
Object object3 = application.getAttribute("images");

if(object!=null){
mm70 = (List<UploadImagePojo>)object;
}
if(object1!=null){
hrs24 = (List<UploadImagePojo>)object1;
}
if(object2!=null){
atoz = (List<UploadImagePojo>)object2;
}
if(object3!=null){
images = (List<UploadImagePojo>)object3;
}
%>
<div id="main">	
    <%@include file="/layoutnew/header.jsp" %>
    <%@include file="/layoutnew/menu.jsp" %>
<div id="welcomemiddle">
<!--<hr>-->
<div class="container-fluid" id ="hiddenonphone">
                		  <p style="border-bottom: 0px dotted #F2F2F2;"></p>

    <div class="row-fluid" > 
          <%
     int count = 0;
   for(UploadImagePojo uploadimagepojo : images)   {
       count++;
       if(count==7)
           break;
%>
<div class="span2" >
    	<a href="<%=request.getContextPath()%>/user/<%=uploadimagepojo.getUrl()%>" style="text-decoration: none" title="<%=uploadimagepojo.getTitle()%>">
        <img src="<%=request.getContextPath()%>/<%=uploadimagepojo.getImagePath()%>" alt="Smiley face" border="0" height="170px" width="100%" />
        </a></div>

<%  }%> 
              <!--  <div class="span2"><img src="<%=request.getContextPath()%>/1.jpg" alt="Smiley face" border="0" height="150px" width="100%"></div>
                <div class="span2"><img src="<%=request.getContextPath()%>/1.jpg" alt="Smiley face" border="0" height="150px" width="100%"></div>
                <div class="span2"><img src="<%=request.getContextPath()%>/1.jpg" alt="Smiley face" border="0" height="150px" width="100%"></div>
                <div class="span2"><img src="<%=request.getContextPath()%>/1.jpg" alt="Smiley face" border="0" height="150px" width="100%"></div>
                <div class="span2"><img src="<%=request.getContextPath()%>/1.jpg" alt="Smiley face" border="0" height="150px" width="100%"></div>
                <div class="span2"><img src="<%=request.getContextPath()%>/1.jpg" alt="Smiley face" border="0" height="150px" width="100%"></div>
            -->
    </div>
                             <hr size="6" 	style="color:#D8D8D8;border-color:#D8D8D8;margin-top: 12px"> 								

</div>
            <div class="normalblack" id = "normalblackId" style="display:block">
<!--<hr>-->
<div class="container-fluid">
       <div class="row-fluid"> 
           <div class="span4">
               
              <table border="0" style="margin-left:0px; width:100%" cellspacing="4px">
     <tr align = "center">
  <td  style="font-size:20px;color:#8A0829">
      <div class="box effect8" style="border-radius: 6px; padding-top: 10px;padding-bottom: 8px;background-color: #E6E6E6 ;border-radius:3px;"><b>24Hrs&nbsp;&nbsp;</b></div></td>
  </tr>
   <tr>          
  <td   style="font-size:128%;" > <div class="Gidugu">
<%
int mm =0;
   for(UploadImagePojo uploadimagepojo :hrs24)   {
       mm++;
        String color ="#564ADC";
        if(mm%2==0){
            color ="#088A29";
        }
        if(mm%3==0){
            color ="#EE5B2A";
        }
        if(mm%5==0){
            color ="#A901DB";
        }
       if(mm==17)
           break;
%>
   
<div class="box1 effect8" style="margin-top: 4px;padding-left: 6px;padding-top: 6px;"> <a href="<%=request.getContextPath()%>/user/<%=uploadimagepojo.getArticleType()%>/<%=uploadimagepojo.getUrl()%>" style="text-decoration: none;color: <%=color%>"><li><%=uploadimagepojo.getTitle()%></li></a> </div>
          
<%  }%>
   </div>

  </td>
    </tr>
                   
</table> 
<!--
<div class="allblur70mm"> 
    <div class="Gidugu">70 MM
          </div>
</div>

<div class="allblur"> 
    <div class="Gidugu">
   <%
   for(UploadImagePojo uploadimagepojo :mm70)   {
%>               

<font COLOR="#8A0829">&nbsp;&nbsp;&nbsp;&#9830;  <a href="<%=request.getContextPath()%>/user/<%=uploadimagepojo.getUrl()%>" style="text-decoration: none"><%=uploadimagepojo.getTitle()%></a> </font>
   <br />
<%  }%>
       </div>
</div>
-->
           </div>
  
  
<div class="span4">
               
              <table border="0" style="margin-left:0px; width:100%" cellspacing="4px">
     <tr align = "center">
<td  style="font-size:20px;color:#8A0829">
          <div class="box effect8" style="border-radius: 6px; padding-top: 10px;padding-bottom: 8px;background-color: #E6E6E6 ;border-radius:3px;"><b>70MM&nbsp;&nbsp;</b></div></td>

      <!--<div class="box effect8" style="padding-top: 10px;padding-bottom: 8px;background-color: #BDBDBD ;border-radius:3px;"><b>70MM&nbsp;&nbsp;</b></div></td>-->
   </tr>
   <tr>          
  <td   style="font-size:120%;" > <div class="Ramabhadra">

    <%
   int hrs =0 ;
   for(UploadImagePojo uploadimagepojo :mm70 )   {
        hrs++;
        String color ="#EE5B2A";
        if(hrs%2==0){
            color ="#088A29";
        }
        if(hrs%3==0){
            color ="#564ADC";
        }
        if(hrs%5==0){
            color ="#A901DB";
        }
       if(hrs==17)
           break;
%>
      <div class="box1 effect8" style="margin-top: 4px;padding-left: 6px;padding-top: 6px;"> <a href="<%=request.getContextPath()%>/user/<%=uploadimagepojo.getArticleType()%>/<%=uploadimagepojo.getUrl()%>" style="text-decoration: none;color: <%=color%>"><li><%=uploadimagepojo.getTitle()%></li></a> </div>
         
<%  }%>
     </div>

  </td>
    </tr>
</table> 
                  
           </div>              

<div class="span4">
               
              <table border="0" style="margin-left:0px; width:100%" cellspacing="4px">
     <tr align = "center">
<td style="font-size:20px;color:#8A0829">
    <!--<div class="box effect8" style="padding-top: 10px;padding-bottom: 8px;background-color: #BDBDBD ;border-radius:3px;"><b>AtoZ&nbsp;&nbsp;</b></div></td>-->
          <div class="box effect8" style="border-radius: 6px; padding-top: 10px;padding-bottom: 8px;background-color: #E6E6E6 ;border-radius:3px;"><b>AtoZ&nbsp;&nbsp;</b></div></td>

   </tr>
 <tr>          
  <td   style="font-size:128%" > <div class="Gidugu">
   <%
   int az=0 ;
   for(UploadImagePojo uploadimagepojo : atoz)   {
        az++;
        String color ="#A901DB";
        if(az%2==0){
            color ="#088A29";
        }
        if(az%3==0){
            color ="#EE5B2A";
        }
        if(az%5==0){
            color ="#564ADC";
        }
       if(az==17)
           break;
%>

   
<div class="box1 effect8" style="margin-top: 4px;padding-left: 6px;padding-top: 6px;">  <a href="<%=request.getContextPath()%>/user/<%=uploadimagepojo.getArticleType()%>/<%=uploadimagepojo.getUrl()%>" style="text-decoration: none;color:<%=color%>"><li><%=uploadimagepojo.getTitle()%></li></a> </div>
         
<%  }%> 
 </div>

  </td>
    </tr>
</table> 
                  
           </div>
       
       
       </div>
     


    </div>

</div>
</div>
</div>
 <%@include file="layoutnew/footer.jsp" %>

</body></html>