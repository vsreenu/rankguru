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
<td><Font COLOR="#585858"><b>Boolean data type </b></font></td>
</tr>
</table>

  </div>
  <table border="0" align="right">
<tr>
<td><Font COLOR="#585858"><font color="#980000">Posted On : 01-july-1988</font></font></td>
</tr>
</table>
<br /><br/>

<div class="sh">boolean : </div>
<span class="span" />1) To assign logical values, java provided boolean data type<br />
<span class="span" />2) To assign boolean type possible values are <i>true</i> and <i>false</i>.<br />
<span class="span" />3) Both <i>true</i> and <i>false</i> are case sensitive.<br />
<span class="span" />4) boolean size is not specific(virtual machine dependent) <br />
<span class="span" />5) Default value of boolean type is false <br />
<span class="span" />6) We cannot assign any other type variable to boolean type variable. <br />
<div class="Example">
 <pre>
<font face="Times New Roman">
        <font color="#0000ff">boolean </font><font color="#000000">b=</font><font color="#0000ff">true</font><font color="#000000">; </font><font color="#008000">// fine compilation</font>
		<font color="#0000ff">boolean </font><font color="#000000">b=</font><font color="#0000ff">True</font><font color="#000000">; </font><font color="#008000">// causes compiler error </font>
		<font color="#0000ff">boolean </font><font color="#000000">b=</font><font color="#0000ff">"true"</font><font color="#000000">; </font><font color="#008000">// causes compiler error</font>
		<font color="#0000ff">boolean </font><font color="#000000">b=</font><font color="#800080">0</font><font color="#000000">; </font><font color="#008000">// causes compiler error</font>
</font>
</pre>
</div><br />
To boolean type variable we can assign conditions also. See the following example.<br />
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
Default value of boolean type is false and that variable should be class level variable. To local boolean type variables (method level variables) no value is assigned. For better understand see the following example.
<div class="Example">
 <pre>
<font face="Times New Roman">
<font color="#0000ff">public class </font><font color="#000000">A </font>
	<font color="#000000">{</font>
		<font color="#0000ff">static boolean </font><font color="#000000">a; </font>
		<font color="#0000ff">boolean </font><font color="#000000">b;</font>
		<font color="#0000ff">public static void </font><font color="#000000">main(</font><font color="#ff0000">String</font><font color="#000000">[] args)</font>
			<font color="#000000">{</font>
			<font color="#0000ff">boolean </font><font color="#000000">c;</font>
			<font color="#ff0000">System</font><font color="#000000">.out.println(a); </font><font color="#008000">// prints  'false'</font>
			<font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#0000ff">new </font><font color="#000000">A().b); </font><font color="#008000">// prints 'false'</font>
			<font color="#ff0000">System</font><font color="#000000">.out.println(c); </font>
			<font color="#008000">/* Above statement causes error, because 'c' is local variable to main method. </font>
			 <font color="#008000">So, jvm does not assign any value to 'c'. </font>
			 <font color="#008000">So, if we try to print 'c' it shows error.</font>
			 <font color="#008000">To come out from this error either we have to assign variable 'c'</font>
			 <font color="#008000">manually or we have to stop printing</font>
			 <font color="#008000">*/</font>
			<font color="#000000">}</font>
	<font color="#000000">}</font>
</font>
</pre>

</div>
<br /><br />

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