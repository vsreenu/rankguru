<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%@include file="/layoutnew/imagescode.jsp" %>	
<% int totalImages =6;%>
<table>
    <tr>
        <td>
            <a id="myLink" href="#" onclick="prev();"><img src="<%=request.getContextPath()%>/scriptfiles/prev.png" alt="Smiley face" border="0" height="100px" width="100%" ></a></td>
        <%if(i%totalImages==0){%>
        <td><img src="<%=request.getContextPath()%>/images/07-11-2015/tree_house1.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
        <%if(i%totalImages==1){%>
        <td><img src="<%=request.getContextPath()%>/images/07-11-2015/tree_house2.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
        <%if(i%totalImages==2){%>
        <td><img src="<%=request.getContextPath()%>/images/07-11-2015/tree_house3.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==3){%>
        <td><img src="<%=request.getContextPath()%>/images/07-11-2015/tree_house4.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==4){%>
        <td><img src="<%=request.getContextPath()%>/images/07-11-2015/tree_house5.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==5){%>
        <td><img src="<%=request.getContextPath()%>/images/07-11-2015/tree_house6.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
			
        <td><a id="myLink" href="#" onclick="next();"><img src="<%=request.getContextPath()%>/scriptfiles/next.png" alt="Smiley face" border="0" height="100px" width="100%"></a></td>
    </tr>
	  <tr>
        <td></td>
		<td align ='center'> <b><%=(i%totalImages) + 1%></b> out of </b><%=totalImages%></b></td>
	    <td></td>
    </tr>
	
</table>

