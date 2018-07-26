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
<td><Font COLOR="#585858"><b>Integral data types in Java</b></font></td>
</tr>
</table>

  </div>
  <table border="0" align="right">
<tr>
<td><Font COLOR="#585858"><font color="#980000">Posted On : 01-july-1988</font></font></td>
</tr>
</table>
<br /><br/>

<i>Integral data types</i> can hold integers ( Positive and negative counting numbers, as well as zero). byte, short, int, long comes under <i>Integral data types</i> category .
Let's see each one in detail.<br /><br />
<div class="sh">byte : </div>
<span class="span" />1) byte size is 8 bits(1 byte).<br />
<span class="span" />2) byte can hold the maximum value 127(2^7-1)<br />
<span class="span" />3) It can hold the Minimum value -128(-2^7)<br />
<span class="span" />4) We can assign any character to short type variable <br />
<span class="span" />5) byte is suitable if we want handle data in terms of streams <br /><br />
When we assign character to byte type variable, it's ASCII value will be assigned and that  ASCII value must be lesser than or equal to 127. Otherwise, we will get compiler error. See the following example.
<div class="Example">
   <pre>
<font face="Times New Roman">
		<font color="#0000ff">byte </font><font color="#000000">a=</font><font color="#800080">120</font><font color="#000000">;</font>
		<font color="#0000ff">byte </font><font color="#000000">b=</font><font color="#800080">128</font><font color="#000000">;  </font><font color="#008000">// causes compiler error. the value should be &lt; 128</font>
		<font color="#0000ff">byte </font><font color="#000000">c=-</font><font color="#800080">121</font><font color="#000000">;</font>
		<font color="#0000ff">byte </font><font color="#000000">d=-</font><font color="#800080">129</font><font color="#000000">;  </font><font color="#008000">// causes compiler error. the value should be &gt;= -128</font>
		<font color="#0000ff">byte </font><font color="#000000">e=</font><font color="#ff00ff">'a'</font><font color="#000000">;   </font><font color="#008000">// 99 is assigned(ASCII value of 'a')</font>
		<font color="#0000ff">byte </font><font color="#000000">f= -</font><font color="#ff00ff">'a'</font><font color="#000000">;  </font><font color="#008000">// -99 is assigned</font>
		<font color="#0000ff">byte </font><font color="#000000">g=</font><font color="#ff00ff">'-a'</font><font color="#000000">;  </font><font color="#008000">// causes compiler error</font>
</font>
</pre>
</div><br />
<div class="sh">short : </div>
<span class="span" />1) short size is 16 bits(2 bytes).<br />
<span class="span" />2) Maximum value we can assign  is 32,767(2^15-1). <br />
<span class="span" />3) Minimum value we can assign is -32,768 (-2^15).<br />
<span class="span" />4) We can assign any character to short type variable. <br />
<span class="span" />5) Example : short a=1200; short b= 'a'; <br /><br />
<div class="sh">int : </div><br />
<span class="span" />1) int is the most used data type in java<br />
<span class="span" />2) int size is 32 bits(4 bytes). int size is always 4 bytes irrespective of platform<br />
<span class="span" />3) Maximum value we can assign  is   2,147,483,647(2^31-1). <br />
<span class="span" />4) Minimum value we can assign is  - 2,147,483,648(-2^31)<br />
<span class="span" />5) We can assign any character to int type variable <br />
<span class="span" />6) Example : int a=1200; int b= 'a'; <br /><br />
<div class="sh">long : </div><br />
If int is not enough to hold the value then we go for long data type. for example, if we want hold light year value, int type is not enough. so, we have to go for long data type.<br />
long lightyear = 3,00,000*365*24*3600;<br /><br />
<span class="span" />1) long size is 64 bits(8 bytes).<br />
<span class="span" />2) long can hold the maximum value 2^63-1<br />
<span class="span" />3) It can hold the Minimum value -2^63<br />
<span class="span" />4) We can assign any character to long type variable <br /><br />
In each numeric data type the most significant bit is called "signbit". 0 represents positive value and 1 represents negative value.<br /><br />
<img src="http://localhost:8080/java3plussite/images/corejava/byte.png" alt="Smiley face" border="" height="100" width="300"></img><br /><br /><p style="border-bottom: 1px dotted #A4A4A4;"></p>
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