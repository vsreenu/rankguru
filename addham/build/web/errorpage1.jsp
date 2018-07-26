
<%@page import="java.util.ArrayList"%>
<%@page import="com.sree.tali.pojo.UploadImagePojo"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Java 3 plus</title>
  <%@include file="/layoutnew/script.jsp" %>	
</head>
<body>
    
 
<div id="main">	
    <%@include file="/layoutnew/header.jsp" %>
    <%@include file="/layoutnew/menu.jsp" %>
<div id="welcomemiddle">
<!--<hr>-->

<div class="normalblack">
<!--<hr>-->
<div class="container-fluid">
      <div class="row-fluid">
        
        <div class="span9">
            		  <p style="border-bottom: 0px dotted #F2F2F2;"></p>
                          
                          ERROR OCCURRED KINDLY CONTACT ADMINISTRATOR
                          
                          <%
                          String scheme = request.getScheme();             
String serverName = request.getServerName(); 
int serverPort = request.getServerPort();    
String uri = (String) request.getAttribute("javax.servlet.forward.request_uri");
String prmstr = (String) request.getAttribute("javax.servlet.forward.query_string");
String url = scheme + "://" +serverName + ":" + serverPort + uri + "?" + prmstr;
System.out.println("url is ================" +url);
                          
                          %>
    <p style="border-bottom: 0px dotted #F2F2F2;"></p>
    
                  	  
        </div><!--/span-->
		
		<%@include file="layoutnew/leftadds.jsp" %>
			
      </div><!--/row-->


    </div>

</div>
</div>
<%@include file="layoutnew/footer.jsp" %>
</div>
</body></html>