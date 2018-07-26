<%@page import="com.sree.tali.hibernate.pojo.ThoranamDataPojo"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sree.tali.pojo.UploadImagePojo"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>&#3108;&#3142;&#3122;&#3137;&#3095;&#3137; &#3116;&#3149;&#3122;&#3134;&#3095;&#3137;&#3122; &#3128;&#3118;&#3134;&#3129;&#3134;&#3120;&#3074;</title>
  <%@include file="/layouts/script_1.jsp" %>
<style> .allblur { width:100%; border: solid 1px #555;margin-bottom: 10px; background-color: #eed; box-shadow: 0 0 5px 2px rgba(0,0,0,0.6); -moz-box-shadow: 0 0 5px 2px rgba(0,0,0,0.6); -webkit-box-shadow: 0 0 5px 2px rgba(0,0,0,0.6); -o-box-shadow: 0 0 5px 2px rgba(0,0,0,0.6); } </style> 
<style> .allblur70mm { width:100%;height:45px; border: solid 1px #555;margin-bottom: 10px; background-color: #BDBDBD; box-shadow: 0 0 2px 1px rgba(0,0,0,0.6); -moz-box-shadow: 0 0 2px 1px rgba(0,0,0,0.6); -webkit-box-shadow: 0 0 2px 1px rgba(0,0,0,0.6); -o-box-shadow: 0 0 2px 1px rgba(0,0,0,0.6); } 


    input[type="text"] {
  display: block;
  margin: 0;
  width: 100%;
  font-family: sans-serif;
  font-size: 18px;
  appearance: none;
  box-shadow: none;
  border-radius: none;
}
input[type="text"]:focus {
  outline: none;
}

.style-1 input[type="text"] {
  padding: 10px;
  border: solid 1px #dcdcdc;
  transition: box-shadow 0.3s, border 0.3s;
}
.style-1 input[type="text"]:focus,
.style-1 input[type="text"].focus {
  border: solid 1px #707070;
  box-shadow: 0 0 5px 1px #969696;
}

/*select box*/


    select {
  display: block;
  margin: 0;
  width: 100%;
  font-family: sans-serif;
  font-size: 18px;
  appearance: none;
  box-shadow: none;
  border-radius: none;
}
select:focus {
  outline: none;
}

.style-1 select {
  padding: 10px;
  border: solid 1px #dcdcdc;
  transition: box-shadow 0.3s, border 0.3s;
}
.style-1 select:focus,
.style-1 select.focus {
  border: solid 1px #707070;
  box-shadow: 0 0 5px 1px #969696;
}
</style> 
</head>
<body>
<script>

</script>
<script type="text/javascript">
function submitForm()
{
document.forms[0].action = "<%=request.getContextPath()%>/showarticles.do?method=addThoranam";
document.forms[0].submit();
}
</script>
    
    <%

List<UploadImagePojo> images = new ArrayList<UploadImagePojo>();
Object object3 = application.getAttribute("images");
if(object3!=null){
images = (List<UploadImagePojo>)object3;

}

List<String> websites = new ArrayList<String>();

websites.add("hemanthamu.blogspot.in");
websites.add("bvdprasadarao-pvp.blogspot.in");
websites.add("sarasabharati-vuyyuru.com");
websites.add("kasthephali.blogspot.in");
websites.add("durgeswara.blogspot.in");
websites.add("swapnikareha.blogspot.in");
websites.add("golisastry.blogspot.in");
websites.add("boldannikaburlu.blogspot.in");

websites.add("rajasulochanam.blogspot.in");
websites.add("sahitheeyanam.blogspot.in");
websites.add("susrihome.blogspot.in");
websites.add("vanajavanamali.blogspot.in");
websites.add("harikaalam.blogspot.in");
websites.add("scienceintelugu.blogspot.in");
websites.add("sangitasaurabham.blogspot.in");
websites.add("srishivapuranamu.blogspot.in");

websites.add("telugubhagavatam.org");
websites.add("bhaktisaagaram.blogspot.in");
websites.add("sne-hithudu.blogspot.in");
websites.add("kandishankaraiah.blogspot.in");

session.setAttribute("websites",websites );




%>
<div id="main">	
    <%@include file="/layouts/header.jsp" %>
    <%@include file="/layoutnew/menu.jsp" %>
<div id="welcomemiddle">
<!--<hr>-->
<div class="container-fluid">
                		  <p style="border-bottom: 0px dotted #F2F2F2;"></p>

   <!-- <div class="row-fluid"> 
          <%
     int count = 0;
   for(UploadImagePojo uploadimagepojo : images)   {
       count++;
       if(count==7)
           break;
%>
<div class="span2">
    	<a href="<%=request.getContextPath()%>/user/<%=uploadimagepojo.getUrl()%>" style="text-decoration: none" title="<%=uploadimagepojo.getTitle()%>">
        <img src="<%=request.getContextPath()%>/<%=uploadimagepojo.getImagePath()%>" alt="Smiley face" border="0" height="170px" width="100%" />
        </a></div>

<%  }%> 
              
    </div>-->

</div>
<!--<hr>-->
<div class="container-fluid">
       <div class="row-fluid"> 

           <div class="box5 effect8">
               <br />

           <html:form action="showarticles" method="post">
<table border = "0" width="80%">
      <tr><td align="center"></td><td><html:errors /></td></tr>
	<tr >	<td width="50%" align="right" style="font-size:18px">	Category&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; </td> 
            <td><div class="input-list style-1 clearfix"><html:select property="type" style="width:273px" >
	<html:option value="saahithyam">&#3128;&#3134;&#3129;&#3135;&#3108;&#3149;&#3119;&#3074;</html:option>
	<html:option value="ithihaasam">&#3079;&#3108;&#3135;&#3129;&#3134;&#3128;&#3074;</html:option>
	<html:option value="haasyam">&#3129;&#3134;&#3128;&#3149;&#3119;&#3074;</html:option>
        <html:option value="vyangyam">&#3125;&#3149;&#3119;&#3074;&#3095;&#3149;&#3119;&#3074;</html:option>
        <html:option value="cinimaa">&#3128;&#3135;&#3112;&#3135;&#3118;&#3134;</html:option>
        <html:option value="others">&#3079;&#3108;&#3120;&#3118;&#3137;&#3122;&#3137;</html:option>
     </html:select></div></td> </tr>
<tr>	<td align="right" style="font-size:18px">	Article Title&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; </td>
    <td>  <div class="input-list style-1 clearfix"> <html:text property = "title" style="width:250px"/></div></td></tr>


<tr>	<td align="right" style="font-size:18px" >	Article Link&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; </td>
                    <td><div class="input-list style-1 clearfix"><html:text property = "url" style="width:250px"/></div></td></tr>
                
                
                <tr>	<td align="right" style="font-size:18px">	Enter Captcha&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; </td>
                    <td><div class="input-list style-1 clearfix"><html:text property = "captcha" style="width:250px"/></div></td></tr>
               
                
                    <tr>	<td align="right"><a href="<%=request.getContextPath()%>/showarticles.do?method=addThoranam" title="refresh"><img alt="captcha image" src="<%=request.getContextPath()%>/images/refresh_icon.png" height="40px" width="40px" /></a>	&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </td><td><img alt="captcha image" src="captcha" /></td></tr>

                <tr>	<td></td><td align="left">	<html:button property = "button" onclick="submitForm()" style="width:130px;height:50px" >Submit</html:button> </td></tr>
				</table>
			</html:form>
<br /><br />
<!--bean:write name="thoranampojo" property="title" /-->
         </div>

       
       </div>
     


    </div>

</div>
</div>
 <%@include file="layoutnew/footer.jsp" %>

</body></html>