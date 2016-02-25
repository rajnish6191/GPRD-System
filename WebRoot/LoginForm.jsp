
<!DOCTYPE HTML PUBLIC "-//w3c//dtd html 4.0 transitional//en">
<html>
	<head>
	<script language="JavaScript" src="<%=request.getContextPath()+"/scripts/gen_validatorv31.js"%>" type="text/javascript"></script>
		<style type="text/css">
.Title {
font-family:Verdana;
font-weight:bold;
font-size:8pt
}
.Title1 {font-family:Verdana;
font-weight:bold;
font-size:8pt
}
        </style>
	</head>
	<body>

 <jsp:include page="Header.jsp"></jsp:include>

         <fieldset>
         <legend>Login Form</legend>
        <form action="<%=request.getContextPath()+"/LoginAction"%>" method=post name="login">
        <table  border="0" align="center"  bgcolor="white" width="80%">
               <tr>
                 <td height="120" align="right">
                 <td><table border="0" align="center">
                <tr align="center"><strong><h3><font color="#4682B4">Login Form</font></h3></strong>
 	</tr>
                   <tr>
                     <td ><font color="#DA70D6" size=""><b>UserID</b></font></td>
                      <td ><input type="text" name="username"> </td>
                      </tr>
                   <tr>
                     <td><font color="#DA70D6" size=""><b>Password</b></font></td>
                      <td>
                        <input type="password" name="password">                      </td>
                      </tr>
                   <tr>
                     <td colspan="2">
                       <div align="center" class="style11">
                         <input type="submit" name="Submit" value="Sign In">
                          &nbsp;
                          <input name="Input2" type="reset" value="Clear">
                         </div> 
                         </tr>  <tr>                    
                         <td><div>
                         <a href="./RegistrationForm.jsp"><font color="#228B22" size="3" style="verdana">NewUser SignUp??</font></a>
                         
                         </div></td>
                         
                      </tr>
                      <tr>                    
                         <td><div>
                         <a href="./Recoverpassword.jsp"><font color="#228B22" size="3" style="verdana">ForgotPassword??</font></a>
                         
                         </div></td>
                         
                      </tr>
                 </table></td>
                 <td> <img src="<%=request.getContextPath()+"/images/l1.jpeg"%>"  height="200" />
                 </td>
               </tr>
               
               
               
             </table>
		
		
          </form>
          </fieldset>
          <script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("login");

  frmvalidator.addValidation("username","req","Login Name is required");
  frmvalidator.addValidation("password","req","Password is required");
   
  </script>
          <br/>
                 
     <br/>
     <jsp:include page="Footer.jsp"></jsp:include>
	</body>
</html>