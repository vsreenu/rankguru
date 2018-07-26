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
<td><Font COLOR="#585858"><b>break statement in java</b></font></td>
</tr>
</table>
  </div>
  <table border="0" align="right">
<tr>
<td><Font COLOR="#585858"><font color="#980000">Posted On : 01-july-1988</font></font></td>
</tr>
</table>
<br /><br/>
break statement is used in the following cases only.<br /> <br />
<span class="span" />1) inside loops, to break the loop execution based on some condition. <br />
<span class="span" />2) within switch to stop fall through. <br />
<span class="span" />3) inside labeled blocks to break that block execution. <br /> 
<div class="Example">
   <pre>
<font face="Times New Roman">
<font color="#0000ff">class </font><font color="#000000">A </font>
<font color="#000000">{</font>
	<font color="#0000ff">public static void </font><font color="#000000">main(</font><font color="#ff0000">String</font><font color="#000000">[] args) </font>
	<font color="#000000">{</font>
		<font color="#0000ff">for</font><font color="#000000">(</font><font color="#0000ff">int </font><font color="#000000">i=</font><font color="#800080">1</font><font color="#000000">;i&lt;</font><font color="#800080">10</font><font color="#000000">;i++)</font>
		<font color="#000000">{</font>
			<font color="#ff0000">System</font><font color="#000000">.out.println(i);</font>
			<font color="#0000ff">if</font><font color="#000000">(i==</font><font color="#800080">5</font><font color="#000000">)</font>
			<font color="#000000">{</font>
				<font color="#0000ff">break</font><font color="#000000">;</font>
			<font color="#000000">}</font>
		<font color="#000000">}</font>
	<font color="#000000">}</font>
<font color="#000000">}</font>

<font color="#008000">//prints 1 to 5 numbers.</font>
</font>
</pre>

</div>
<br />In case of nested loops, to break a particular loop we have to go for labeled break. see, the following example.
 <div class="Example">
 <pre>
<font face="Times New Roman">
<font color="#0000ff">class </font><font color="#000000">A </font>
<font color="#000000">{</font>
	<font color="#0000ff">public static void </font><font color="#000000">main(</font><font color="#ff0000">String</font><font color="#000000">[] args) </font>
	<font color="#000000">{</font>
		<font color="#000000">a:</font>
		<font color="#0000ff">for</font><font color="#000000">(</font><font color="#0000ff">int </font><font color="#000000">i=</font><font color="#800080">1</font><font color="#000000">;i&lt;</font><font color="#800080">10</font><font color="#000000">;i++)</font>
		<font color="#000000">{</font>
			<font color="#000000">b:</font>
			<font color="#0000ff">for</font><font color="#000000">(</font><font color="#0000ff">int </font><font color="#000000">j=</font><font color="#800080">1</font><font color="#000000">;j&lt;</font><font color="#800080">10</font><font color="#000000">;j++)</font>
			<font color="#000000">{</font>
				<font color="#000000">c:</font>
				<font color="#0000ff">for</font><font color="#000000">(</font><font color="#0000ff">int </font><font color="#000000">k=</font><font color="#800080">1</font><font color="#000000">;k&lt;</font><font color="#800080">10</font><font color="#000000">;k++)</font>
				<font color="#000000">{</font>
					<font color="#0000ff">break </font><font color="#000000">b;</font>
				<font color="#000000">}</font>
			
			<font color="#000000">}</font>
			
		<font color="#000000">}</font>
	<font color="#000000">}</font>
<font color="#000000">}</font>

</font>
</pre>

</div>
We can't write two break statements with in the same block.
<div class="Example">
  <pre>
<font face="Times New Roman">
<font color="#0000ff">class </font><font color="#000000">A </font>
<font color="#000000">{</font>
	<font color="#0000ff">public static void </font><font color="#000000">main(</font><font color="#ff0000">String</font><font color="#000000">[] args) </font>
	<font color="#000000">{</font>
			<font color="#000000">b:</font>
			<font color="#0000ff">for</font><font color="#000000">(</font><font color="#0000ff">int </font><font color="#000000">j=</font><font color="#800080">1</font><font color="#000000">;j&lt;</font><font color="#800080">10</font><font color="#000000">;j++)</font>
			<font color="#000000">{</font>
				<font color="#000000">c:</font>
				<font color="#0000ff">for</font><font color="#000000">(</font><font color="#0000ff">int </font><font color="#000000">k=</font><font color="#800080">1</font><font color="#000000">;k&lt;</font><font color="#800080">10</font><font color="#000000">;k++)</font>
				<font color="#000000">{</font>
					<font color="#0000ff">break </font><font color="#000000">b;</font>
					<font color="#0000ff">break </font><font color="#000000">c;   </font><font color="#008000">// causes compiler error unreachable statemnet.</font>
				<font color="#000000">}</font>
			<font color="#000000">}</font>
	<font color="#000000">}</font>
<font color="#000000">}</font>
</font>
</pre>
</div><br />
If we use break statement outside of switch or loops we will get compiler error.<br />
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