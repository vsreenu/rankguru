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
<td><Font COLOR="#585858"><b>instanceof Operator</b></font></td>
</tr>
</table>
  </div>
  <table border="0" align="right">
<tr>
<td><Font COLOR="#585858"><font color="#980000">Posted On : 01-july-1988</font></font></td>
</tr>
</table>
<br /><br/>
<br /> <br />
instanceof operator is used to check an object is particular class type or not. For example, A is a class and 'a' is an object of that class. Now, if we want check object 'a' is a object of class A or not, we have to use instanceof  operator.
instanceof operator returns boolean value. See the following example
 <br /><br />
<div class="Example">
  <pre>
<font face="Times New Roman">
<font color="#0000ff">class </font><font color="#000000">A </font>
<font color="#000000">{</font>
	<font color="#0000ff">public static void </font><font color="#000000">main(</font><font color="#ff0000">String</font><font color="#000000">[] args) </font>
	<font color="#000000">{</font>
		<font color="#000000">A a=</font><font color="#0000ff">new </font><font color="#000000">A();</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(a </font><font color="#0000ff">instanceof </font><font color="#000000">A); </font><font color="#008000">// prints true;</font>
	<font color="#000000">}</font>
<font color="#000000">}</font>

</font>
</pre>
</div>
<br />See the following example.
 <div class="Example">
  <pre>
<font face="Times New Roman">
<font color="#0000ff">class </font><font color="#000000">A </font>
<font color="#000000">{</font>
	<font color="#0000ff">static </font><font color="#000000">A a;</font>
	<font color="#0000ff">public static void </font><font color="#000000">main(</font><font color="#ff0000">String</font><font color="#000000">[] args) </font>
	<font color="#000000">{</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(a </font><font color="#0000ff">instanceof </font><font color="#000000">A); </font><font color="#008000">// prints false;</font>
	<font color="#000000">}</font>
<font color="#000000">}</font>

</font>
</pre>
</div>
See the above example, 'a' doesn't refer any object. 'a' is a class level member variable. so, 'null' value will be  assigned to it. So, in the above example 'false' will be printed. 
<br /><br /><div class="sh">instanceof operator with inheritance</div><br />
<div class="Example">
 <pre>
<font face="Times New Roman">
<font color="#0000ff">interface </font><font color="#000000">I</font>
<font color="#000000">{</font>
<font color="#000000">}</font>
<font color="#0000ff">class </font><font color="#000000">B </font><font color="#0000ff">implements </font><font color="#000000">I</font>
<font color="#000000">{</font>
<font color="#000000">}</font>
<font color="#0000ff">class </font><font color="#000000">A </font><font color="#0000ff">extends </font><font color="#000000">B </font>
<font color="#000000">{</font>
	<font color="#0000ff">public static void </font><font color="#000000">main(</font><font color="#ff0000">String</font><font color="#000000">[] args) </font>
	<font color="#000000">{</font>
		<font color="#000000">B b=</font><font color="#0000ff">new </font><font color="#000000">A();</font>
		<font color="#000000">A a=</font><font color="#0000ff">new </font><font color="#000000">A();</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(b </font><font color="#0000ff">instanceof </font><font color="#000000">A); </font><font color="#008000">// prints true</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(b </font><font color="#0000ff">instanceof </font><font color="#000000">B); </font><font color="#008000">// prints true</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(b </font><font color="#0000ff">instanceof </font><font color="#000000">I); </font><font color="#008000">// prints true</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(a </font><font color="#0000ff">instanceof </font><font color="#000000">A); </font><font color="#008000">// prints true</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(a </font><font color="#0000ff">instanceof </font><font color="#000000">B); </font><font color="#008000">// prints true</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(a </font><font color="#0000ff">instanceof </font><font color="#000000">I); </font><font color="#008000">// prints true</font>
	<font color="#000000">}</font>
<font color="#000000">}</font>

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