<br /><br/>
If we want to skip current iteration and continue for next iteration inside a loop, then we have to go for continue statement. See, the following example.<br /> 
<div class="Example">
  <pre>
<font face="Times New Roman">
	<font color="#0000ff">class </font><font color="#000000">A </font>
	<font color="#000000">{</font>
		<font color="#0000ff">public static void </font><font color="#000000">main(</font><font color="#ff0000">String</font><font color="#000000">[] args) </font>
		<font color="#000000">{</font>
				<font color="#0000ff">for</font><font color="#000000">(</font><font color="#0000ff">int </font><font color="#000000">j=</font><font color="#800080">1</font><font color="#000000">;j&lt;</font><font color="#800080">6</font><font color="#000000">;j++)</font>
				<font color="#000000">{</font>
					<font color="#0000ff">if</font><font color="#000000">(j==</font><font color="#800080">3</font><font color="#000000">)</font>
						<font color="#0000ff">continue</font><font color="#000000">;</font>
					<font color="#ff0000">System</font><font color="#000000">.out.print(j);</font>
				<font color="#000000">}</font>
	
		<font color="#000000">}</font>
	<font color="#000000">}</font>
    
	<font color="#008000">// prints 1245</font>
</font>
</pre>
</div>
<br /><br />
