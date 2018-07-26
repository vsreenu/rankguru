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
<td><Font COLOR="#585858"><b>Switch statement</b></font></td>
</tr>
</table>
  </div>
  <table border="0" align="right">
<tr>
<td><Font COLOR="#585858"><font color="#980000">Posted On : 01-july-1988</font></font></td>
</tr>
</table>
<br /><br/>
If several execution paths are there, then we have to go for switch statement. See the following example.
<div class="Example">
    <pre>
<font face="Times New Roman">
<font color="#0000ff">class </font><font color="#000000">A</font>
<font color="#000000">{</font>
	<font color="#0000ff">public static void </font><font color="#000000">main(</font><font color="#ff0000">String </font><font color="#000000">arg[])</font>
	<font color="#000000">{</font>
		<font color="#0000ff">int </font><font color="#000000">a=</font><font color="#800080">3</font><font color="#000000">;</font>
		<font color="#0000ff">switch</font><font color="#000000">(a)</font>
		<font color="#000000">{</font>
			<font color="#0000ff">case </font><font color="#800080">1</font><font color="#000000">:</font>
				<font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#ff00ff">&quot;monday&quot;</font><font color="#000000">);</font>
			    <font color="#0000ff">break</font><font color="#000000">;</font>
			<font color="#0000ff">case </font><font color="#800080">2</font><font color="#000000">:</font>
				<font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#ff00ff">&quot;tuesday&quot;</font><font color="#000000">);</font>
			    <font color="#0000ff">break</font><font color="#000000">;</font>
			<font color="#0000ff">case </font><font color="#800080">3</font><font color="#000000">:</font>
				<font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#ff00ff">&quot;Wednesday&quot;</font><font color="#000000">);</font>
			    <font color="#0000ff">break</font><font color="#000000">;</font>
			<font color="#0000ff">default </font><font color="#000000">:</font>
				<font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#ff00ff">&quot;sunday&quot;</font><font color="#000000">);</font>
		<font color="#000000">}</font>
	<font color="#000000">}</font>
<font color="#000000">}</font>

<font color="#008000">// prints Wednesday</font>
</font>
</pre>
</div>
<br /> 
If the case is not matched, then default case will be executed. With in the switch every statement should be under some case or default case. Independent statements are not allowed.
With in the switch block case, default keywords are optional. Curly braces are mandatory. With in the case break statement is optional.
<div class="Example">
 <pre><font face="Times New Roman">
<font color="#0000ff">int </font><font color="#000000">a=</font><font color="#800080">10</font><font color="#000000">;</font>
<font color="#0000ff">switch</font><font color="#000000">(a)</font>
<font color="#000000">{</font>
<font color="#000000">}</font>
</font>
</pre>
</div>
<br />
We can pass following types as a switch arguments. Those are.
byte, char, short, int, Byte, Short, Character, Integer, String, enum. Upto jdk 1.4 allowed types are byte, char, short, int. In jdk 1.5
 Byte, Short, Character, Integer, enum types are allowed. String type is allowed in jdk1.7. Remember long, float, double, boolean types are not allowed as switch arguments.
<div class="Example">
  <pre>
<font face="Times New Roman">
<font color="#0000ff">long </font><font color="#000000">a=</font><font color="#800080">10</font><font color="#000000">;</font>
<font color="#0000ff">switch</font><font color="#000000">(a)  </font><font color="#008000">// causes compiler error long type is not allowed</font>
<font color="#000000">{</font>
	<font color="#0000ff">case </font><font color="#800080">10</font><font color="#000000">:</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(a);</font>
	<font color="#0000ff">default</font><font color="#000000">:</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println();</font>
<font color="#000000">}</font>
</font>
</pre>
</div>
<br />With in the switch duplicate case labels are not allowed. Expression is allowed as a switch argument. We can use constant expression as a case label. See the following example.
 <div class="Example">
  <pre>
