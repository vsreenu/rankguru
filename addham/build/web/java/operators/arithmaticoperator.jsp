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
<td><Font COLOR="#585858"><b>Arithmetic Operators</b></font></td>
</tr>
</table>

  </div>
  <table border="0" align="right">
<tr>
<td><Font COLOR="#585858"><font color="#980000">Posted On : 01-july-1988</font></font></td>
</tr>
</table>
<br /><br/>
 Arithmetic operators are  &#160;'+',  &#160;'-',  &#160;'*',  &#160;'/',  &#160;'%'  . I hope you know how to use these operators. so, i am not going to explain each one again.
 We can use above all operators with all primitive types except boolean.
If we are applying any arithmetic operator between two variables a and b then result type is always  <br /> <br />
<span class="span" />max ( int, type of a, type of b ). <br /><br />
<span class="span" />byte + byte = int <br />
<span class="span" />byte + short = int <br />
<span class="span" />short + short = int <br />
<span class="span" />int + long = int <br />
<span class="span" />int + float = float <br />
<span class="span" />float + double = double <br />
<span class="span" />char + char = int <br />
<div class="Example">
   <pre>
<font face="Times New Roman">
			<font color="#0000ff">byte  </font><font color="#000000">b1=</font><font color="#800080">10</font><font color="#000000">, b2=</font><font color="#800080">20</font><font color="#000000">, b3; </font>
			<font color="#0000ff">int </font><font color="#000000">i1;</font>
			<font color="#000000">b3 = b1+b2; </font><font color="#008000">// causes compiler error. The result type is int.</font>
			<font color="#000000">i1 = b1+ b2; </font><font color="#008000">//fine compilation.</font>
			<font color="#ff00ff">'a' </font><font color="#000000">+ </font><font color="#ff00ff">'b'</font><font color="#000000">;   </font><font color="#008000">// prints 195</font>
			<font color="#ff00ff">'a' </font><font color="#000000">* </font><font color="#ff00ff">'b'</font><font color="#000000">;   </font><font color="#008000">// prints  9506</font>
</font>
</pre>
</div>
<div class="sh">Infinity : </div><br />
If arithmetic operators are applied to integral data types (byte, short, int, long) and  result is infinity then we will get arithmetic exception. But incase of floating point data types (float, double), we can represent infinity. See the following example.
  <div class="Example">
  <pre>
<font face="Times New Roman">
		<font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#800080">10</font><font color="#000000">/</font><font color="#800080">0</font><font color="#000000">);    </font><font color="#008000">// causes ArithmeticException</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#800080">10</font><font color="#000000">.</font><font color="#800080">0</font><font color="#000000">/</font><font color="#800080">0</font><font color="#000000">);    </font><font color="#008000">// prints    Infinity</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(-</font><font color="#800080">10</font><font color="#000000">.</font><font color="#800080">0</font><font color="#000000">/</font><font color="#800080">0</font><font color="#000000">);    </font><font color="#008000">// prints   - Infinity</font>
</font>
</pre>
</div>
<div class="sh">NaN (Not a Number) : </div><br />
If arithmetic operators are applied to integral data types (byte, short, int, long) and  the result is undefined then we will get arithmetic exception. But incase of floating point data types (float, double), we can represent undefined results with 'NaN'. See the following example.
  <div class="Example">
 <pre>
<font face="Times New Roman">
		<font color="#ff0000">System</font><font color="#000000">.ouprintln(</font><font color="#800080">0</font><font color="#000000">/</font><font color="#800080">0</font><font color="#000000">)  ;         </font><font color="#008000">// causes   ArithmeticException</font>
		<font color="#ff0000">System</font><font color="#000000">.ouprintln(</font><font color="#800080">0</font><font color="#000000">.</font><font color="#800080">0</font><font color="#000000">/</font><font color="#800080">0</font><font color="#000000">)  ;       </font><font color="#008000">// prints   NaN</font>
		<font color="#ff0000">System</font><font color="#000000">.ouprintln(-</font><font color="#800080">0</font><font color="#000000">.</font><font color="#800080">0</font><font color="#000000">/</font><font color="#800080">0</font><font color="#000000">)  ;      </font><font color="#008000">// prints   NaN</font>
		<font color="#ff0000">System</font><font color="#000000">.ouprintln(</font><font color="#ff0000">Math</font><font color="#000000">.sqrt(-</font><font color="#800080">16</font><font color="#000000">))  ;  </font><font color="#008000">// prints  NaN</font>			
</font>
</pre>
</div><br />
See the above example, sqrt() is a static method of Math class and  we are passing integral literal to  it. Actual method signature of sqrt() is.<br /> <br />
<span class="span" />
<font color="#0000ff">public static double </font><font color="#000000">sqrt(</font><font color="#0000ff">double</font><font color="#000000">).</font>
 <br /><br /> So, even you are passing integral literal, it will be promoted to double type. We will see type promotion in later articles.<br /><br />
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