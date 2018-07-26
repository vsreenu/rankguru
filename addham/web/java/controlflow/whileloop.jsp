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
<td><Font COLOR="#585858"><b>While loop in java</b></font></td>
</tr>
</table>
  </div>
  <table border="0" align="right">
<tr>
<td><Font COLOR="#585858"><font color="#980000">Posted On : 01-july-1988</font></font></td>
</tr>
</table>
<br /><br/>
While loop is used to execute a block of statement iteratively until the condition is true. While loop is preferable if we don't know the number of iterations.
See the simple program.<br /> 
<div class="Example">
  <pre>
<font face="Times New Roman">
<font color="#0000ff">class </font><font color="#000000">A</font>
<font color="#000000">{</font>
	<font color="#0000ff">public static void </font><font color="#000000">main(</font><font color="#ff0000">String </font><font color="#000000">arg[])</font>
	<font color="#000000">{</font>
		<font color="#0000ff">int </font><font color="#000000">i=</font><font color="#800080">0</font><font color="#000000">;</font>
		<font color="#0000ff">while</font><font color="#000000">(i&lt;</font><font color="#800080">5</font><font color="#000000">)</font>
		<font color="#000000">{</font>
			<font color="#ff0000">System</font><font color="#000000">.out.print(i);</font>
			<font color="#000000">i++;</font>
		<font color="#000000">}</font>
	<font color="#000000">}</font>
<font color="#000000">}</font>
<font color="#008000">// prints   01234</font>
</font>
</pre>
</div>
<br />The argument passed to the while loop should be boolean type. If we use any other type we will get compiler error.
 <div class="Example">
 <pre>
<font face="Times New Roman">
		<font color="#0000ff">while</font><font color="#000000">(</font><font color="#800080">5</font><font color="#000000">)     </font><font color="#008000">//  causes compiler error. only boolean type is allowed</font>
		<font color="#000000">{</font>
			<font color="#ff0000">System</font><font color="#000000">.out.print(i);</font>
			<font color="#000000">i++;</font>
		<font color="#000000">}</font>
</font>
</pre>
</div><br />
curly braces are optional in while loop. without curly braces we can take only one statement and that should n't be declarative statement.
<div class="Example">
 <pre>
<font face="Times New Roman">
<font color="#0000ff">while</font><font color="#000000">(</font><font color="#0000ff">true</font><font color="#000000">);     </font><font color="#008000">//  fine going.</font>


<font color="#0000ff">while</font><font color="#000000">(</font><font color="#0000ff">true</font><font color="#000000">)     </font><font color="#008000">// compiler error  semi colon is mandatory</font>


<font color="#0000ff">while</font><font color="#000000">(</font><font color="#0000ff">true</font><font color="#000000">)</font>
<font color="#ff0000">System</font><font color="#000000">.out.prinln(</font><font color="#ff00ff">&quot;hi&quot;</font><font color="#000000">);    </font><font color="#008000">//   fine going</font>


<font color="#0000ff">while</font><font color="#000000">(</font><font color="#0000ff">true</font><font color="#000000">)</font>
<font color="#0000ff">int </font><font color="#000000">a=</font><font color="#800080">10</font><font color="#000000">;       </font><font color="#008000">//  compiler error. without curly braces declarative statement is not allowed</font>



<font color="#0000ff">while</font><font color="#000000">(</font><font color="#0000ff">true</font><font color="#000000">)</font>
<font color="#000000">{</font>
	<font color="#0000ff">int </font><font color="#000000">a=</font><font color="#800080">10</font><font color="#000000">;       </font><font color="#008000">//    fine going</font>
<font color="#000000">}</font>
</font>
</pre>
</div><br />
To know the some special behavior of while loop, see the following examples.
<div class="Example">
<pre>
<font face="Times New Roman">
<font color="#0000ff">while</font><font color="#000000">(</font><font color="#0000ff">true</font><font color="#000000">)</font>
<font color="#000000">{</font>
	<font color="#ff0000">System</font><font color="#000000">.out.prinltn(</font><font color="#ff00ff">&quot;hi&quot;</font><font color="#000000">);</font>
<font color="#000000">}  </font>
	<font color="#ff0000">System</font><font color="#000000">.out.prinltn(</font><font color="#ff00ff">&quot;hai&quot;</font><font color="#000000">)  ;      </font><font color="#008000">//    compiler error here. unreachable statement.</font>




	<font color="#0000ff">while</font><font color="#000000">(</font><font color="#0000ff">false</font><font color="#000000">)</font>
<font color="#000000">{</font>
	<font color="#ff0000">System</font><font color="#000000">.out.prinltn(</font><font color="#ff00ff">&quot;hi&quot;</font><font color="#000000">)  ;      </font><font color="#008000">//    compiler error here. unreachable statement.</font>
<font color="#000000">}  </font>
	<font color="#ff0000">System</font><font color="#000000">.out.prinltn(</font><font color="#ff00ff">&quot;hai&quot;</font><font color="#000000">);     </font>
	



<font color="#0000ff">int </font><font color="#000000">a=</font><font color="#800080">10</font><font color="#000000">,b=</font><font color="#800080">20</font><font color="#000000">;</font>
<font color="#0000ff">while</font><font color="#000000">(a&lt;b)</font>
<font color="#000000">{</font>
	<font color="#ff0000">System</font><font color="#000000">.out.prinl(</font><font color="#ff00ff">&quot;hi-&quot;</font><font color="#000000">) ; </font>
<font color="#000000">}</font>
	<font color="#ff0000">System</font><font color="#000000">.out.prinltn(</font><font color="#ff00ff">&quot;hai&quot;</font><font color="#000000">)   ;  </font>

	<font color="#008000">//  prints     hi-hi-hi-hi-------    infinitely.</font>





<font color="#0000ff">final int </font><font color="#000000">a=</font><font color="#800080">10</font><font color="#000000">,b=</font><font color="#800080">20</font><font color="#000000">;</font>
<font color="#0000ff">while</font><font color="#000000">(a&lt;b)</font>
<font color="#000000">{</font>
	<font color="#ff0000">System</font><font color="#000000">.out.prinl(</font><font color="#ff00ff">&quot;hi-&quot;</font><font color="#000000">)  ;</font>
<font color="#000000">}</font>
	<font color="#ff0000">System</font><font color="#000000">.out.prinltn(</font><font color="#ff00ff">&quot;hai&quot;</font><font color="#000000">)  ;       </font><font color="#008000">//    compiler error here. unreachable statement.</font>

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