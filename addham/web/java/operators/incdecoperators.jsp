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
<td><Font COLOR="#585858"><b>Unary Operators</b></font></td>
</tr>
</table>

  </div>
  <table border="0" align="right">
<tr>
<td><Font COLOR="#585858"><font color="#980000">Posted On : 01-july-1988</font></font></td>
</tr>
</table>
<br /><br/>
 In java, two unary operators are there. Those are 1) ++ (increment operator) 2) -- (decrement operator).
 These are called unary operators because, we can apply these operators on a single operand.
 Ex a++, a-- . Unary operators can be applied in 4 ways. those are<br /><br />
<span class="span" />1) pre-increment  ( Ex : ++a )<br />
<span class="span" />2) post-increment ( Ex : a++ )<br />
<span class="span" />3) pre-decrement ( Ex : --a )<br />
<span class="span" />4) post-decrement ( Ex : a-- ) <br /><br />
<table border="1" align="">
<tr>
<td align="center">Expression</td>
<td align="center">a value</td>
<td align="center">Description</td>
<td align="center">b value</td>
</tr>
    <tr>
<td align="center">b = ++a</td>
<td align="center">5</td>
<td align="center">First a incremented by 1 and  then assigned to b</td>
<td align="center">6</td>
</tr>
    <tr>
<td align="center">b = a++</td>
<td align="center">5</td>
<td align="center">First a assigned to b and then incremented by 1.</td>
<td align="center">5</td>
</tr>
   <tr>
<td align="center">b = --a</td>
<td align="center">5</td>
<td align="center">First a decremented by 1 and then assigned to b</td>
<td align="center">4</td>
</tr>
   <tr>
<td align="center">b = a--</td>
<td align="center">5</td>
<td align="center">First a assigned to b and then decremented by 1.</td>
<td align="center">5</td>
</tr>  
</table><br /><br />
<span class="span" />1) We can't apply  increment, decrement operators on constants.<br />
<span class="span" />2) We can't apply  increment, decrement operators on final variables.<br />
<span class="span" />3) Nesting increment, decrement operators are not allowed.<br />
<span class="span" />4) We can apply increment, decrement operators on all primitive types except boolean<br />
 <div class="Example">
 <pre>
<font face="Times New Roman">
		<font color="#0000ff">int </font><font color="#000000">a = ++</font><font color="#800080">10 </font><font color="#000000">;   </font><font color="#008000">// causes compiler error.</font>
		<font color="#0000ff">int </font><font color="#000000">a = --</font><font color="#800080">10  </font><font color="#000000">;   </font><font color="#008000">// causes compiler error.</font>
		<font color="#0000ff">int </font><font color="#000000">b=</font><font color="#800080">10</font><font color="#000000">;</font>
		<font color="#0000ff">int </font><font color="#000000">a =++(++b) ;  </font><font color="#008000">// causes compiler error.</font>
		<font color="#0000ff">final int  </font><font color="#000000">a = ++b; </font><font color="#008000">// causes compiler error.</font>		
</font>
</pre>
</div>
<div class="sh">Difference between ++a and a=a+1 : </div><br />
when we are working with byte type or short type we can find the difference. See the following example.
<div class="Example">
 <pre>
<font face="Times New Roman">
		<font color="#0000ff">byte </font><font color="#000000">b = </font><font color="#800080">10</font><font color="#000000">;</font>
		<font color="#000000">b = ++b ; </font><font color="#008000">// prints  11</font>
		<font color="#000000">b = b+</font><font color="#800080">1</font><font color="#000000">;  </font><font color="#008000">// causes compiler error.</font>
		<font color="#008000">//because, b+1 promoted to int type. (int+byte=int, byte+byte=int)</font>
		<font color="#0000ff">int </font><font color="#000000">a =</font><font color="#800080">10</font><font color="#000000">;</font>
		<font color="#000000">a = a+</font><font color="#800080">1</font><font color="#000000">; </font><font color="#008000">// prints 11</font>
</font>
</pre>
</div>
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