<font face="Times New Roman">
<font color="#0000ff">int </font><font color="#000000">a=</font><font color="#800080">10</font><font color="#000000">;</font>
<font color="#0000ff">switch</font><font color="#000000">(a +</font><font color="#800080">1</font><font color="#000000">) </font>
<font color="#000000">{</font>
	<font color="#0000ff">case </font><font color="#800080">10</font><font color="#000000">:</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(a);</font>
	<font color="#0000ff">case </font><font color="#800080">10 </font><font color="#000000">+ </font><font color="#800080">1 </font><font color="#000000">:</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(a+</font><font color="#800080">1</font><font color="#000000">);</font>
	<font color="#0000ff">default</font><font color="#000000">:</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println();</font>
<font color="#000000">}</font>
</font>
</pre>
</div>
<br />With in the switch every case label should be constant. variables are not allowed as case label. If we make variable as final then only variable is allowed as case label. See the following example.
 <div class="Example">
 <pre>
<font face="Times New Roman">
<font color="#0000ff">int </font><font color="#000000">a=</font><font color="#800080">10</font><font color="#000000">;</font>
<font color="#0000ff">int final </font><font color="#000000">b=</font><font color="#800080">20</font>
<font color="#0000ff">switch</font><font color="#000000">(a) </font>
<font color="#000000">{</font>
	<font color="#0000ff">case </font><font color="#800080">10</font><font color="#000000">:</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(a);</font>
	<font color="#0000ff">case </font><font color="#000000">a :      </font><font color="#008000">// causes compiler error. non final variable is not allowed as label</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(a+</font><font color="#800080">1</font><font color="#000000">);</font>
	<font color="#0000ff">case </font><font color="#000000">b+</font><font color="#800080">1 </font><font color="#000000">:          </font><font color="#008000">// fine compilation. beacause b is defined as final</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(b);</font>
	<font color="#0000ff">default</font><font color="#000000">:</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println();</font>
<font color="#000000">}</font>
</font>
</pre>
</div> <br />
<div class="sh">Default case in switch</div><br />
If we want to execute default action with in switch block, then we have to write default case. Default case is executed if no other case is matched.
We can take default case anywhere within the switch block, But it is good practice to take as last case.
<br /><br />
<div class="sh">Fall through in switch</div><br />
With in the switch block if any case is matched, that case onwards all the remaining cases will be executed until it encounters break statement or end of the switch block.
This is called switch fall through.
For better understand see the following example.,
<br />
<div class="Example">
<pre>
<font face="Times New Roman">

		<font color="#0000ff">int </font><font color="#000000">a</font><font color="#800080"></font><font color="#000000">;</font>
		<font color="#0000ff">switch</font><font color="#000000">(a)</font>
		<font color="#000000">{</font>
			<font color="#0000ff">case </font><font color="#800080">1</font><font color="#000000">:</font>
				<font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#ff00ff">&quot;monday&quot;</font><font color="#000000">);</font>
			<font color="#0000ff">case </font><font color="#800080">2</font><font color="#000000">:</font>
				<font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#ff00ff">&quot;tuesday&quot;</font><font color="#000000">);</font>
			<font color="#0000ff">case </font><font color="#800080">3</font><font color="#000000">:</font>
				<font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#ff00ff">&quot;Wednesday&quot;</font><font color="#000000">);</font>
			    <font color="#0000ff">break</font><font color="#000000">;</font>
			<font color="#0000ff">case </font><font color="#800080">4</font><font color="#000000">:</font>
				<font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#ff00ff">&quot;Thursday&quot;</font><font color="#000000">);</font>
			<font color="#0000ff">default </font><font color="#000000">:</font>
				<font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#ff00ff">&quot;sunday&quot;</font><font color="#000000">);</font>
		<font color="#000000">}</font>

</font>
</pre>
</div><br />
See the above example.<br /><br />
<span class="span" />1) if a=1 then monday, tuesday, wednesday will be printed<br />
<span class="span" />2) if a=2 then tuesday, wednesday will be printed <br />
<span class="span" />3) if a=3 then wednesday will be printed <br /> 
<span class="span" />4) if a=4 then thursday, sunday will be printed <br /> 
<span class="span" />5) if a=5 then sunday will be printed <br /> <br />
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