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
<td><Font COLOR="#585858"><b>Character Literals</b></font></td>
</tr>
</table>

  </div>
  <table border="0" align="right">
<tr>
<td><Font COLOR="#585858"><font color="#980000">Posted On : 01-july-1988</font></font></td>
</tr>
</table>
<br /><br/>
To hold characters, we use char data type. The characters that are assigned to char data type are called character literals. Example : char a = 's' . Here, 's' is called character literal. Character literals should be placed with in single quotes (not double quotes). 
<div class="Example">
   <pre>
<font face="Times New Roman">
			<font color="#0000ff">char </font><font color="#000000">ch = </font><font color="#ff00ff">'a' </font><font color="#000000">; </font><font color="#008000">// fine compilation</font>
			<font color="#0000ff">char </font><font color="#000000">ch = </font><font color="#ff00ff">&quot;a&quot; </font><font color="#000000">; </font><font color="#008000">// causes compiler error</font>
			<font color="#0000ff">char </font><font color="#000000">ch = </font><font color="#ff00ff">'aa' </font><font color="#000000">; </font><font color="#008000">// causes compiler error</font>
</font>
</pre>
</div><br />
An integral literal can act as a char literal. For example, if we assign some integral literal to char data type then it's equivalent unicode character will be assigned and that integral literal range should be with in 0 to 65535.
<div class="Example">
 <pre>
<font face="Times New Roman">
			<font color="#0000ff">char </font><font color="#000000">ch = </font><font color="#800080">97 </font><font color="#000000">; </font><font color="#008000">// prints 'a'</font>
			<font color="#0000ff">char </font><font color="#000000">ch = -</font><font color="#800080">97</font><font color="#000000">; </font><font color="#008000">// causes compiler error</font>
			<font color="#0000ff">char </font><font color="#000000">ch = </font><font color="#800080">65536</font><font color="#000000">; </font><font color="#008000">// causes compiler error</font>
</font>
</pre>
</div><br />
We can assign integral literal to char type in octal and hexadecimal form also.
<div class="Example">
 <pre>
<font face="Times New Roman">
			<font color="#0000ff">char </font><font color="#000000">ch = </font><font color="#800080">0101 </font><font color="#000000">; </font><font color="#008000">//prints 'A' (ASCII number is 65)</font>
			<font color="#0000ff">char </font><font color="#000000">ch = </font><font color="#800080">0x41 </font><font color="#000000">; </font><font color="#008000">// prints 'A' </font>
			<font color="#0000ff">char </font><font color="#000000">ch = 081 ; </font><font color="#008000">// causes compiler error. 8 is not allowed in octal form</font>
</font>
</pre>
</div><br />
Character literal can be represented in unicode representation also. Unicode representation is a 4 digit hexadecimal number. It is in the following form. '\u----'
<div class="Example">
 <pre>
<font face="Times New Roman">
			<font color="#0000ff">char </font><font color="#000000">ch = </font><font color="#ff00ff">'\u0041' </font><font color="#000000">; </font><font color="#008000">//prints 'A' (ASCII number is 65)</font>
			<font color="#0000ff">char </font><font color="#000000">ch = </font><font color="#ff00ff">'\uae41' </font><font color="#000000">; </font><font color="#008000">// prints some character</font>
			<font color="#0000ff">char </font><font color="#000000">ch = </font><font color="#ff00ff">'\U0041' </font><font color="#000000">; </font><font color="#008000">// causes compiler error. 'u' is allowed. 'U' is not allowed</font>
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


 
</div>
<%@include file="../../layouts/footer.jsp" %>


</div>
</body></html>