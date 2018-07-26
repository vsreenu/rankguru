<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%@include file="/layoutnew/imagescode.jsp" %>	
<% int totalImages =5;%>
<table>
    <tr>
        <td>
            <a id="myLink" href="#" onclick="prev();"><img src="<%=request.getContextPath()%>/scriptfiles/prev.png" alt="Smiley face" border="0" height="100px" width="100%" ></a></td>
        <%if(i%totalImages==0){%>
        <td><img src="<%=request.getContextPath()%>/images/07-04-2015/encounter_specialist1.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
        <%if(i%totalImages==1){%>
        <td><img src="<%=request.getContextPath()%>/images/07-04-2015/encounter_specialist2.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
        <%if(i%totalImages==2){%>
        <td><img src="<%=request.getContextPath()%>/images/07-04-2015/encounter_specialist3.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==3){%>
        <td><img src="<%=request.getContextPath()%>/images/07-04-2015/encounter_specialist4.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==4){%>
        <td><img src="<%=request.getContextPath()%>/images/07-04-2015/encounter_specialist5.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
			
        <td><a id="myLink" href="#" onclick="next();"><img src="<%=request.getContextPath()%>/scriptfiles/next.png" alt="Smiley face" border="0" height="100px" width="100%"></a></td>
    </tr>
	  <tr>
        <td></td>
		<td align ='center'> <b><%=(i%totalImages) + 1%></b> out of </b><%=totalImages%></b></td>
	    <td></td>
    </tr>
	
</table>

	 <br /><br />
        <%if(i%totalImages==0){%>
		పేరు : ప్రదీప్ శర్మ<br />
		వయస్సు : 55<br />
		ఎన్ కౌంటర్స్ : 100 + మాఫియా సబ్యుల్ని<br />
        <%}%>
        <%if(i%totalImages==1){%>
		పేరు : దయా నాయక్ <br />
		వయస్సు : 49  <br />
		ఎన్ కౌంటర్స్ : 80 - 85 మాఫియా సబ్యుల్ని  <br />
        <%}%>
        <%if(i%totalImages==2){%>
		పేరు : విజయ్ సలాస్కార్<br />
                     వయస్సు : 50<br />
                    ఎన్ కౌంటర్స్ : 75-80 + మాఫియా సబ్యుల్ని (ఇతడు ముంబాయి దాడుల్లొ చనిపొయాడు)       <br />
        <%}%>
		<%if(i%totalImages==3){%>
	         పేరు : సచిన్ వాజె<br />
                     వయస్సు : 43 <br />
                    ఎన్ కౌంటర్స్ : 60-65 + మాఫియా సబ్యుల్ని  <br />
        <%}%>
		<%if(i%totalImages==4){%>
	         పేరు : రవీంద్రనాథ్ ఆంగ్రె <br />
                    వయస్సు : 55 <br />
                     ఎన్ కౌంటర్స్ : 52 + మాఫియా సబ్యుల్ని <br />
        <%}%>


