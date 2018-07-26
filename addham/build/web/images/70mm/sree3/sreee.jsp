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