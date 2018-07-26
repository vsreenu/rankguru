<%@page import="com.sree.tali.pojo.UploadImagePojo"%>
<%@page import="java.util.List"%>

<%
List<UploadImagePojo> reltedArticles = (List<UploadImagePojo>)request.getAttribute("reltedArticles");
List<UploadImagePojo> recentArticles = (List<UploadImagePojo>)request.getAttribute("recentArticles");
List<UploadImagePojo> mostViewedArticles = (List<UploadImagePojo>)request.getAttribute("mostViewedArticles");

%>
<div class="span6">

<table border="0" style="margin-left:0px; width:100%" cellspacing="0px">
    <tr align = "center">
<td style="font-size:20px;color:#8A0829">
    <div class="box3 effect8" style="padding-top: 10px;background-color: #D8D8D8"><b>Related Articles&nbsp;&nbsp;</b></div></td>
   </tr>
<% int rla=0;
for(UploadImagePojo uploadimagepojo :reltedArticles )
       {
           rla++;
        String color ="#564ADC";
        if(rla%2==0){
            color ="#EE5B2A";
        }
%>
    <tr>
          <td   style="font-size:100%" > <div class="Gidugu">

              <div class="box1 effect8" style="margin-top: 0px">&nbsp;&nbsp;&nbsp;&#10153;  <a href="<%=request.getContextPath()%>/user/<%=uploadimagepojo.getArticleType()%>/<%=uploadimagepojo.getUrl()%>" style="text-decoration: none;color:<%=color%>"><%=uploadimagepojo.getTitle()%></a> </div>
         

 </div>

  </td>
              </tr>
              <%  }%> 
</table>
</div>
 <div class="span6">
<table border="0" style="margin-left:0px; width:100%" cellspacing="0px">
      <tr align = "center">
<td style="font-size:20px;color:#8A0829">
    <div class="box3 effect8" style="padding-top: 10px;background-color: #D8D8D8"><b>Recent Articles&nbsp;&nbsp;</b></div></td>
   </tr>
<% int ra=0;
for(UploadImagePojo uploadimagepojo :recentArticles )
       {
           ra++;
        String color ="#564ADC";
        if(ra%2==0){
            color ="#EE5B2A";
        }
%>
    <tr>
          <td   style="font-size:100%" > <div class="Gidugu">

              <div class="box1 effect8" style="margin-top: 0px">&nbsp;&nbsp;&nbsp;&#10153;  <a href="<%=request.getContextPath()%>/user/<%=uploadimagepojo.getArticleType()%>/<%=uploadimagepojo.getUrl()%>" style="text-decoration: none;color:<%=color%>"><%=uploadimagepojo.getTitle()%></a> </div>
         

 </div>

  </td>
              </tr>
              <%  }%> 
</table>
     
 </div>
<!--
 
<table border="0" style="margin-left:0px; width:100%" cellspacing="0px">
     
    
    <tr align = "center">
<td style="font-size:20px;color:#8A0829">
    <div class="box3 effect8" style="padding-top: 10px;background-color: #D8D8D8"><b>Most Viewed Articles&nbsp;&nbsp;</b></div></td>
   </tr>
<%int az =0;
for(UploadImagePojo uploadimagepojo :mostViewedArticles )
       {
           
           az++;
        String color ="#564ADC";
        if(az%2==0){
            color ="#EE5B2A";
        }
%>
    <tr>
          <td   style="font-size:100%" > <div class="Gidugu">

              <div class="box1 effect8" style="margin-top: 0px">&nbsp;&nbsp;&nbsp;&#10153;  <a href="<%=request.getContextPath()%>/user/<%=uploadimagepojo.getArticleType()%>/<%=uploadimagepojo.getUrl()%>" style="text-decoration: none;color:<%=color%>"><%=uploadimagepojo.getTitle()%></a> </div>
         

 </div>

  </td>
              </tr>
              <%  }%> 
    
    

</table>
-->
