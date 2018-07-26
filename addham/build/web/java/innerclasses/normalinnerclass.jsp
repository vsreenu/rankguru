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
<td><Font COLOR="#585858"><b>Normal Inner Classes<br></font></td>
</tr>
</table>

  </div>
  <table border="0" align="right">
<tr>
<td><Font COLOR="#585858"><font color="#980000">Posted On : 01-july-1988</font></font></td>
</tr>
</table>

<br /><br/>
 <span class="span" /> If we declare named inner class inside a class without static modifier , such type of inner class is called Normal inner class or regular inner class. see the following example.
 <div class="Example"> 
 <pre>
<font face="Times New Roman">
<font color="#0000ff">class </font><font color="#000000">OuterClass </font>
<font color="#000000">{</font>
	<font color="#0000ff">class </font><font color="#000000">InnerClass </font><font color="#000000">{</font><font color="#000000">}</font>
	<font color="#0000ff">public static void </font><font color="#000000">main(</font><font color="#ff0000">String </font><font color="#000000">as[])</font><font color="#000000">{</font> <font color="#000000">}</font>
<font color="#000000">}</font>
</font>
</pre>
</div>
  <span class="span" />&#8226; Inside inner classes we can't declare static memebers. If you compile the folowing program, you will get compile time error<br /><br />
 <div class="Example"> 
<pre>
<font face="Times New Roman">
<font color="#0000ff">class </font><font color="#000000">OuterClass </font>
<font color="#000000">{</font>
	<font color="#0000ff">class </font><font color="#000000">InnerClass</font>
	<font color="#000000">{</font>
		<font color="#0000ff">public static void </font><font color="#000000">main(</font><font color="#ff0000">String </font><font color="#000000">as[])</font>
			<font color="#000000">{</font>
			<font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#ff00ff">&quot;inside innerclass&quot;</font><font color="#000000">);</font>
			<font color="#000000">}</font>
	<font color="#000000">}</font>	
<font color="#000000">}</font>
<font color="#008000">/*</font>
<font color="#ff0000">output :</font>
    <font color="#008000">A.java:5: inner classes cannot have static declarations</font>
                 <font color="#008000">public static void main(String as[])</font>
<font color="#008000">*/</font>
</font>
</pre>
</div>

 <h4>&#8226 Accessing inner class data members from static area of outer class</h4>
  <br />
  <br />
   <div class="Example"> 
<pre>
<font face="Times New Roman">
<font color="#0000ff">class </font><font color="#000000">OuterClass </font>
<font color="#000000">{</font>
	<font color="#0000ff">class </font><font color="#000000">InnerClass</font>
	<font color="#000000">{</font>
		<font color="#0000ff">public void </font><font color="#000000">display()</font>
		<font color="#000000">{</font>
			<font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#ff00ff">&quot;Inner Class&quot;</font><font color="#000000">);</font>
		<font color="#000000">}</font>
		
	<font color="#000000">}</font>
	<font color="#0000ff">public static void </font><font color="#000000">main(</font><font color="#ff0000">String </font><font color="#000000">as[])</font>
		<font color="#000000">{</font>
			<font color="#000000">OuterClass o = </font><font color="#0000ff">new </font><font color="#000000">OuterClass();</font>
			<font color="#000000">OuterClass.InnerClass i= o.</font><font color="#0000ff">new </font><font color="#000000">InnerClass();</font>
			<font color="#000000">i.display();</font>
		<font color="#000000">}</font>	
<font color="#000000">}</font>
<font color="#008000">/*</font>
<font color="#008000">output : Inner Class</font>
<font color="#008000">*/</font>
</font>
</pre>
</div>

<h4>&#8226 Accessing inner class data members from instance area of outer class</h4>
  <br />
   <div class="Example"> 
<pre>
<font face="Times New Roman">
<font color="#0000ff">class </font><font color="#000000">OuterClass </font>
<font color="#000000">{</font>
	<font color="#0000ff">class </font><font color="#000000">InnerClass</font>
	<font color="#000000">{</font>
		<font color="#0000ff">public void </font><font color="#000000">display()</font>
		<font color="#000000">{</font>
			<font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#ff00ff">&quot;Inner Class&quot;</font><font color="#000000">);</font>
		<font color="#000000">}</font>	
	<font color="#000000">}</font>
	<font color="#0000ff">public void </font><font color="#000000">display()</font>
	<font color="#000000">{</font>
		<font color="#000000">InnerClass i = </font><font color="#0000ff">new </font><font color="#000000">InnerClass();</font>
		<font color="#000000">i.display();</font>
	<font color="#000000">}</font>
	<font color="#0000ff">public static void </font><font color="#000000">main(</font><font color="#ff0000">String </font><font color="#000000">as[])</font>
		<font color="#000000">{</font>
			<font color="#000000">OuterClass o = </font><font color="#0000ff">new </font><font color="#000000">OuterClass();</font>
			<font color="#000000">o.display();</font>
		<font color="#000000">}</font>	
<font color="#000000">}</font>
<font color="#008000">/*</font>
<font color="#008000">output : Inner Class</font>
<font color="#008000">*/</font>
</font>
</pre>
</div>
<br />
 <span class="span" /> &#8226; inner class can access the outer class data directly. in inner class 'this' keyword represents current inner class object. to refer outer class object in inner class , we hava to use the following syntax. 'outerclassname. this. datamember'. see the following example. 
  <br /><br />
   <div class="Example"> 
<pre>
<font face="Times New Roman" >
<font color="#0000ff">class </font><font color="#000000">OuterClass </font>
<font color="#000000">{</font>
	<font color="#0000ff">int </font><font color="#000000">a=</font><font color="#800080">10</font><font color="#000000">, b=</font><font color="#800080">20</font><font color="#000000">;</font>
	<font color="#0000ff">class </font><font color="#000000">InnerClass</font>
	<font color="#000000">{</font>
		<font color="#0000ff">int </font><font color="#000000">a =</font><font color="#800080">30</font><font color="#000000">;</font>
		<font color="#0000ff">public void </font><font color="#000000">display()</font>
		<font color="#000000">{</font>
			<font color="#ff0000">System</font><font color="#000000">.out.println(b); </font><font color="#008000">// prints 20</font>
			<font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#0000ff">this</font><font color="#000000">.a); </font><font color="#008000">// prints 30</font>
			<font color="#ff0000">System</font><font color="#000000">.out.println(OuterClass.</font><font color="#0000ff">this</font><font color="#000000">.a); </font><font color="#008000">// prints 10</font>
		<font color="#000000">}</font>	
	<font color="#000000">}</font>
	<font color="#0000ff">public static void </font><font color="#000000">main(</font><font color="#ff0000">String </font><font color="#000000">as[])</font>
		<font color="#000000">{</font>
			<font color="#000000">OuterClass o = </font><font color="#0000ff">new </font><font color="#000000">OuterClass();</font>
			<font color="#000000">OuterClass.InnerClass i= o.</font><font color="#0000ff">new </font><font color="#000000">InnerClass();</font>
			<font color="#000000">i.display();</font>
		<font color="#000000">}</font>
<font color="#000000">}</font>
</font>
</pre>
</div>
<p style="border-bottom: 1px dotted #A4A4A4;"></p>
<% int p=1;%>
<%@include file="../../layouts/navigation.jsp" %>
<%@include file="../../layouts/midbanner.jsp" %>
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