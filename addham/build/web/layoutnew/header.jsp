<!--<div class="row-fluid">   
        <div class="span9"><div class="banner"></div></div>
        <div class="span3"><div class="banner">
             <img src="<%=request.getContextPath()%>/images/java3plus.png" alt="Mountain View" >
            </div></div> 
</div> 
-->
      <%@page contentType="text/html" pageEncoding="UTF-8"%>
      <%@page contentType="text/html"%>
 


           <script>
                var input = document.createElement("input");
                input.setAttribute("type", "hidden");
                input.setAttribute("name", "isMobileDevice");
                //append to form element that you want .
                 if( screen.width <= 480 )
                input.setAttribute("value", "true");
                else
                input.setAttribute("value", "false");
                document.getElementById("mobileform").appendChild(input);
               
           </script>
           
      <form action="showarticles" method="post" >
          
          
     </form> 
           <%String isMobile = request.getParameter("isMobileDevice");
           System.out.println(isMobile);
           %>

        <div class="row-fluid">  
        <div class="banner1">
            <div id ="bannerleft1"> 
           <!-- <img src="<%=request.getContextPath()%>/addimages/topadd.jpg" alt="Big Boat" style ="width:100%;height:100%">
           --> </div>
             <div id ="bannerright1">
                    <!--           <img src="<%=request.getContextPath()%>/images/java3plus.png" alt="Mountain View" style = "width:100%;height:100%;">-->
              <img src="<%=request.getContextPath()%>/images/valireddi1.png" alt="Mountain View" style = "width:100%;height:100%;">
             </div>
        </div> </div> 
      