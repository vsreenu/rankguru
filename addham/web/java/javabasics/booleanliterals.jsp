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
<td><Font COLOR="#585858"><b>Boolean, String literals</b></font></td>
</tr>
</table>

  </div>
  <table border="0" align="right">
<tr>
<td><Font COLOR="#585858"><font color="#980000">Posted On : 01-july-1988</font></font></td>
</tr>
</table>
<br /><br/>
<div class="sh">Boolean literals : </div><br />
Possible boolean literals are 'true' and 'false'. Boolean literals are case sensitive.
<div class="Example">
   <pre>
<font face="Times New Roman">
			<font color="#0000ff">boolean </font><font color="#000000">b = </font><font color="#0000ff">true</font><font color="#000000">; </font><font color="#008000">// fine compilation</font>
			<font color="#0000ff">boolean </font><font color="#000000">b = True; </font><font color="#008000">// causes compiler error</font>
			<font color="#0000ff">boolean </font><font color="#000000">b = </font><font color="#ff00ff">&quot;true&quot; </font><font color="#008000">// causes compiler error</font>
			<font color="#0000ff">boolean </font><font color="#000000">b = </font><font color="#ff00ff">'true' </font><font color="#008000">// causes compiler error</font>
</font>
</pre>
</div><br />
To boolean type variable we can assign conditions also. See the following example.
<div class="Example">
 <pre>
<font face="Times New Roman">
<font color="#0000ff">public class </font><font color="#000000">A {</font>
  <font color="#0000ff">public static void </font><font color="#000000">main(</font><font color="#ff0000">String</font><font color="#000000">[] args) {</font>
    <font color="#0000ff">int </font><font color="#000000">x = </font><font color="#800080">10</font><font color="#000000">;</font>
    <font color="#0000ff">boolean </font><font color="#000000">y = (x &gt; </font><font color="#800080">15</font><font color="#000000">);</font>
    <font color="#ff0000">System</font><font color="#000000">.out.println(y); </font><font color="#008000">// prints  'false'</font>
  <font color="#000000">}</font>
<font color="#000000">}</font>
</font>
</pre>
</div><br />
<div class="sh">String literals : </div><br />
A string literal contains a sequence of characters or escape sequences enclosed in double quotation mark symbols. While assigning string we can use escape characters such as '\t' , '\n'. We can assign null value to string.
<div class="Example">
 <pre>
<font face="Times New Roman">
			<font color="#ff0000">String </font><font color="#000000">s = </font><font color="#ff00ff">&quot;goodluck&quot;</font><font color="#000000">;</font>
			<font color="#ff0000">String </font><font color="#000000">s = </font><font color="#ff00ff">'goodluck'</font><font color="#000000">; </font><font color="#008000">// causes compiler error</font>
			<font color="#ff0000">String </font><font color="#000000">s = </font><font color="#ff00ff">&quot;good/nluck&quot;</font><font color="#000000">; </font><font color="#008000">//good , luck are printed in different lines</font>
			<font color="#ff0000">String </font><font color="#000000">s = </font><font color="#ff00ff">&quot;good\tluck&quot;</font><font color="#000000">; </font><font color="#008000">//  prints   'good luck' </font>
			<font color="#ff0000">String </font><font color="#000000">s = </font><font color="#0000ff">null</font><font color="#000000">;</font>
			<font color="#0000ff">int </font><font color="#000000">a = </font><font color="#0000ff">null </font><font color="#000000">; </font><font color="#008000">// causes commpiler error</font>
			<font color="#0000ff">double </font><font color="#000000">d = </font><font color="#0000ff">null </font><font color="#008000">// causes commpiler error</font>
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