  <%@include file="/layoutnew/imagescode.jsp" %>	
<% int totalImages =4;%>
<table>
    <tr>
        <td>
            <a id="myLink" href="#" onclick="prev();"><img src="<%=request.getContextPath()%>/scriptfiles/prev.png" alt="Smiley face" border="0" height="100px" width="100%" ></a></td>
        <%if(i%totalImages==0){%>
        <td><img src="<%=request.getContextPath()%>/images/07-03-2015/baahubali_working_stills1.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
        <%if(i%totalImages==1){%>
        <td><img src="<%=request.getContextPath()%>/images/07-03-2015/baahubali_working_stills2.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
        <%if(i%totalImages==2){%>
        <td><img src="<%=request.getContextPath()%>/images/07-03-2015/baahubali_working_stills3.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==3){%>
        <td><img src="<%=request.getContextPath()%>/images/07-03-2015/baahubali_working_stills4.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
			
        <td><a id="myLink" href="#" onclick="next();"><img src="<%=request.getContextPath()%>/scriptfiles/next.png" alt="Smiley face" border="0" height="100px" width="100%"></a></td>
    </tr>
</table>

