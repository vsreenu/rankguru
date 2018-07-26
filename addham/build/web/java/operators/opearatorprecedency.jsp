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
<td><Font COLOR="#585858"><b>Operator Precedence</b></font></td>
</tr>
</table>
  </div>
  <table border="0" align="right">
<tr>
<td><Font COLOR="#585858"><font color="#980000">Posted On : 01-july-1988</font></font></td>
</tr>
</table>
<br><br>
Operator Precedence means, Specifying the order of operators in an expression that contains several operators. For example 1+2*3. Multiplication has more priority compared with addition operator. So, in this expression first multiplication is applied, then addition will be applied. So the answer is 7. Operators have priority in the following order( Highest to lowest )<br>
<br />
<span class="span" />Unary operators   <b> --> </b>   [], (), x++, x--, ++x, --x, ~, !, <typecast>,new<br /><br />
<span class="span" />Arithmetic operators  <b> --> </b>   *, /, %, +, - <br /><br />
<span class="span" />Shift operators   <b> --> </b>   <<, >>, >>><br /><br />
<span class="span" />Comparison operators   <b> --> </b>   <, <=, >, >=, instanceof <br /><br />
<span class="span" />Equality operators   <b> --> </b>   ==, !=<br  /><br />
<span class="span" />Bitwise operators   <b> --> </b>   &, ^, |<br /><br />
<span class="span" />Short-circuit operators   <b> --> </b>   &&, || <br /><br />
<span class="span" />Conditional operators   <b> --> </b>   ?:<br /><br />
<span class="span" />Assignment operators   <b> --> </b>    =, +=, -=, *=, /=, %=, &=, ^=, |=, <<=, >>=<br /><br />
See the following example.
<div class="Example">
<pre>
<font face="Times New Roman">
<font color="#0000ff">class  </font><font color="#000000">A</font>
<font color="#000000">{</font>
	<font color="#0000ff">public static void </font><font color="#000000">main(</font><font color="#ff0000">String</font><font color="#000000">[] args) </font>
	<font color="#000000">{</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#800080">1</font><font color="#000000">*</font><font color="#800080">2</font><font color="#000000">+</font><font color="#800080">3</font><font color="#000000">);  </font><font color="#008000">// prints  5</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#800080">1</font><font color="#000000">+</font><font color="#800080">2</font><font color="#000000">*</font><font color="#800080">3</font><font color="#000000">);  </font><font color="#008000">// prints  7</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#ff00ff">&quot;2+3=&quot;</font><font color="#000000">+</font><font color="#800080">2</font><font color="#000000">+</font><font color="#800080">3</font><font color="#000000">);  </font><font color="#008000">// prints 2+3=23</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#ff00ff">&quot;2+3=&quot;</font><font color="#000000">+(</font><font color="#800080">2</font><font color="#000000">+</font><font color="#800080">3</font><font color="#000000">));  </font><font color="#008000">// 2+3=5</font>
	<font color="#000000">}</font>
<font color="#000000">}</font>
</font>
</pre>
</div> 
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