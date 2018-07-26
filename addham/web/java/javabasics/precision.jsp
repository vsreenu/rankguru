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
<td><Font COLOR="#585858"><b>Single Precision and Double Precision</b></font></td>
</tr>
</table>

  </div>
  <table border="0" align="right">
<tr>
<td><Font COLOR="#585858"><font color="#980000">Posted On : 01-july-1988</font></font></td>
</tr>
</table>
<br /><br/>
<div class="sh">Single precision : </div><br />
To represent IEEE standard single precision float type we need  32 bitword. First bit (left most bit) is the sign bit. Next eight bits are Exponent bits and the last 23 bits are Fraction bits.<br />
<br />S EEEEEEEE FFFFFFFFFFFFFFFFFFFFFFF (S - Signbit, E - Exponent, F - Fraction)<br /><br />
<span class="span" />&#8226; If E= 255 and F= nonzero,then value of word is 'NaN' ("Not a number")<br />
<span class="span" />&#8226; If E= 255 and F= 0 and signbit value is 1, then word value is -Infinity.<br />
<span class="span" />&#8226; If E= 255 and F= 0 and signbit is 0, then word value Infinity.<br />
<span class="span" />&#8226; If E=0 and F= 0 and signbit is 1, then word value is -0.<br />
<span class="span" />&#8226; If E=0 and F= 0 and signbit is 0, then then word value is 0.<br />
<span class="span" />&#8226; If 0&#60;Exponent&#60;255 then word value is (-1)^signbit * 2 ^ (E-127) * (1.F) <br />
<span class="span" />&#8226; If E=0 and F is nonzero, then V=(-1)**S * 2 ** (-126) * (0.F)<br />
<div class="Example">
    <pre>
<font face="Times New Roman">
  

<font color="#800080">0 11111111 00000000000000000000000 </font><font color="#000000">= Infinity </font>
<font color="#800080">1 11111111 00000000000000000000000 </font><font color="#000000">= -Infinity </font>

<font color="#800080">0 11111111 00000100110101010000000 </font><font color="#000000">= NaN </font>
<font color="#800080">1 11111111 10000000011001010101010 </font><font color="#000000">= NaN </font>

<font color="#800080">0 00000000 00010010001001000000000 </font><font color="#000000">= </font><font color="#800080">0 </font>
<font color="#800080">1 00000000 00000001001000010000000 </font><font color="#000000">= -</font><font color="#800080">0 </font>

<font color="#800080">0 10000011 00000000000000000000000 </font><font color="#000000">= +</font><font color="#800080">1 </font><font color="#000000">* 2^(</font><font color="#800080">131</font><font color="#000000">-</font><font color="#800080">127</font><font color="#000000">) * </font><font color="#800080">1</font><font color="#000000">.</font><font color="#800080">0 </font><font color="#000000">= 2^3=</font><font color="#800080">8</font>
<font color="#800080">0 10000010 10001000000000000000000 </font><font color="#000000">= +</font><font color="#800080">1 </font><font color="#000000">* 2^(</font><font color="#800080">130</font><font color="#000000">-</font><font color="#800080">127</font><font color="#000000">) * </font><font color="#800080">1</font><font color="#000000">.</font><font color="#800080">10001 </font><font color="#000000">= </font><font color="#800080">6</font><font color="#000000">.</font><font color="#800080">125</font>
<font color="#800080">1 10000001 10100000000000000000000 </font><font color="#000000">= -</font><font color="#800080">1 </font><font color="#000000">* 2^(</font><font color="#800080">129</font><font color="#000000">-</font><font color="#800080">127</font><font color="#000000">) * </font><font color="#800080">1</font><font color="#000000">.</font><font color="#800080">101 </font><font color="#000000">= -</font><font color="#800080">6</font><font color="#000000">.</font><font color="#800080">5</font>

<font color="#800080">0 00000011 00000000000000000000000 </font><font color="#000000">= +</font><font color="#800080">1 </font><font color="#000000">* 2^(</font><font color="#800080">3</font><font color="#000000">-</font><font color="#800080">127</font><font color="#000000">) * </font><font color="#800080">1</font><font color="#000000">.</font><font color="#800080">0 </font><font color="#000000">= 2^(-</font><font color="#800080">124</font><font color="#000000">)</font>
<font color="#800080">0 00000000 10000000000000000000000 </font><font color="#000000">= +</font><font color="#800080">1 </font><font color="#000000">* 2^(-</font><font color="#800080">126</font><font color="#000000">) * </font><font color="#800080">0</font><font color="#000000">.</font><font color="#800080">1 </font><font color="#000000">= 2^(-</font><font color="#800080">127</font><font color="#000000">) </font>
<font color="#800080">0 00000000 00000000000000000000001 </font><font color="#000000">= +</font><font color="#800080">1 </font><font color="#000000">* 2^(-</font><font color="#800080">126</font><font color="#000000">) * </font>
                            <font color="#800080">0</font><font color="#000000">.</font><font color="#800080">00000000000000000000001 </font><font color="#000000"> </font>
                            <font color="#000000">= 2^(-126)*2^(-23) = 2^(-</font><font color="#800080">149</font><font color="#000000">) </font>
