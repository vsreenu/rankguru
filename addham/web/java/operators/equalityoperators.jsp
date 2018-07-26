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
<td><Font COLOR="#585858"><b>Equality Operators</b></font></td>
</tr>
</table>

  </div>
  <table border="0" align="right">
<tr>
<td><Font COLOR="#585858"><font color="#980000">Posted On : 01-july-1988</font></font></td>
</tr>
</table>
<br /><br/>
 Equality operators are  &#160; == , &#160; != . Let's see each one in detail.<br /><br /><br />
<table border="1" align="">
<tr>
<td align="center">Operator</td>
<td align="center">Description</td>
<td align="center">Example</td>
</tr>
   <tr>
<td align="center">==</td>
<td >Checks weather the values of two operands are equal or not. If yes then it returns true, otherwise returns false.</td>
<td align="center">10==20  returns  false , 20==20  returns  true</td>
</tr>
     <tr>
<td align="center">!=</td>
<td >Checks weather the values of two operands are not equal or not. If yes then it returns true, otherwise returns false.</td>
<td align="center">10!=20  returns  true , 20!=20  returns  false</td>
</tr>    
</table><br /><br />
We can apply equality operators for object types also. See the following example. Remember, String is an object type in java.
 <div class="Example">
 <pre>
<font face="Times New Roman">
		<font color="#ff00ff">&quot;Newyork&quot; </font><font color="#000000">= </font><font color="#ff00ff">&quot;London&quot; </font><font color="#000000">; </font><font color="#008000">// returns false</font>
		<font color="#ff00ff">&quot;Newyork&quot; </font><font color="#000000">= </font><font color="#ff00ff">&quot;London&quot; </font><font color="#000000">; </font><font color="#008000">// returns true</font>
		<font color="#ff0000">String </font><font color="#000000">s1=</font><font color="#ff00ff">&quot;London&quot;</font><font color="#000000">;</font>
		<font color="#ff0000">String </font><font color="#000000">s2=s1;</font>
		<font color="#000000">s1=s2;  </font><font color="#008000">// returns true</font>
		<font color="#000000">s1!=s2; </font><font color="#008000">// returns false</font>	
</font>
</pre>
</div><br />
We can apply equality operators to all primitive types along with boolean type. We can apply nesting of equality operators also. see the following example.<br />
<div class="Example">
 <pre>
<font face="Times New Roman">
		<font color="#0000ff">boolean  </font><font color="#000000">b1=</font><font color="#0000ff">true</font><font color="#000000">, b2=</font><font color="#0000ff">false</font><font color="#000000">;</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(b1=b2);  </font><font color="#008000">// prints false</font>
		<font color="#ff0000">System</font><font color="#000000">.out.println(b1=b2=b2) </font><font color="#008000">// prints true</font>		
</font>
</pre>
</div><br />
If we apply equality operators to object types, those objects should be compatible with each other. That is, those objects should be either same class objects or inheritance related objects
<div class="Example">
 <pre>
<font face="Times New Roman">
	<font color="#ff0000">Thread </font><font color="#000000">t1 = </font><font color="#0000ff">new </font><font color="#ff0000">Thread</font><font color="#000000">();</font>
	<font color="#ff0000">Thread </font><font color="#000000">t2 = </font><font color="#0000ff">new </font><font color="#ff0000">Thread</font><font color="#000000">();</font>
	<font color="#ff0000">String </font><font color="#000000">s1=</font><font color="#ff00ff">&quot;Hi all&quot;</font><font color="#000000">;</font>
	<font color="#ff0000">System</font><font color="#000000">.out.prinyln(t1==t2);  </font><font color="#008000">// prints false</font>
	<font color="#ff0000">System</font><font color="#000000">.out.prinyln(t1==s1); </font><font color="#008000">//causes compiler error,Because t1 and s1 are not compatible</font>	
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