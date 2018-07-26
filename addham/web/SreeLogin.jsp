<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
 
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>


<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <script>
  function focusUserName(){

  document.forms[0].j_username.focus();
  }

  </script>
    <title>Login</title>
     
  </head>
 

  <body onload="focusUserName()">
    <%-- this form-login-page form is also used as the
         form-error-page to ask for a login again.
         --%>
  <div id="container">  
 
    <div id="intro">
   
      <div id="image">          
      </div>
       
      <div id="gap">
      </div>
      <br><br><br><br><br>

    <html:form action="/j_acegi_security_check.do" method="POST">
      <table width=50% border=0 align="center">
    

        <tr><td>User:</td>
        <td>
            <html:text property='j_username' />
        </td></tr>
        <tr><td>Password:</td><td><html:password property="j_password" /></td></tr>
        <tr><td><input type="checkbox" name="_acegi_security_remember_me"></td>
        <td>Don't ask for my password for two weeks</td></tr>

        <tr><td colspan='2'><html:submit value="Submit" /> 
        <input name="reset" type="reset" value="Clear"></td></tr>
        <!--tr><td colspan='2'></td></tr-->
      </table>
    </div>
    </div>
    </html:form>

  </body>
</html>