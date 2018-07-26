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
<td><Font COLOR="#585858"><b>for loop</b></font></td>
</tr>
</table>
  </div>
  <table border="0" align="right">
<tr>
<td><Font COLOR="#585858"><font color="#980000">Posted On : 01-july-1988</font></font></td>
</tr>
</table>
<br /><br/>
for loop is used to execute a block of statement iteratively until the condition is failed. for loop is preferable if we know the number of iterations.
See the following syntax.<br /> 
<div class="Example">
  <pre>
<font face="Times New Roman">
<font color="#0000ff">for</font><font color="#000000">(initialization-section; conditional-section; increment/decrement)</font>
<font color="#000000">{</font>
	<font color="#008000">// java statements</font>
<font color="#000000">}</font>
</font>
</pre>
</div>
<br />Let's see above three sections in details.<br /><br />
<div class="sh">Initialization-section</div><br />
In this sections we can write any valid java statement. But, we use this section mostly to declare and initialize variables. We can put only semicolon(;) also in this section ( in java, semicolon itself is a valid java statement). 
<div class="Example">
<pre>
<font face="Times New Roman">
<font color="#0000ff">for</font><font color="#000000">( </font><font color="#0000ff">int </font><font color="#000000">a=</font><font color="#800080">0</font><font color="#000000">; conditional-section; increment/decrement)</font>
<font color="#000000">{	 }</font>
<br /><br />
<font color="#0000ff">for</font><font color="#000000">( </font><font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#ff00ff">&quot;hi&quot;</font><font color="#000000">); conditional-section; increment/decrement)    </font>
<font color="#000000">{	 }</font>
  <font color="#008000">// we can write any valid java statement in initialization_section</font>
<br /><br />
<font color="#0000ff">for</font><font color="#000000">( ; conditional-section; increment/decrement)    </font>
<font color="#000000">{    }</font>
 <font color="#008000">// fine compilation . In java, semicolon is a valid statement</font>
</font>
</pre>
</div><br />
In initialization section, we can declare multiple variables of same data type. But, we can't declare multiple variables of different data types.  
<div class="Example">
<pre>
<font face="Times New Roman">
<font color="#0000ff">for</font><font color="#000000">(</font><font color="#0000ff">int </font><font color="#000000">a=</font><font color="#800080">0</font><font color="#000000">, b=</font><font color="#800080">0 </font><font color="#000000">; conditional-section; increment/decrement)    </font>
<font color="#000000">{    }</font>
<font color="#008000">// fine compilation , we can declare multiple variables of same type.</font>
<br /><br /><br />
<font color="#0000ff">for</font><font color="#000000">(</font><font color="#0000ff">int </font><font color="#000000">a=</font><font color="#800080">0</font><font color="#000000">,</font><font color="#0000ff">byte </font><font color="#000000">b=</font><font color="#800080">0 </font><font color="#000000">; conditional-section; increment/decrement)    </font>
<font color="#000000">{    }</font>
<font color="#008000">/* compiler error. we can't declare multiple variables of same type </font>
 <font color="#008000">because, we can't declare multiple data types in a single statement */</font>
</font>
</pre>
</div><br />
<div class="sh">Conditional section</div><br />
In this section, we can declare any java expression and the result should be boolean type.
If we don't specify any conditional expression in this section, compiler always places 'true'.
See, the following examples. <br />
<div class="Example">
<pre>
<font face="Times New Roman">
<font color="#0000ff">class </font><font color="#000000">A </font>
<font color="#000000">{</font>
	<font color="#0000ff">public static void </font><font color="#000000">main(</font><font color="#ff0000">String</font><font color="#000000">[] args) </font>
	<font color="#000000">{</font>
		<font color="#0000ff">for</font><font color="#000000">(</font><font color="#0000ff">int </font><font color="#000000">i=</font><font color="#800080">0</font><font color="#000000">; ; i++)</font>
		<font color="#000000">{</font><font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#ff00ff">&quot;hi&quot;</font><font color="#000000">);}</font>
	<font color="#000000">}</font>
<font color="#000000">}</font>
<font color="#008000">/*  Because we didn't write any expression in conditional block, </font>
<font color="#008000">compiler places 'true'. so,  &quot; Hi &quot; will be printed infinitely  */</font>
</font>
</pre>
</div><br />
<div class="sh">Increment & Decrement section</div><br />
In this section we can write any java valid statement. But mostly we use this block to write increment or decrement statements. This section is also optional.
<div class="Example">
<pre>
<font face="Times New Roman">
	<font color="#0000ff">for</font><font color="#000000">(</font><font color="#0000ff">int </font><font color="#000000">i=</font><font color="#800080">0</font><font color="#000000">; i&lt;</font><font color="#800080">4</font><font color="#000000">; i++)</font>
        <font color="#000000">{</font><font color="#ff0000">System</font><font color="#000000">.out.printl(i);}</font>
<br /><br />
	<font color="#0000ff">for</font><font color="#000000">(</font><font color="#0000ff">int </font><font color="#000000">i=</font><font color="#800080">0</font><font color="#000000">; i&lt;</font><font color="#800080">4</font><font color="#000000">; ) </font><font color="#008000">// compiles fine because  increment/decrement section is optional.</font>
	<font color="#000000">{</font><font color="#ff0000">System</font><font color="#000000">.out.printl(i);}</font>
</font>
</pre>
</div><br />
In for loop, all three parts are optional. Statement declared in initialization section is executed only once. statements written in conditional block and increment/decrement block are executed for every iteration.
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