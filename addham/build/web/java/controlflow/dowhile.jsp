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
<td><Font COLOR="#585858"><b>Do while loop</b></font></td>
</tr>
</table>
  </div>
  <table border="0" align="right">
<tr>
<td><Font COLOR="#585858"><font color="#980000">Posted On : 01-july-1988</font></font></td>
</tr>
</table>
<br /><br/>
If we want to execute loop body at least one time without bothering about condition then we have to go for do while loop.
see the following example.<br />
<div class="Example">
<pre>
<font face="Times New Roman">
<font color="#0000ff">class </font><font color="#000000">A {</font>
    <font color="#0000ff">public static void </font><font color="#000000">main(</font><font color="#ff0000">String</font><font color="#000000">[] args){</font>
        <font color="#0000ff">int </font><font color="#000000">count = </font><font color="#800080">20</font><font color="#000000">;</font>
        <font color="#0000ff">do </font><font color="#000000">{</font>
            <font color="#ff0000">System</font><font color="#000000">.out.println(count);</font>
            <font color="#000000">count++;</font>
        <font color="#000000">} </font><font color="#0000ff">while </font><font color="#000000">(count &lt; </font><font color="#800080">10</font><font color="#000000">);</font>
    <font color="#000000">}</font>
<font color="#000000">}</font>
</font>
</pre>
</div>
<br />See the above example. Even condition is failed, statements with in the do block will be executed once. So, above program generates <b>20</b> as output. The argument passed to the while loop should be boolean type.
If we use any other type we will get compiler error. Remember, semicolon is mandatory after while.<br /><br />
curly braces are optional. without curly braces we can take only one statement in do block and that should n't be declarative statement.
 <div class="Example">
 <pre>
<font face="Times New Roman">
 <font color="#0000ff">do </font>
         <font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#ff00ff">&quot;Hi&quot;</font><font color="#000000">);     </font><font color="#008000">// fine compilation</font>
 <font color="#0000ff">while </font><font color="#000000">(</font><font color="#0000ff">true</font><font color="#000000">);</font>
<font color="#008000">// without curly braces, only one statement is allowed after do</font>


  <font color="#0000ff">do </font>
      <font color="#0000ff">int </font><font color="#000000">a=</font><font color="#800080">0</font><font color="#000000">;    </font><font color="#008000">//  compiler error here .</font>
 <font color="#0000ff">while </font><font color="#000000">(</font><font color="#0000ff">true</font><font color="#000000">);  </font>
 <font color="#008000">// without curly braces declrative statement is not allowed</font>



  <font color="#0000ff">do </font><font color="#000000">                   </font>
  <font color="#0000ff">while </font><font color="#000000">(</font><font color="#0000ff">true</font><font color="#000000">);    </font><font color="#008000">//  compiler error , semi colon should beplaced after do</font>


   <font color="#0000ff">do </font><font color="#000000">;                   </font>
  <font color="#0000ff">while </font><font color="#000000">(</font><font color="#0000ff">true</font><font color="#000000">);    </font><font color="#008000">// fine compilation</font>
</font>
</pre>
</div><br />
To know the some special behavior of do-while loop, see the following examples.
<div class="Example">
 <pre>
<font face="Times New Roman">
 <font color="#0000ff">do </font>
         <font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#ff00ff">&quot;Hi&quot;</font><font color="#000000">);     </font>
 <font color="#0000ff">while </font><font color="#000000">(</font><font color="#0000ff">true</font><font color="#000000">);</font>
 <font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#ff00ff">&quot;gud mrnng&quot;</font><font color="#000000">);  </font><font color="#008000">//compiler error here. unreachable statement</font>



 <font color="#0000ff">do </font>
         <font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#ff00ff">&quot;Hi&quot;</font><font color="#000000">);     </font>
 <font color="#0000ff">while </font><font color="#000000">(</font><font color="#0000ff">false</font><font color="#000000">);</font>
 <font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#ff00ff">&quot;gud mrnng&quot;</font><font color="#000000">);  </font><font color="#008000">//fine compilation</font>



<font color="#0000ff">int </font><font color="#000000">a=</font><font color="#800080">10</font><font color="#000000">,b=</font><font color="#800080">20</font><font color="#000000">;</font>
  <font color="#0000ff">do </font>
       <font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#ff00ff">&quot;Hi&quot;</font><font color="#000000">);  </font>
 <font color="#0000ff">while </font><font color="#000000">(a&lt;b);  </font>
 <font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#ff00ff">&quot;gud mrnng&quot;</font><font color="#000000">);  </font><font color="#008000">//fine compilation</font>



<font color="#0000ff">final int </font><font color="#000000">a=</font><font color="#800080">10</font><font color="#000000">,b=</font><font color="#800080">20</font><font color="#000000">;</font>
  <font color="#0000ff">do </font>
       <font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#ff00ff">&quot;Hi&quot;</font><font color="#000000">);  </font>
 <font color="#0000ff">while </font><font color="#000000">(a&lt;b);  </font>
 <font color="#ff0000">System</font><font color="#000000">.out.println(</font><font color="#ff00ff">&quot;gud mrnng&quot;</font><font color="#000000">);  </font><font color="#008000">//compiler error here. unreachable statement</font>

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