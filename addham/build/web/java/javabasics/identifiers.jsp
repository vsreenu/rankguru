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
<td><Font COLOR="#585858"><b>Java Keywords</b></font></td>
</tr>
</table>

  </div>
  <table border="0" align="right">
<tr>
<td><Font COLOR="#585858"><font color="#980000">Posted On : 01-july-1988</font></font></td>
</tr>
</table>
<br /><br/>
Identifier is the name of the basic element. That is identifier is a name given to the class,interface, method, variable .. <br />
<br />Example : class Sum , interface Runnable, int count, void display().<br /><br />
from the above example, Sum, Runnable, count, display are identifiers. While defining identifiers we have to follow some rules.<br /><br />
<div class="sh"> Rules to define identifier.</div><br />
<span class="span" />1) reserved words(key words) can’t be used as identifiers.<br /> 
<span class="span" />2) Identifiers should only contain. <br />
<span class="span" /><span class="span" /> a) Alphabets [a to z] and [A to Z]<br />
<span class="span" /><span class="span" /> b) Digits [0 to 9]<br />
<span class="span" /><span class="span" /> c) Special Characters [ _ or $]<br />
<span class="span" />3)Identifier shouldn’t be started with digit <br />
<span class="span" />4)	Identifier should not contain special characters except   _  and  $. <br />
<span class="span" />5)	Identifier  can be started with special character [ _ or $].  <br />
<span class="span" />6)	Identifier should not contain space. IF we want to provide a gap between to words, <br />
<span class="span" />they must be connected with ' _'.
Due to this reason  _ is called connector symbol<br />
<span class="span" />7)	Pre defined class names can be used as identifiers. But not recommended. <br />
<span class="span" />8)	Identifier is case sensitive  (name !=Name).<br />
<div class="Example">
   <pre>
<font face="Times New Roman">
		<font color="#0000ff">int </font><font color="#000000">count;  </font><font color="#008000">// fine compilation</font>
		<font color="#0000ff">int </font><font color="#000000">count9; </font><font color="#008000">// fine compilation</font>
		<font color="#0000ff">int </font><font color="#000000">9count; </font><font color="#008000">// causes compiler error. Identifier can't be started with digit.</font>
		<font color="#0000ff">int </font><font color="#000000">count@; </font><font color="#008000">// causes compiler error. allowed characters are[_ and $]</font>
		<font color="#0000ff">int </font><font color="#000000">_count; </font><font color="#008000">// fine compilation</font>
		<font color="#0000ff">int </font><font color="#000000">number count; </font><font color="#008000">// causes compiler error. No space allowed</font>
		<font color="#0000ff">int </font><font color="#000000">number_count; </font><font color="#008000">// fine compilation</font>
		<font color="#0000ff">int void</font><font color="#000000">; </font><font color="#008000">// causes compiler error. void is a reserved word.</font>
		<font color="#0000ff">int </font><font color="#ff0000">String</font><font color="#000000">; </font><font color="#008000">// fine compilation but not recommnded</font>
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