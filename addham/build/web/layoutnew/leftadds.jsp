
<%@page import="java.util.ArrayList"%>
<%@page import="com.sree.tali.pojo.UploadImagePojo"%>
<%@page import="java.util.List"%>
<%
 List<UploadImagePojo> images1 = new ArrayList<UploadImagePojo>();

Object object4 = application.getAttribute("images");
if(object4!=null){
images1 = (List<UploadImagePojo>)object4;
}
%>

<div class="span3">
    <!--<div class="row-fluid">	-->

          <% 
int i= 0;
for(UploadImagePojo imagePojo:images1){
          i++;
           String color ="#564ADC";
          if(i%2==0){
            color ="#088A29";
        }
        if(i%3==0){
            color ="#EE5B2A";
        }
        if(i%5==0){
            color ="#A901DB";
        }
          if(i==7)
          break;
          %>
           <div id ="imagemenu">
          <table width="100%">
         <tr >
        <td width="30%">
            
         <img src="<%=request.getContextPath()%>/<%=imagePojo.getImagePath()%>" alt="Big Boat" style ="width:100%;height:70px">
        </td>
        <td width="6%"></td>
        <td width="64%" style="font-size:22px;">   
            <div class="Gidugu">
            <a href="<%=request.getContextPath()%>/user/<%=imagePojo.getUrl()%>" style="text-decoration: none;color: <%=color%>"><%=imagePojo.getTitle()%></a>
            </div>
            </td>
      </tr>
        </table>
           </div>
          <%
          }
          %>
      <!--    <div id ="leftmenu"><img src="<%=request.getContextPath()%>/addimages/addimage1.jpg" alt="Big Boat" style ="width:100%;height:100%"></div>
           <div id ="leftmenu"><img src="<%=request.getContextPath()%>/addimages/addimage2.jpg" alt="Big Boat" style ="width:100%;height:100%"></div>
	 --> <div id ="leftmenu">
              <div class="fb-page" data-href="https://www.facebook.com/addhamcom-512933608870336/" data-width="310" data-small-header="false" data-adapt-container-width="false" data-hide-cover="false" data-show-facepile="true" data-show-posts="false"></div>
          </div>
	

<!--   <div id ="leftmenu"><img src="<%=request.getContextPath()%>/addimages/addimage4.jpg" alt="Big Boat" style ="width:100%;height:100%"></div>
	   <div id ="leftmenu"><img src="<%=request.getContextPath()%>/addimages/addimage5.jpg" alt="Big Boat" style ="width:100%;height:100%"></div>
	   <div id ="leftmenu"><img src="<%=request.getContextPath()%>/addimages/addimage6.jpg" alt="Big Boat" style ="width:100%;height:100%"></div>    
   -->
   <!-- </div>-->
 </div><!--/span-->