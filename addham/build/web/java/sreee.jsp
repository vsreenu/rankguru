

In java, data types are divided into two types. Those are,<br /><br />
 <span class="span" />1) Primitive data types<br />
 <span class="span" />2) Reference data types<br /><br />
 There are 8 primitive data types in java. Those  are.<br /><br />
 <span class="span" />1) byte<br />
<span class="span" />2) short <br />
<span class="span" />3) int<br />
<span class="span" />4) long<br />
<span class="span" />5) float<br />
<span class="span" />6) double<br />
<span class="span" />7) char<br />
<span class="span" />8) boolean<br /><br />
These 8 data types are divided into three categories.
<br /><br /> <span class="span" />1) Numeric data types<br />
 <span class="span" />2) Char data type<br />
 <span class="span" />3) Boolean data type<br /><br />
 Again numeric data types are divided into two categories, those are.<br /><br />
 <span class="span" />1) Integral data types<br />
 <span class="span" />2) Floating point data types<br /><br />
<i>Integral data types</i> can hold integers ( Positive and negative counting numbers, as well as zero). byte, short, int, long comes under <i>Integral data types</i> category .
<i> Floating point data types</i> can hold fraction numbers. 
float, double comes under<i> Floating point data types</i> category.
<br /><br /><i>char </i>data type can hold character data(only characters not string). 
  <i>boolean</i> data type can hold either <i>true</i> or <i>false</i> (both are case sensitive). we will see each primitive data type in later articles.
<br /><br />Reference data type is a variable that can hold address of dynamically created object. Class, Arrays, Interface comes under referenced data types. We will see later in detail.<br /><br />










<br /><br/>
break statement is used in the following cases only.<br /> <br />
&nbsp;&nbsp;&nbsp;1) inside loops, to break the loop execution based on some condition. <br />
&nbsp;&nbsp;&nbsp;2) within switch to stop fall through. <br />
&nbsp;&nbsp;&nbsp;3) inside labeled blocks to break that block execution. <br /> 

<div class="Example">
  <pre>
<font face="Times New Roman">
<font color="#0000ff">class </font><font color="#000000">A </font>
<font color="#000000">{</font>
	<font color="#0000ff">public static void </font><font color="#000000">main(</font><font color="#ff0000">String</font><font color="#000000">[] args) </font>
	<font color="#000000">{</font>
			<font color="#000000">b:</font>
			<font color="#0000ff">for</font><font color="#000000">(</font><font color="#0000ff">int </font><font color="#000000">j=</font><font color="#800080">1</font><font color="#000000">;j&lt;</font><font color="#800080">10</font><font color="#000000">;j++)</font>
			<font color="#000000">{</font>
				<font color="#000000">c:</font>
				<font color="#0000ff">for</font><font color="#000000">(</font><font color="#0000ff">int </font><font color="#000000">k=</font><font color="#800080">1</font><font color="#000000">;k&lt;</font><font color="#800080">10</font><font color="#000000">;k++)</font>
				<font color="#000000">{</font>
					<font color="#0000ff">break </font><font color="#000000">b;</font>
					<font color="#0000ff">break </font><font color="#000000">c;   </font><font color="#008000">// causes compiler error unreachable statemnet.</font>
				<font color="#000000">}</font>
			<font color="#000000">}</font>
	<font color="#000000">}</font>
<font color="#000000">}</font>
</font>
</pre>
</div>