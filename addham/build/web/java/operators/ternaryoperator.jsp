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
<td><Font COLOR="#585858"><b>Ternary Operator </b></font></td>
</tr>
</table>
  </div>
  <table border="0" align="right">
<tr>
<td><Font COLOR="#585858"><font color="#980000">Posted On : 01-july-1988</font></font></td>
</tr>
</table>
<br /><br/>
In java, Ternary operator is also known as conditional operator. It is represented with the symbol '?'. Ternary operator is a short form of <b>ifelse </b>ladder<br /> 
<div class="Example">
 <pre>
<font face="Times New Roman">
<font color="#0000ff">class  </font><font color="#000000">As</font>
<font color="#000000">{</font>
	<font color="#0000ff">public static void </font><font color="#000000">main(</font><font color="#ff0000">String</font><font color="#000000">[] args) </font>
	<font color="#000000">{</font>
		<font color="#0000ff">int </font><font color="#000000">a=</font><font color="#800080">10</font><font color="#000000">,b=</font><font color="#800080">20</font><font color="#000000">;</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(a+b); </font><font color="#008000">//prints 30</font>
		<font color="#ff0000">String </font><font color="#000000">c=</font><font color="#ff00ff">&quot;good&quot;</font><font color="#000000">;</font>
		<font color="#ff0000">String </font><font color="#000000">d=</font><font color="#ff00ff">&quot;human&quot;</font><font color="#000000">;</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(c+d);  </font><font color="#008000">// prints  goodhuman</font>
	<font color="#000000">}</font>
<font color="#000000">}</font>

</font>
</pre>

</div>
<br />In expression, once String type is evaluated, then onwards + acts as concatination operator. Here operator evaluation is done from left to right. For better understand see the following example.

 <div class="Example">
  <pre>
<font face="Times New Roman">
<font color="#0000ff">class  </font><font color="#000000">As</font>
<font color="#000000">{</font>
	<font color="#0000ff">public static void </font><font color="#000000">main(</font><font color="#ff0000">String</font><font color="#000000">[] args) </font>
	<font color="#000000">{</font>
		<font color="#0000ff">int </font><font color="#000000">a=</font><font color="#800080">10</font><font color="#000000">,b=</font><font color="#800080">20</font><font color="#000000">; </font>
		<font color="#ff0000">String </font><font color="#000000">c=</font><font color="#ff00ff">&quot;good&quot;</font><font color="#000000">;</font>
		<font color="#ff0000">String </font><font color="#000000">d=</font><font color="#ff00ff">&quot;human&quot;</font><font color="#000000">;</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(a+b); </font><font color="#008000">// prints 30</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(a+b+c+d); </font><font color="#008000">// pritns 30goodhuman</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(c+d+a+b); </font><font color="#008000">// prints goodhuman1020</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(c+d);  </font><font color="#008000">// prints  goodhuman</font>
	<font color="#000000">}</font>
<font color="#000000">}</font>

</font>
</pre>
</div>
<br />See the following examples also
<br />
<div class="Example">
  <pre>
<font face="Times New Roman">

		<font color="#0000ff">int </font><font color="#000000">a=</font><font color="#800080">10</font><font color="#000000">,b=</font><font color="#800080">20</font><font color="#000000">; </font>
		<font color="#ff0000">String </font><font color="#000000">c=</font><font color="#ff00ff">&quot;good&quot;</font><font color="#000000">;</font>
		<font color="#ff0000">String </font><font color="#000000">d=</font><font color="#ff00ff">&quot;human&quot;</font><font color="#000000">;</font>
		<font color="#0000ff">char </font><font color="#000000">e=</font><font color="#ff00ff">'a'</font><font color="#000000">,f=</font><font color="#ff00ff">'b'</font><font color="#000000">;</font>
		<font color="#000000">a=c+d;  </font><font color="#008000">// compiler error. incompatable types</font>
		<font color="#000000">c=a+d;  </font><font color="#008000">// prints 10human</font>
		<font color="#000000">c=a+b;  </font><font color="#008000">// compiler error. incompatable types</font>

</font>
</pre>
</div>
<br />
If we apply + operator to char types, result will be int type and + operator acts as a arithmetic operator. see the following example.
<div class="Example">
 <pre>
<font face="Times New Roman">
		
		<font color="#0000ff">char </font><font color="#000000">a=</font><font color="#ff00ff">'a'</font><font color="#000000">,b=</font><font color="#ff00ff">'b'</font><font color="#000000">;</font>
		<font color="#ff0000">String </font><font color="#000000">c=a+b; </font><font color="#008000">// compiler error</font>
		<font color="#0000ff">int </font><font color="#000000">d=a+b; </font><font color="#008000">// d contans 195 (ASCII(a)+ASCII(b))</font>
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