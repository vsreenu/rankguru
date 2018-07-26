<%-- 
    Document   : homepage
    Created on : Mar 31, 2013, 12:58:11 AM
    Author     : sree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Welcome to Helen Keller's Institute</title>
<%@include file="layouts/header.jsp" %>
<script type="text/javascript">
    
  var rowNum = 0;
function addRow() {
   
   // alert("Hi");
	rowNum ++;
	//alert(rowNum);
	//var row = '<tr><td align="center"> </td><td><input type="file" id = "rowNum'+rowNum+'" name="name[]" accept="image/jpg,image/gif"> <input type="button" id ="delBut'+rowNum+'" value="Remove" onclick="removeRow('+rowNum+');"></td></tr>';
	var row = '<input name="image'+rowNum+'" type="file" value="" id = "rowNum'+rowNum+'" /> <input type="button" id ="delBut'+rowNum+'" value="Remove" onclick="removeRow('+rowNum+');"/>';
        jQuery('#itemRows').append(row);
}

function removeRow(rnum) {
	jQuery('#rowNum'+rnum).remove(); 
        jQuery('#delBut'+rnum).remove();
}
    
    
function submitForm()
{
document.forms[0].action = "<%=request.getContextPath()%>/uploadimages.do?method=addImages"
document.forms[0].submit();
}
function onChange()
{
document.forms[0].action = "<%=request.getContextPath()%>/uploadimages.do?method=getSubfoldersForImages"
document.forms[0].submit();
}
</script>
</head>
<body>
<div id="main">
    <%@include file="layouts/top.jsp" %>
      <%@include file="layouts/menu.jsp" %>

<!----     image gallery---->


<div class="clear"></div>


<!----     body  ---->

<div id="fbox">
<!----    box1  ---->
<div id="adminbox1">
<div id="insideadminbox1">
<html:form action="uploadimages" method="post" enctype="multipart/form-data">
<table border = "0" width="800">
<tr><td align="center" width="50%"></td><td></td></tr>




<tr><td align="center">	Folder Name : </td>
<td> <html:select property="folderName" onchange="onChange()">
        <html:option value="">select</html:option>
         <html:options name="uploadimagepojo" property="folders" />
      </html:select></td></tr>
<tr><td align="center">	Sub Folder Name : </td><td>
     <html:select property="subfolderName" >
          <html:option value="">select</html:option>
         <html:options name="uploadimagepojo" property="subFolders" />
     </html:select></td></tr>

<tr><td align="center">	Directory Name: </td><td><html:text property = "directoryname"/></td></tr>
<tr><td align="center">	Article File : </td><td id ="itemRows"><html:file property = "image"/> <input onClick="addRow();" type="button" value="Add row" /> </td></tr>
<tr><td align="center"> </td><td id ="itemRows"> </td></tr>
<tr><td align="center" width="50%"></td><td><br /></td></tr>
<tr><td align="right" style="margin:20px"><html:button property = "button" onclick="submitForm()">Submit</html:button> </td></tr>
</table> 
</html:form>
</div>
</div>				   
</div>

<!----   bottom  image gallery---->
<%@include file="layouts/bottomimages.jsp" %>

<!--<hr color="#D8D8D8">
<div id="midbanner">
<div id="midbannerleft"></div>
</div>
<hr color="#D8D8D8">-->


 <%@include file="layouts/footer.jsp" %>



</div>
</body></html>
