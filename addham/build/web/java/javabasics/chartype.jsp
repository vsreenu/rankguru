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
<td><Font COLOR="#585858"><b>Character data type </b></font></td>
</tr>
</table>

  </div>
  <table border="0" align="right">
<tr>
<td><Font COLOR="#585858"><font color="#980000">Posted On : 01-july-1988</font></font></td>
</tr>
</table>
<br /><br/>

In java, <i> char </i> is used to hold the character data. In C & C++ we can use ASCII characters only. To hold all the ASCII characters 1 byte (1 byte can hold upto 256 characters) is enough. So, in C & C++ char size is one byte. <br /><br />
Coming to java, uses <i>unicode character set</i> that covers world wide alphabet sets. To represent all alphabet sets, 1 byte is not enough. So, java people provided 2 bytes for <i>char</i> data type.<br /><br />
<div class="sh">char : </div>
<span class="span" />1) char size is 16 bits(2 bytes).<br />
<span class="span" />2) char can be assigned with the maximum value 65535<br />
<span class="span" />3) char can be assigned with the minimum value 0<br />
<span class="span" />4) while assigning character, it should be with in single quotes (not double quotes) <br />
<span class="span" />5) We can't assign byte, short variables to float type variable. <br /><br />
We can assign numbers also to char type. We can assign maximum number 65535 and minimum number 0. If we assign integer value to char type variable, then it's equivalent unicode character will be assigned. See the following example.
<div class="Example">
   <pre>
<font face="Times New Roman">
		<font color="#0000ff">char </font><font color="#000000">a=</font><font color="#ff00ff">'a'</font><font color="#000000">;</font>
		<font color="#0000ff">char </font><font color="#000000">a=</font><font color="#ff00ff">&quot;a&quot;</font><font color="#000000">; </font><font color="#008000">// causes compiler error</font>
		<font color="#0000ff">char </font><font color="#000000">a=</font><font color="#800080">65</font><font color="#000000">; </font><font color="#008000">// 'A' is assigned</font>
		<font color="#0000ff">char </font><font color="#000000">a=</font><font color="#800080">2000</font><font color="#000000">; </font><font color="#008000">// some other language character is assigned</font>
		<font color="#0000ff">char </font><font color="#000000">a=</font><font color="#800080">65536</font><font color="#000000">; </font><font color="#008000">// causes erros. Range should be 0&lt;=a&lt;65536.</font>
		<font color="#0000ff">byte </font><font color="#000000">b=</font><font color="#800080">12</font><font color="#000000">;</font>
		<font color="#0000ff">char </font><font color="#000000">a=b; </font><font color="#008000">// causes compiler error.</font>
</font>
</pre>

</div><br />
Even byte range is smaller than char range we cannot assign byte type to char type because byte variable may contain negative numbers also.
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