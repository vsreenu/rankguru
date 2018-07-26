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
<td><Font COLOR="#585858"><b>Integral Literals </b></font></td>
</tr>
</table>

  </div>
  <table border="0" align="right">
<tr>
<td><Font COLOR="#585858"><font color="#980000">Posted On : 01-july-1988</font></font></td>
</tr>
</table>
<br /><br/>

A constant value that can be assigned to variable is called <i>literal</i>. For example : int a= 10. Here, 10 is a literal. The following are different types of literals<br /><br />
<span class="span" />1) Integer literals<br /> 
<span class="span" />2) Floating-point literals <br />
<span class="span" />3) Character literals<br />
<span class="span" />4) Boolean literals <br />
<span class="span" />5) String literals <br /><br />
Let's see Integral literals in this article. For integral data types (byte, short, int, long), we can specify literal value in various ways those are.<br /><br />
<div class="sh">decimal literals : </div><br />
<span class="span" />1) Allowed digits are 0 to 9 .<br /> 
<span class="span" />2) Example : int a= 100; <br /><br />
<div class="sh">Octal literals : </div><br />
<span class="span" />1) Allowed digits are 0 to 7 .<br /> 
<span class="span" />2) Literal should be prefixed with '0' (zero)<br /> 
<span class="span" />3) Example : int a= 0100; ( Equivalent to 64 ); <br />
<span class="span" />4) If literal is not prefixed with '0', That literal is treated as decimal number.  <br /><br />
<div class="sh">Hexadecimal literals : </div><br />
<span class="span" />1) Allowed digits are 0 to 9 , a to f or A to F<br /> 
<span class="span" />2) a,A -> 10; b,B -> 11; c,C -> 12; d,D -> 13; e,E -> 14; f,F -> 15.<br /> 
<span class="span" />3)  Literal should be prefixed with '0x' or '0X' .<br />
<span class="span" />4) Example : int a = 0x10 (equivalent to 16).<br /><br />
<div class="Example">
   <pre>
<font face="Times New Roman">
			<font color="#0000ff">int </font><font color="#000000">a = </font><font color="#800080">20</font><font color="#000000">;  </font><font color="#008000">// 'a' value is 20</font>
			<font color="#0000ff">int </font><font color="#000000">b = </font><font color="#800080">020</font><font color="#000000">; </font><font color="#008000">// 'a' value is 16</font>
			<font color="#0000ff">int </font><font color="#000000">c = </font><font color="#800080">0x20</font><font color="#000000">; </font><font color="#008000">// 'a' value is 32</font>
			<font color="#0000ff">int </font><font color="#000000">d = 0487; </font><font color="#008000">// causes compiler error. allowed 0 to 7 digits only</font>
			<font color="#0000ff">int </font><font color="#000000">a = 0xfg8 </font><font color="#008000">// causes compile error. allowed characters are 'a' to 'f'.</font>
</font>
</pre>
</div><br />
By default every integer literal is int type. To specify long type the literal should be preceeded by 'l' or 'L'. There is no way to specify byte and short types explicitly.
<br /><br />
<div class="Example">
   <pre>
<font face="Times New Roman">
			<font color="#0000ff">int </font><font color="#000000">a = </font><font color="#800080">20</font><font color="#000000">;   </font><font color="#008000">// 'a' value is 20</font>
			<font color="#0000ff">int </font><font color="#000000">b = </font><font color="#800080">20L</font><font color="#000000">;  </font><font color="#008000">// causese compiler error. Literal is long type</font>
			<font color="#0000ff">long </font><font color="#000000">c = </font><font color="#800080">20L</font><font color="#000000">; </font><font color="#008000">// fine compilaton</font>
			<font color="#0000ff">long </font><font color="#000000">d = </font><font color="#800080">20</font><font color="#000000">;  </font><font color="#008000">// fine compilation</font>
			<font color="#0000ff">long </font><font color="#000000">e = </font><font color="#800080">020L</font><font color="#000000">; </font><font color="#008000">// fine compilation</font>
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