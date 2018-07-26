<%@page import="com.sree.tali.hibernate.pojo.ThoranamDataPojo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sree.tali.pojo.UploadImagePojo"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>తోరణం - తెలుగు బ్లాగుల సమాహారం</title>
  <%@include file="/layoutnew/script.jsp" %>
<style> .allblur { width:100%; border: solid 1px #555;margin-bottom: 10px; background-color: #eed; box-shadow: 0 0 5px 2px rgba(0,0,0,0.6); -moz-box-shadow: 0 0 5px 2px rgba(0,0,0,0.6); -webkit-box-shadow: 0 0 5px 2px rgba(0,0,0,0.6); -o-box-shadow: 0 0 5px 2px rgba(0,0,0,0.6); } </style> 
<style> .allblur70mm { width:100%;height:45px; border: solid 1px #555;margin-bottom: 10px; background-color: #BDBDBD; box-shadow: 0 0 2px 1px rgba(0,0,0,0.6); -moz-box-shadow: 0 0 2px 1px rgba(0,0,0,0.6); -webkit-box-shadow: 0 0 2px 1px rgba(0,0,0,0.6); -o-box-shadow: 0 0 2px 1px rgba(0,0,0,0.6); } </style> 
</head>
<body  oncopy="return false" onpaste="return false" oncut="return false">
<script>
function myFunction() {
 $("#normalblackId").css("display", "block");
}
</script><%
List<UploadImagePojo> images = new ArrayList<UploadImagePojo>();
Object object3 = application.getAttribute("images");
if(object3!=null){
images = (List<UploadImagePojo>)object3;
}

List<ThoranamDataPojo> thoranam = new ArrayList<ThoranamDataPojo>();
Object object4 = request.getAttribute("thoranamTitles");
if(object4!=null){
thoranam = (List<ThoranamDataPojo>)object4;
}
%>
<div id="main">	
    <%@include file="/layoutnew/header.jsp" %>
    <%@include file="/layoutnew/menu.jsp" %>
<div id="welcomemiddle">
<!--<hr>-->
<div class="container-fluid">
                		  <p style="border-bottom: 0px dotted #F2F2F2;"></p>

   <!-- <div class="row-fluid"> 
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
                             <hr size="6" 	style="color:#D8D8D8;border-color:#D8D8D8;margin-top: 12px"> 	-->							

</div>
            <div class="normalblack3" id = "normalblackId" style="display:block">
<div class="container-fluid">
       <div class="row-fluid"> 
           <div class="span6">
              <table border="0" style="margin-left:0px; width:100%" cellspacing="4px">
    <tr align = "center">
<td  style="font-size:18px;color:#8A0829">
   </tr>
                  <tr>          
  <td   style="font-size:120%;" ><div class="box1 effect8" style="margin-top: 0px;padding-top: 12px;padding-bottom: 12px;padding-left: 10px;">
<%
    int mm=0;

       for( int i =0 ; i<30;i++){
      ThoranamDataPojo uploadimagepojo =thoranam.get(i);
  // for(ThoranamDataPojo uploadimagepojo :thoranam)   {
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
      
%>
   
<!--<div class="box1 effect8" style="margin-top: 0px;padding-top: 4px;">-->
<div><div class="Ramabhadra"> <table><tr><td>&#10153;&nbsp;&nbsp;</td> <td><a href="<%=uploadimagepojo.getUrl()%>" style="text-decoration: none;color: <%=color%>" target="_blank"><%=uploadimagepojo.getTitle()%></a>
                </td></tr></table></div></div>       
<%  }%>
 </div>
  </td>
    </tr>
                   
</table> 
           </div>
  
  
<div class="span6">
               
              <table border="0" style="margin-left:0px; width:100%" cellspacing="4px">
     <tr align = "center">
<td  style="font-size:18px;color:#8A0829">
   </tr>
                  <tr>          
  <td   style="font-size:120%;" ><div class="box1 effect8" style="margin-top: 0px;padding-top: 12px;padding-bottom: 12px;padding-left: 10px">
<%

       for( int i =30 ; i<60;i++){
      ThoranamDataPojo uploadimagepojo =thoranam.get(i);
  // for(ThoranamDataPojo uploadimagepojo :thoranam)   {
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
       
%>
   
<!--<div class="box1 effect8" style="margin-top: 0px;padding-top: 4px;">-->
<div><div class="Ramabhadra"> <table><tr><td>&#10153;&nbsp;&nbsp;</td> <td><a href="<%=uploadimagepojo.getUrl()%>" style="text-decoration: none;color: <%=color%>" target="_blank"><%=uploadimagepojo.getTitle()%></a>
   </td></tr></table> </div>   </div>       
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