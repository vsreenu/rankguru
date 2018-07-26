<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%@include file="/layoutnew/imagescode.jsp" %>	
<% int totalImages =20;%>
<table>
    <tr>
        <td>
            <a id="myLink" href="#" onclick="prev();"><img src="<%=request.getContextPath()%>/scriptfiles/prev.png" alt="Smiley face" border="0" height="100px" width="100%" ></a></td>
        <%if(i%totalImages==0){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/ravi-varma-painting1.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
        <%if(i%totalImages==1){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/ravi-varma-painting2.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
        <%if(i%totalImages==2){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/ravi-varma-painting3.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==3){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/ravi-varma-painting4.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==4){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/ravi-varma-painting5.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==5){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/ravi-varma-painting6.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==6){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/ravi-varma-painting7.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==7){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/ravi-varma-painting8.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==8){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/ravi-varma-painting9.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==9){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/ravi-varma-painting10.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==10){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/ravi-varma-painting11.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==11){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/ravi-varma-painting12.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==12){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/ravi-varma-painting13.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==13){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/ravi-varma-painting14.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==14){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/ravi-varma-painting15.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==15){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/ravi-varma-painting16.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==15){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/ravi-varma-painting16.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==16){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/ravi-varma-painting17.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==17){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/ravi-varma-painting18.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==18){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/ravi-varma-painting19.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==19){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/ravi-varma-painting20.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>


			
        <td><a id="myLink" href="#" onclick="next();"><img src="<%=request.getContextPath()%>/scriptfiles/next.png" alt="Smiley face" border="0" height="100px" width="100%"></a></td>
    </tr>
	  <tr>
        <td></td>
		<td align ='center'> <b><%=(i%totalImages) + 1%></b> out of </b><%=totalImages%></b></td>
	    <td></td>
    </tr>
	
</table>



