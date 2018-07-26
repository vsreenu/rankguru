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
<td><Font COLOR="#585858"><b>Relational Operators</b></font></td>
</tr>
</table>

  </div>
  <table border="0" align="right">
<tr>
<td><Font COLOR="#585858"><font color="#980000">Posted On : 01-july-1988</font></font></td>
</tr>
</table>
<br /><br/>
 Relational operators are  &#160;'>',  &#160;'<',  &#160;'>=',  &#160;'<=' . Let's see each one in detail.<br /><br /><br />
<table border="1" align="">
<tr>
<td align="center">Operator</td>
<td align="center">Description</td>
<td align="center">Example</td>
</tr>
   <tr>
<td align="center">></td>
<td >Checks weather the left operand is greater than the right operand or not. If the left operand is greater than the right operand then it returns true, otherwise returns false.</td>
<td align="center">10>20  returns  false , 20>10  returns  true</td>
</tr>
     <tr>
<td align="center"><</td>
<td >Checks weather the left operand is lesser than the right operand or not. If the left operand is lesser than the right operand then it returns true, otherwise returns false.</td>
<td align="center">10<20  returns  true , 20<10  returns  false</td>
</tr>
     <tr>
<td align="center">>=</td>
<td >Checks weather the left operand is greater than or equal to the right operand or not. If the left operand is greater than or equal to the right operand then it returns true, otherwise returns false.</td>
<td align="center">10>=20  returns  false , 20>=10  returns  true, 20>=20 returns true.</td>
</tr>
     <tr>
<td align="center">=<</td>
<td >Checks weather the left operand is lesser than or equal to the right operand or not. If the left operand is lesser than or equal to the right operand then it returns true, otherwise returns false.</td>
<td align="center">10=<20  returns true , 20=<10  returns  false, 20=<20 returns true.</td>
</tr>
</table><br /><br />
We can't apply relational operators for object types. See the following example. Remember.
 <div class="Example">
 <pre>
<font face="Times New Roman">
		<font color="#ff00ff">&quot;Newyork&quot; </font><font color="#000000">&gt; </font><font color="#ff00ff">&quot;London&quot;  </font><font color="#008000">// causes compiler error.</font>
		<font color="#008000">// operator &lt; can't be applied to String, String</font>
</font>
</pre>
</div><br />
We can apply relational operators to all primitive types except boolean type. We can't apply nesting of relational operators.<br /><br />
<div class="Example">
 <pre>
<font face="Times New Roman">
		<font color="#800080">10</font><font color="#000000">&lt;</font><font color="#800080">20</font><font color="#000000">&lt;</font><font color="#800080">30 </font><font color="#000000">;  </font><font color="#008000">// causes compiler error</font>
		<font color="#008000">// < operator can't be applied to boolean</font>
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