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
<td><Font COLOR="#585858"><b>Bitwise Operators</b></font></td>
</tr>
</table>

  </div>
  <table border="0" align="right">
<tr>
<td><Font COLOR="#585858"><font color="#980000">Posted On : 01-july-1988</font></font></td>
</tr>
</table>
<br /><br/>
The operators that are used to assign values to operands are called assignment operators.
 Assignment operators are three types those are.<br /> <br />
<span class="span" />1) Simple assignment operators <br />
<span class="span" />2) Chained assignment operators <br />
<span class="span" />3) Compound assignment operators<br /> <br />
<div class="sh">Simple assignment operators</div><br /> 
'=' is a simple assignment operator. Using simple assignment operator, we can assign right side operand value to left side operand. Ex : int a = 10; int b = a; <br /><br />
<div class="sh">Chained assignment operators</div><br /> 
In this type, at a time we can assign value to multiple operands. See the following example.
<div class="Example">
   <pre>
<font face="Times New Roman">
			<font color="#0000ff">int </font><font color="#000000">a,b,c;</font>
			<font color="#000000">a=b=c=10; </font><font color="#008000">//fine compilation.</font>
</font>
</pre>
</div>
<br />We can't perform chained assignment at the time of data type declaration
 <div class="Example">
  <pre>
<font face="Times New Roman">
		<font color="#0000ff">int </font><font color="#000000">a=b=c=10</font><font color="#008000"> //compiler error.</font>
</font>
</pre>
</div>
<div class="sh">Compound assignment operators</div><br />
Some times we have to mix assignment operator with some other operator to perform assignment. Following operators are compound assignment operators.
+= , -= , *= , /= , %= , &= , |= , ^= , >>= , <<= . In compound assignment process, type conversion is automatically done.
<div class="Example">
 <pre>
<table border="0">
 <tr>
<td width="350px" >
<font face="Times New Roman">
<font color="#0000ff">byte </font><font color="#000000">a = </font><font color="#800080">10 </font><font color="#000000">;</font>
<font color="#000000">a+=</font><font color="#800080">5</font><font color="#000000">;</font>
<font color="#ff0000">System</font><font color="#000000">.out.println(a); </font><font color="#008000">// prints 15</font>
</font>
</td>
<td width="250px" align="">
<font face="Times New Roman">
    <font color="#0000ff">byte </font><font color="#000000">a = </font><font color="#800080">127</font><font color="#000000">; </font>
    <font color="#000000">a=a+</font><font color="#800080">5</font><font color="#000000">; </font><font color="#008000">// causes compiler error. range is -128 to 127.</font>
    <font color="#000000">a+=</font><font color="#800080">5</font><font color="#000000">; </font><font color="#008000">// prints  -124, automatic type conversion done</font>
</font>
</td> </tr>
</table> 
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