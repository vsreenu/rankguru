<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0049)http://www.helenkellersinstitute.org/sitemap.html -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Java 3 plus</title>
<%@include file="../../layouts/script.jsp" %>

</head>
<body>
<div id="main">

    
<%@include file="../../layouts/banner.jsp" %>
    
<%@include file="../../layouts/menu.jsp" %>
    
<%@include file="../../layouts/sidemenu.jsp" %>


<div id="welcomemiddle">
<!--<hr>-->



<%@include file="../../layouts/leftmenu.jsp" %>




<div class="Bodycontent">
<br />
<div class="normalblack"><div class="sh1">
<table border="0" align="center">
<tr>
<td><Font COLOR="#585858"><b>Floating-point data types in Java</b></font></td>
</tr>
</table>

  </div>
  <table border="0" align="right">
<tr>
<td><Font COLOR="#585858"><font color="#980000">Posted On : 01-july-1988</font></font></td>
</tr>
</table>
<br /><br/>

<i> Floating point data types</i> can hold fraction numbers. 
float, double comes under<i> Floating point data types</i> category. Let's see each one in detail. <br /><br />
<div class="sh">float : </div>
<span class="span" />1) float size is 32 bits(4 bytes).<br />
<span class="span" />2) float can hold the maximum value  3.4E+38 (3.4*10^38)<br />
<span class="span" />3) It can hold the Minimum value 1.4E-45 (1.4*10^-45)<br />
<span class="span" />4) We can assign any character to float type variable <br />
<span class="span" />5) We can assign byte, short, int, long type variables to float type variable <br /><br />
<div class="Example">
   <pre>
<font face="Times New Roman">
		<font color="#0000ff">float </font><font color="#000000">a=</font><font color="#800080">120</font><font color="#000000">; </font><font color="#008000">// 120.0 will be printed</font>
		<font color="#0000ff">float </font><font color="#000000">b=</font><font color="#800080">'a'</font><font color="#000000">;  </font><font color="#008000">// 99.0 will be printed</font>
		<font color="#0000ff">long </font><font color="#000000">c=</font><font color="#800080">200</font><font color="#000000">;</font>
		<font color="#0000ff">float </font><font color="#000000">d=</font><font color="#800080">c</font><font color="#000000">;  </font>
</font>
</pre>
</div><br />
<div class="sh">double : </div>
<span class="span" />1) double size is 32 bits(4 bytes).<br />
<span class="span" />2) double can hold the maximum value  1.7E+308 (1.7*10^308)<br />
<span class="span" />3) It can hold the Minimum value 4.9E-324 (4.9*10^-324)<br />
<span class="span" />4) We can assign any character to double type variable <br />
<span class="span" />5) We can assign byte, short, int, long, float type variables to double type variable <br />
<div class="Example">
   <pre>
<font face="Times New Roman">
		<font color="#0000ff">double </font><font color="#000000">a=</font><font color="#800080">120</font><font color="#000000">; </font><font color="#008000">// 120.0 will be printed</font>
		<font color="#0000ff">double </font><font color="#000000">b=</font><font color="#ff00ff">'a'</font><font color="#000000">;  </font><font color="#008000">// 99.0 will be printed</font>
		<font color="#0000ff">float </font><font color="#000000">c=</font><font color="#800080">200</font><font color="#000000">;</font>
		<font color="#0000ff">double </font><font color="#000000">d=c;</font>
		<font color="#0000ff">double </font><font color="#000000">e=</font><font color="#800080">10</font><font color="#000000">.</font><font color="#800080">05</font><font color="#000000">; </font>
		<font color="#0000ff">double </font><font color="#000000">e=</font><font color="#800080">10</font><font color="#000000">.</font><font color="#800080">05d</font><font color="#000000">;</font>
		<font color="#0000ff">float </font><font color="#000000">f=</font><font color="#800080">10</font><font color="#000000">.</font><font color="#800080">05</font><font color="#000000">; </font><font color="#008000">// causes compiler error</font>
		<font color="#0000ff">float </font><font color="#000000">f=</font><font color="#800080">10</font><font color="#000000">.</font><font color="#800080">05f</font><font color="#000000">;  </font><font color="#008000">//fine compilation</font>
		
</font>
</pre>

</div><br />
See the above example, float f= 10.05 causes compiler error. Every fractional number is by default double type. Double range is greater than float range. So, we cannot assign double type to float type. To make it float type the fractional number should be preceeded by 'f'. Example float f= 10.05f. <br /><br />
Float is single precision and double is double precision. See the next article to understand single precision and double precision<br /><br />
<br /> 

<p style="border-bottom: 1px dotted #A4A4A4;"></p>
<%@include file="../../layouts/navigation.jsp" %>
<%@include file="../../layouts/midbanner.jsp" %>
<%@include file="relatedarticles.jsp" %>
<%@include file="../../layouts/recentarticles.jsp" %>
<p style="border-bottom: 1px dotted #A4A4A4;"></p>
<%@include file="../../layouts/midbanner.jsp" %>
<p style="border-bottom: 1px dotted #A4A4A4;"></p>
<%@include file="../../layouts/comment.jsp"%>
<!--face book comments-->
  

</div>
</div>
</hr>
<!--<hr color="#D8D8D8">
<div id="midbanner">
<div id="midbannerleft"></div>
</div>
<hr color="#D8D8D8">-->


 

<%@include file="../../layouts/footer.jsp" %>

</div>
</div>
</body></html>