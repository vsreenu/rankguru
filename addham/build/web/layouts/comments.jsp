<%@page import="com.sree.tali.pojo.UploadImagePojo"%>
<%@page import="java.util.List"%>

<%
List<UploadImagePojo> reltedArticles = (List<UploadImagePojo>)request.getAttribute("reltedArticles");
List<UploadImagePojo> recentArticles = (List<UploadImagePojo>)request.getAttribute("recentArticles");
List<UploadImagePojo> mostViewedArticles = (List<UploadImagePojo>)request.getAttribute("mostViewedArticles");

%>

<table border="0" style="margin-left:0px; width:100%" cellspacing="4px">
     <tr align = "center">
  <td bgcolor="#BDBDBD">Related Articles</td>
  </tr>
<%for(UploadImagePojo uploadimagepojo :reltedArticles )
       {%>
    <tr>
  <td bgcolor="#E6E6E6"  style="font-size:13px" ><font COLOR="#8A0829">&nbsp;&nbsp;&nbsp;&#9830; <a href="<%=request.getContextPath()%>/user/<%=uploadimagepojo.getUrl()%>" style="text-decoration: none"><%=uploadimagepojo.getTitle()%></a> </font></td>
  </tr>
    <%}%>
</table>
 
<table border="0" style="margin-left:0px; width:100%" cellspacing="4px">
     <tr align = "center">
  <td bgcolor="#BDBDBD">Recent Articles</td>
  </tr>
<%for(UploadImagePojo uploadimagepojo :recentArticles )
       {%>
    <tr>
  <td bgcolor="#E6E6E6" style="font-size:13px" ><font COLOR="#8A0829">&nbsp;&nbsp;&nbsp;&#9830; <a href="<%=request.getContextPath()%>/user/<%=uploadimagepojo.getUrl()%>" style="text-decoration: none"><%=uploadimagepojo.getTitle()%></a> </font></td>
  </tr>
    <%}%>
     
</table>


 
<table border="0" style="margin-left:0px; width:100%" cellspacing="4px">
     <tr align = "center">
         <td bgcolor="#BDBDBD">Most Viewed Articles</td>
  </tr>
<%for(UploadImagePojo uploadimagepojo :mostViewedArticles )
       {%>
    <tr>
  <td bgcolor="#E6E6E6" style="font-size:13px" ><font COLOR="#8A0829">&nbsp;&nbsp;&nbsp;&#9830; <a href="<%=request.getContextPath()%>/user/<%=uploadimagepojo.getUrl()%>" style="text-decoration: none"><%=uploadimagepojo.getTitle()%></a> </font></td>
  </tr>
    <%}%>

</table>

