<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
<td><Font COLOR="#585858"><b>Typecast Operator</b></font></td>
</tr>
</table>
  </div>
  <table border="0" align="right">
<tr>
<td><Font COLOR="#585858"><font color="#980000">Posted On : 01-july-1988</font></font></td>
</tr>
</table>
<br /><br/>Converting an expression of a given type into another type is known as type casting.
There are two types of type casting. Those are.<br /> <br />
<span class="span" />1) Implicit type casting <br />
<span class="span" />2) Explicit type casting <br /> <br />
<div class="sh">Implicit type casting</div><br /> 
If we assign smaller data type values to greater data type variables, then compiler automatically promotes smaller data type to greater data type variable. See the following example.<br />
<div class="Example">
 <pre>
<font face="Times New Roman">
<font color="#0000ff">class </font><font color="#000000">A </font>
<font color="#000000">{</font>
	<font color="#0000ff">public static void </font><font color="#000000">main(</font><font color="#ff0000">String</font><font color="#000000">[] args) </font>
	<font color="#000000">{</font>
		<font color="#0000ff">int </font><font color="#000000">a=</font><font color="#800080">10</font><font color="#000000">;</font>
		<font color="#0000ff">double </font><font color="#000000">b=a;</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(b);  </font><font color="#008000">// prints 10.0</font>
	<font color="#000000">}</font>
<font color="#000000">}</font>

</font>
</pre>
</div>
<br />From the above example, when we assign int 'a' value to double 'b', automatically int is promoted to double type. So,  10.0 is printed rather than 10. This promotion is done by compiler automatically. So, this is called implicit type casting  
 <br /> <br /><div class="sh">Explicit type casting</div><br />
 If we assign greater data type value to smaller data type variable, compiler shows error. To come out from this error developer should type cast the source type to destination manually. So, this is called Explicit typecasting. 
 <div class="Example">
 <pre>
<font face="Times New Roman">
    	    <font color="#0000ff">int  </font><font color="#000000">a=</font><font color="#800080">10</font><font color="#000000">;</font>
		<font color="#0000ff">short </font><font color="#000000">b=a; </font><font color="#008000">//causes error</font>
		<font color="#0000ff">short </font><font color="#000000">b=(</font><font color="#0000ff">short</font><font color="#000000">)a;  </font><font color="#008000">// fine execution</font>
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