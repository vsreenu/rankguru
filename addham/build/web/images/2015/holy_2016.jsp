<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%@include file="/layoutnew/imagescode.jsp" %>	
<% int totalImages =20;%>
<table>
    <tr>
        <td>
            <a id="myLink" href="#" onclick="prev();"><img src="<%=request.getContextPath()%>/scriptfiles/prev.png" alt="Smiley face" border="0" height="100px" width="100%" ></a></td>
        <%if(i%totalImages==0){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/holy_2016_worldwide_image1.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
        <%if(i%totalImages==1){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/holy_2016_worldwide_image2.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
        <%if(i%totalImages==2){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/holy_2016_worldwide_image3.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==3){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/holy_2016_worldwide_image4.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==4){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/holy_2016_worldwide_image5.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==5){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/holy_2016_worldwide_image6.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==6){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/holy_2016_worldwide_image7.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==7){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/holy_2016_worldwide_image8.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==8){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/holy_2016_worldwide_image9.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==9){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/holy_2016_worldwide_image10.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==10){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/holy_2016_worldwide_image11.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==11){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/holy_2016_worldwide_image12.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==12){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/holy_2016_worldwide_image13.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==13){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/holy_2016_worldwide_image14.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==14){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/holy_2016_worldwide_image15.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==15){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/holy_2016_worldwide_image16.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==15){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/holy_2016_worldwide_image16.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==16){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/holy_2016_worldwide_image17.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==17){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/holy_2016_worldwide_image18.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==18){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/holy_2016_worldwide_image19.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>
		<%if(i%totalImages==19){%>
        <td><img src="<%=request.getContextPath()%>/images/2015/holy_2016_worldwide_image20.jpg" alt="Smiley face" border="0"  width="100%"></td>
        <%}%>


			
        <td><a id="myLink" href="#" onclick="next();"><img src="<%=request.getContextPath()%>/scriptfiles/next.png" alt="Smiley face" border="0" height="100px" width="100%"></a></td>
    </tr>
	  <tr>
        <td></td>
		<td align ='center'> <b><%=(i%totalImages) + 1%></b> out of </b><%=totalImages%></b></td>
	    <td></td>
    </tr>
	
</table>



