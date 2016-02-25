<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%

 if(session.getAttribute("loginuser")==null){
 
   RequestDispatcher rd=request.getRequestDispatcher("./LoginForm.jsp");
  rd.forward(request,response);
   
 %>
 <%} %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
 
 <script language="JavaScript" src="<%=request.getContextPath()+"/scripts/gen_validatorv31.js"%>"></script>
 
 <script type = "text/javascript" >
function disableBackButton()
{
window.history.forward();
}
setTimeout("disableBackButton()", 0);
</script>
 
 
 </head>
  
  <body onload="javascript:disableBackButton()">
                     
          <jsp:include page="Header.jsp"></jsp:include>
          
          
		<form action="./WebpageAction" name="content">
		
    <table border="1" width="785" height="173">
    
    <tr bgcolor="#4682B4"><font color="#FFFFE0" size="4"><i> Upload Content</i></font> </tr>
    <caption><font color="#708090"><i><b>Upload Webpage Here</b></i> </font>  </caption>
    <tr>
    <br/>
    
       <tr>
                             <td width="128"><span class="style17"><font color="#228B22">ContentCatagery</font> </span></td>
                                <td width="269"><label>
                                
                                <select name="category">
                                <option>--Select--</option>
                                <option value="java">Java</option>
                                </select>
                                </label>
                                </td>
                                </tr>
     <tr>
    <td width="128"><span class="style17"><font color="#228B22">Content Name</font> </span></td>
    <td width="269"><label>
    <input type="text" name="cname">
      </label></td>
     </tr>
      
    
                       <tr>
                             <td width="128"><span class="style17"><font color="#228B22">ContentDescription</font> </span></td>
                                <td width="269"><label>
                                
                                <textarea rows="5" cols="30" name="description"></textarea>
                           
                            
                                </label></td>
                              </tr>
                              
                             
                  <tr>
    <td width="128"><span class="style17"><font color="#228B22">JSP File Name</font> </span></td>
    <td width="269"><label>
    <input type="text" name="wname">
      </label></td>
     </tr>            
                              
                              
                              
                           
                             
                             
                             
                             <td align="right">
                             <input type="submit" name="submit" value="UpLoad">
                              </td></tr>
    </table>
    
    
    
<br/>
			
                 
    </form>
    
    
     
          <script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("content");

     frmvalidator.addValidation("wname","req","Website Name is required");
     
     frmvalidator.addValidation("cname","req","Content Title is required");
     
     frmvalidator.addValidation("color","req","Color is required");
    
    frmvalidator.addValidation("company","req","company is required");
    
    frmvalidator.addValidation("description","req","Description Name is required");
   
    frmvalidator.addValidation("ccode","req","ccode is required");
    frmvalidator.addValidation("price","req","price is required");
    frmvalidator.addValidation("price","numeric");
    
    
  </script>
    <jsp:include page="Footer.jsp"></jsp:include>
  </body>
</html>