</font>
</pre>
</div>
<div class="sh">Double precision : </div><br />
To represent IEEE standard double precision float type we need  62 bitword. First bit (left most bit) is the sign bit. Next Eleven bits are the Exponent bits and last 52 bits are Fraction bits.<br />
<br />S EEEEEEEEEEE FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF <br /> (S - Signbit, E - Exponent, F - Fraction)<br /><br />
<span class="span" />&#8226; If E= 2047 and F= nonzero,then value of word is 'NaN' ("Not a number")<br />
<span class="span" />&#8226; If E= 2047 and F= 0 and signbit value is 1, then word value is -Infinity.<br />
<span class="span" />&#8226; If E= 2047 and F= 0 and signbit is 0, then word value Infinity.<br />
<span class="span" />&#8226; If E=0 and F= 0 and signbit is 1, then word value is -0.<br />
<span class="span" />&#8226; If E=0 and F= 0 and signbit is 0, then then word value is 0.<br />
<span class="span" />&#8226; If 0&#60;Exponent&#60;2047 then word value is (-1)^signbit * 2 ^ (E-1023) * (1.F) <br />
<span class="span" />&#8226; If E=0 and F is nonzero, then V=(-1)**S * 2 ** (-1022) * (0.F)<br />

<div class="Example">
  <pre>
<font face="Times New Roman">
<font color="#800080">0 00000000000 0000000000000000000000000000000000000000000000000000 </font><font color="#000000">= </font><font color="#800080">0</font>
<font color="#800080">1 00000000000 0000000000000000000000000000000000000000000000000000 </font><font color="#000000">= -</font><font color="#800080">0</font>

<font color="#800080">0 11111111111 0000000000000000000000000000000000000000000000000000</font><font color="#000000">=Infinity</font>
<font color="#800080">1 11111111111 0000000000000000000000000000000000000000000000000000</font><font color="#000000">=-Infinity</font>

<font color="#800080">0 11111111111 0000000100100100001000100000000000000000000000000000 </font><font color="#000000">= NaN</font>
<font color="#800080">1 11111111111 1000010000100001000010000001000000001000000010000000 </font><font color="#000000">= NaN</font>

<font color="#800080">0 10000000000 0000000000000000000000000000000000000000000000000000 </font><font color="#000000">=</font>
                 <font color="#000000">+</font><font color="#800080">1 </font><font color="#000000">* </font><font color="#800080">2</font><font color="#000000">^(</font><font color="#800080">1024</font><font color="#000000">-</font><font color="#800080">1023</font><font color="#000000">) * </font><font color="#800080">1</font><font color="#000000">.</font><font color="#800080">0 </font><font color="#000000">= </font><font color="#800080">2</font>

<font color="#800080">0 10000000001 1010000000000000000000000000000000000000000000000000 </font><font color="#000000">=</font>
                <font color="#000000">+</font><font color="#800080">1 </font><font color="#000000">* </font><font color="#800080">2</font><font color="#000000">^(</font><font color="#800080">1025</font><font color="#000000">-</font><font color="#800080">1023</font><font color="#000000">) * </font><font color="#800080">1</font><font color="#000000">.</font><font color="#800080">101</font>

<font color="#800080">1 10000000001 1010000000000000000000000000000000000000000000000000 </font><font color="#000000">=</font>
                <font color="#000000">-</font><font color="#800080">1 </font><font color="#000000">* </font><font color="#800080">2</font><font color="#000000">^(</font><font color="#800080">1025</font><font color="#000000">-</font><font color="#800080">1023</font><font color="#000000">) * </font><font color="#800080">1</font><font color="#000000">.</font><font color="#800080">101</font>

<font color="#800080">0 00000000001 0000000000000000000000000000000000000000000000000000 </font><font color="#000000">=</font>
                <font color="#000000">+</font><font color="#800080">1 </font><font color="#000000">* </font><font color="#800080">2</font><font color="#000000">^(</font><font color="#800080">1</font><font color="#000000">-</font><font color="#800080">1023</font><font color="#000000">) * </font><font color="#800080">1</font><font color="#000000">.</font><font color="#800080">0 </font><font color="#000000">= </font><font color="#800080">2</font><font color="#000000">**(-</font><font color="#800080">1022</font><font color="#000000">)</font>

<font color="#800080">0 00000000000 1000000000000000000000000000000000000000000000000000 </font><font color="#000000">=</font>
                <font color="#000000">+</font><font color="#800080">1 </font><font color="#000000">* </font><font color="#800080">2</font><font color="#000000">^(-</font><font color="#800080">1022</font><font color="#000000">) * </font><font color="#800080">0</font><font color="#000000">.</font><font color="#800080">1 </font><font color="#000000">= </font><font color="#800080">2</font><font color="#000000">^(-</font><font color="#800080">1023</font><font color="#000000">) </font>
<font color="#800080">0 00000000000 0000000000000000000000000000000000000000000000000001 </font><font color="#000000">=</font>
<font color="#000000">+</font><font color="#800080">1 </font><font color="#000000">* </font><font color="#800080">2</font><font color="#000000">^(-</font><font color="#800080">126</font><font color="#000000">) * </font><font color="#800080">0</font><font color="#000000">.</font><font color="#800080">0000000000000000000000000000000000000000000000000001 </font><font color="#000000">= </font>
<font color="#000000">2^(-</font><font color="#800080">1022</font><font color="#000000">)*2^(-</font><font color="#800080">52</font><font color="#000000">)=</font><font color="#800080">2^</font><font color="#000000">(-</font><font color="#800080">1074)</font><font color="#000000">(Smallest positive value we can assign to </font><font color="#0000ff">double</font><font color="#000000">)</font>
</font>
</pre>

</div> 

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