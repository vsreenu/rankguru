<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
 
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<link href="<%=request.getContextPath()%>/scriptfiles/style3.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.0.3.js"></script>
<script type="text/javascript" async="" src="<%=request.getContextPath()%>/scriptfiles/ga.js"></script><script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-8968519-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
<script type="text/javascript"> 
//below javascript is used for Disabling right-click on HTML page
//document.oncontextmenu=new Function("return false");//Disabling right-click


//below javascript is used for Disabling text selection in web page
document.onselectstart=new Function ("return false"); //Disabling text selection in web page
if (window.sidebar){
document.onmousedown=new Function("return false"); 
document.onclick=new Function("return true") ; 


//Disable Cut into HTML form using Javascript 
document.oncut=new Function("return false"); 


//Disable Copy into HTML form using Javascript 
document.oncopy=new Function("return false"); 


//Disable Paste into HTML form using Javascript  
document.onpaste=new Function("return false"); 
}
</script>

<!-- <script type="text/javascript">var switchTo5x=true;</script>
<script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
<script type="text/javascript">stLight.options({publisher: "99d70da4-ccfc-48d3-9ab6-daa85e9be0b4", doNotHash: false, doNotCopy: false, hashAddressBar: false});</script>
 -->
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath() %>/scriptfiles/share/share.css" />
<script src="<%=request.getContextPath() %>/scriptfiles/share/share.js" type="text/javascript"></script>