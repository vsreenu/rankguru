  <%@include file="/layoutnew/imagescode.jsp" %>	
<% int totalImages =11;%>
<table>
    <tr>
        <td>
            <a id="myLink" href="#" onclick="prev();"><img src="<%=request.getContextPath()%>/scriptfiles/prev.png" alt="Smiley face" border="0" height="100px" width="100%" ></a></td>
        <%if(i%totalImages==0){%>
        <td><img src="<%=request.getContextPath()%>/images/5-24-2015-01/indian-women-painting1.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
        <%if(i%totalImages==1){%>
        <td><img src="<%=request.getContextPath()%>/images/5-24-2015-01/indian-women-painting2.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
        <%if(i%totalImages==2){%>
        <td><img src="<%=request.getContextPath()%>/images/5-24-2015-01/indian-women-painting3.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==3){%>
        <td><img src="<%=request.getContextPath()%>/images/5-24-2015-01/indian-women-painting4.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==4){%>
        <td><img src="<%=request.getContextPath()%>/images/5-24-2015-01/indian-women-painting5.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==5){%>
        <td><img src="<%=request.getContextPath()%>/images/5-24-2015-01/indian-women-painting6.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==6){%>
        <td><img src="<%=request.getContextPath()%>/images/5-24-2015-01/indian-women-painting7.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==7){%>
        <td><img src="<%=request.getContextPath()%>/images/5-24-2015-01/indian-women-painting8.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==8){%>
        <td><img src="<%=request.getContextPath()%>/images/5-24-2015-01/indian-women-painting9.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==9){%>
        <td><img src="<%=request.getContextPath()%>/images/5-24-2015-01/indian-women-painting10.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==10){%>
        <td><img src="<%=request.getContextPath()%>/images/5-24-2015-01/indian-women-painting11.jpg" alt="Smiley face" border="0" width="100%"></td>
        <%}%>
		<%if(i%totalImages==11){%>
        <td><img src="<%=request.getContextPath()%>/images/5-24-2015-01/indian-women-painting12.jpg" alt="Smiley face" border="0" width="100%"></td>
        <%}%>
		<%if(i%totalImages==12){%>
        <td><img src="<%=request.getContextPath()%>/images/5-24-2015-01/indian-women-painting13.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==13){%>
        <td><img src="<%=request.getContextPath()%>/images/5-24-2015-01/indian-women-painting14.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
        <td><a id="myLink" href="#" onclick="next();"><img src="<%=request.getContextPath()%>/scriptfiles/next.png" alt="Smiley face" border="0" height="100px" width="100%"></a></td>
    </tr>
</table>

