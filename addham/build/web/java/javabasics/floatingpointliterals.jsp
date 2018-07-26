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
<td><Font COLOR="#585858"><b>Floating Point Literals</b></font></td>
</tr>
</table>

  </div>
  <table border="0" align="right">
<tr>
<td><Font COLOR="#585858"><font color="#980000">Posted On : 01-july-1988</font></font></td>
</tr>
</table>
<br /><br/>
By default every floating point literal is double type. So, we cannot assign floating point literal to float type directly. To assign floating point literal to float type, the literal should be suffixed with 'F' or 'f'.
See the following example
<div class="Example">
   <pre>
<font face="Times New Roman">
			<font color="#0000ff">float </font><font color="#000000">f = </font><font color="#800080">10</font><font color="#000000">.</font><font color="#800080">05</font><font color="#000000">;   </font><font color="#008000">// causes compiler error</font>
			<font color="#0000ff">float </font><font color="#000000">f = </font><font color="#800080">10</font><font color="#000000">.</font><font color="#800080">05f</font><font color="#000000">;  </font><font color="#008000">// fine compilation</font>
			<font color="#0000ff">double </font><font color="#000000">d = </font><font color="#800080">10</font><font color="#000000">.</font><font color="#800080">05</font><font color="#000000">; </font><font color="#008000">// fine compilation</font>
			<font color="#0000ff">double </font><font color="#000000">d = </font><font color="#800080">10</font><font color="#000000">.</font><font color="#800080">05d</font><font color="#000000">; </font><font color="#008000">// fine compilation</font>
			<font color="#0000ff">float </font><font color="#000000">f = </font><font color="#800080">10</font><font color="#000000">.</font><font color="#800080">05d</font><font color="#000000">; </font><font color="#008000">// compiler error</font>
</font>
</pre>
</div><br />
Floating point literals can be specified in decimal form only. We can't specify octal and hexadecimal forms. We can assign integral literals to floating data types and these integral literals can be specified in octal, hexadecimal form also.  <br />
<div class="Example">
   <pre>
<font face="Times New Roman">
			<font color="#0000ff">float </font><font color="#000000">f = </font><font color="#800080">10</font><font color="#000000">.</font><font color="#800080">05f</font><font color="#000000">;   </font><font color="#008000">// prints 10.05</font>
			<font color="#0000ff">float </font><font color="#000000">f = </font><font color="#800080">010</font><font color="#000000">.</font><font color="#800080">05f</font><font color="#000000">;  </font><font color="#008000">// prints 10.05</font>
			<font color="#0000ff">float </font><font color="#000000">f = </font><font color="#800080">0x10</font><font color="#000000">.</font><font color="#800080">05f</font><font color="#000000">;  </font><font color="#008000">// causes compiler error</font>
			<font color="#0000ff">float </font><font color="#000000">d = </font><font color="#800080">0x10</font><font color="#000000">.</font><font color="#800080">05</font><font color="#000000">;  </font><font color="#008000">// causes compiler error</font>
			<font color="#0000ff">float </font><font color="#000000">f = </font><font color="#800080">20 </font><font color="#000000">; </font><font color="#008000">// prints 20.0</font>
			<font color="#0000ff">float </font><font color="#000000">f = </font><font color="#800080">020</font><font color="#000000">; </font><font color="#008000">// prints 16.0</font>
			<font color="#0000ff">float </font><font color="#000000">f = </font><font color="#800080">020f</font><font color="#000000">; </font><font color="#008000">// prints 20.0</font>
			<font color="#0000ff">float </font><font color="#000000">f = </font><font color="#800080">0x20</font><font color="#000000">; </font><font color="#008000">// prints 32.0</font>
			<font color="#0000ff">double </font><font color="#000000">d = </font><font color="#800080">020</font><font color="#000000">; </font><font color="#008000">// prints 16.0</font>
			<font color="#0000ff">double </font><font color="#000000">d = </font><font color="#800080">020d</font><font color="#000000">; </font><font color="#008000">// prints 20.0</font>
			<font color="#0000ff">double </font><font color="#000000">d = </font><font color="#800080">0x20</font><font color="#000000">; </font><font color="#008000">// prints 32.0</font>


			<font color="#0000ff">float </font><font color="#000000">f = </font><font color="#800080">0x20f</font><font color="#000000">; </font><font color="#008000">// (2*16^2 + 0*16^1 + 15*16^0)=(512+15)=527.0</font>
			<font color="#0000ff">double </font><font color="#000000">d = </font><font color="#800080">0x20d</font><font color="#000000">; </font><font color="#008000">// (2*16^2 + 0*16^1 + 13*16^0)=(512+13)=525.0</font>
</font>
</pre>
</div><br />
Floating point literals can be represented in scientific form also.
<div class="Example">
 <pre>
<font face="Times New Roman">
			<font color="#0000ff">double </font><font color="#000000">d = </font><font color="#800080">10</font><font color="#000000">.</font><font color="#800080">05e2</font><font color="#000000">; </font><font color="#008000">// 10.05*10^2 = 1005.0</font>
			<font color="#0000ff">float </font><font color="#000000">f = </font><font color="#800080">10</font><font color="#000000">.</font><font color="#800080">05e2</font><font color="#000000">; </font><font color="#008000">// causes compiler error</font>
			<font color="#0000ff">float </font><font color="#000000">f = </font><font color="#800080">10</font><font color="#000000">.</font><font color="#800080">05e2f</font><font color="#000000">; </font><font color="#008000">// // 10.05*10^2 = 1005.0</font>		
</font>
</pre>
</div><br />
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