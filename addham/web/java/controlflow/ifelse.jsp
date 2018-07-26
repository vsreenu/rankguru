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
<td><Font COLOR="#585858"><b>If-else statement in Java</b></font></td>
</tr>
</table>
  </div>
  <table border="0" align="right">
<tr>
<td><Font COLOR="#585858"><font color="#980000">Posted On : 01-july-1988</font></font></td>
</tr>
</table>
<br /><br/>
Following is syntax of if-else statement.
<div class="Example">
<pre>
<font face="Times New Roman">
<font color="#0000ff">if</font><font color="#000000">(a)</font>
<font color="#000000">{ </font><font color="#0000ff">if </font><font color="#000000">a is </font><font color="#0000ff">true</font><font color="#000000">. </font><font color="#0000ff">this </font><font color="#000000">block will be executed. }</font>
<font color="#0000ff">else </font>
<font color="#000000">{ </font><font color="#0000ff">if </font><font color="#000000">condition is </font><font color="#0000ff">false </font><font color="#000000">then </font><font color="#0000ff">this </font><font color="#000000">block will be executed }</font>
</font>
</pre></div>
<br /> 
The argument passed to the <b>if</b> statement should be boolean type. If it is other than boolean type, we will get compiler error. See the following example.
<div class="Example">
 <pre>
<table border="0">
 <tr>
<td width="350px" >

<font face="Times New Roman">
<font color="#0000ff">int </font><font color="#000000">a=</font><font color="#800080">10</font><font color="#000000">;</font>
<font color="#0000ff">if</font><font color="#000000">(a){</font>
<font color="#ff0000">System</font><font color="#000000">.out.println(a);</font>
<font color="#000000">}</font>
<font color="#0000ff">else</font><font color="#000000">{</font>
<font color="#ff0000">System</font><font color="#000000">.out.println();</font>
<font color="#000000">}</font>
<font color="#008000">// compile error.</font>
</font>
</td>
<td width="250px" align="">
<font face="Times New Roman">
<font color="#0000ff">int </font><font color="#000000">a=</font><font color="#800080">10</font><font color="#000000">;</font>
<font color="#0000ff">if</font><font color="#000000">(a==</font><font color="#800080">10</font><font color="#000000">){</font>
<font color="#ff0000">System</font><font color="#000000">.out.println(a);</font>
<font color="#000000">}</font>
<font color="#0000ff">else</font><font color="#000000">{</font>
<font color="#ff0000">System</font><font color="#000000">.out.println();</font>
<font color="#000000">}</font>
<font color="#008000">// fine compilation. prints 10.</font>
</font>
</td> </tr>
</table> 
<font face="Times New Roman">
<font color="#0000ff">boolean </font><font color="#000000">b=</font><font color="#0000ff">true</font><font color="#000000">;</font>
<font color="#0000ff">if</font><font color="#000000">(b){</font>
<font color="#ff0000">System</font><font color="#000000">.out.println(a);</font>
<font color="#000000">}</font>
<font color="#0000ff">else</font><font color="#000000">{</font>
<font color="#ff0000">System</font><font color="#000000">.out.println();</font>
<font color="#000000">}</font>
<font color="#008000">// fine compilation. prints true.</font>
</font>
</pre>
</div><br />
if <b>if </b> or <b>else </b> blocks contains a single statement, then curly braces are optional and that statement should n't be a declarative statement. See the following example.
<div class="Example">
<pre>
<font face="Times New Roman">
<font color="#0000ff">boolean </font><font color="#000000">b=</font><font color="#0000ff">true</font><font color="#000000">;</font>
<font color="#0000ff">if</font><font color="#000000">(b)</font>
<font color="#ff0000">System</font><font color="#000000">.out.println(a);</font>
<font color="#0000ff">else</font>
<font color="#ff0000">System</font><font color="#000000">.out.println();</font>

<font color="#008000">//.prints true.</font>
</font><br />
<font face="Times New Roman">
<font color="#0000ff">boolean </font><font color="#000000">b=</font><font color="#0000ff">true</font><font color="#000000">;</font>
<font color="#0000ff">if</font><font color="#000000">(b)</font>
<font color="#0000ff">int </font><font color="#000000">a=</font><font color="#800080">0</font><font color="#000000">;  </font><font color="#008000">// declarative statement. causes compiler error. </font>
<font color="#0000ff">else</font>
<font color="#0000ff">int </font><font color="#000000">c=</font><font color="#800080">0</font><font color="#000000">;  </font><font color="#008000">// declarative statement. causes compiler error. </font>
<br />
<font color="#0000ff">boolean </font><font color="#000000">b=</font><font color="#0000ff">true</font><font color="#000000">;</font>
<font color="#0000ff">if</font><font color="#000000">(b)</font>
<font color="#000000">{</font>
<font color="#0000ff">int </font><font color="#000000">a=</font><font color="#800080">0</font><font color="#000000">;  </font><font color="#008000">// fine compilation.</font>
<font color="#000000">}    </font>
<font color="#0000ff">else</font>
<font color="#000000">{</font>
<font color="#0000ff">int </font><font color="#000000">c=</font><font color="#800080">0</font><font color="#000000">;  </font><font color="#008000">// fine compilation.</font>
<font color="#000000">} </font>
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