<%@page import="com.sree.tali.pojo.UploadImagePojo"%>


<%
UploadImagePojo uploadhomeimage = (UploadImagePojo)request.getAttribute("uploadhomeimage");
%>

<%
    System.out.println(request.getRequestURL());
    String sessionString = uploadhomeimage.getUrl();
    int i=0;
    Integer str = (Integer)session.getAttribute(sessionString);
    System.out.println("out----------"+str);
    String action = request.getParameter("click");
    if(action==null) i =0;
    else if(action.equalsIgnoreCase("next")){ i = str.intValue(); i++;}
    else if(action.equalsIgnoreCase("prev")){ i = str.intValue(); if(i>0){ i--;} else { i=0;} }
    session.setAttribute(sessionString, i);
%>
<!--
<html:form action="#" >
</html:form>
-->
<script type="text/javascript">
function next()
{
  document.getElementById("hiddenField").value='next';
  document.myform.submit();
}
function prev()
{
  document.getElementById("hiddenField").value='prev';
  document.myform.submit();
}

   
         
</script>

<form name="myform" action="<%=request.getContextPath()%>/user/<%=uploadhomeimage.getUrl()%>">
    <input type="hidden" name="click" id="hiddenField"/>
</form>