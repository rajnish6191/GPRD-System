<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
 
 <script language="JavaScript" src="<%=request.getContextPath()+"/scripts/gen_validatorv31.js"%>"></script>
 <link rel="stylesheet" type="text/css" href="jquery.autocomplete.css" />
<script type="text/javascript">
function validate()
{
if(""==document.content.Title.value)
{
alert("Title Required");
return;
}
else if(""==document.content.Data.value)
{
alert("Data Content Required");
return;
}

}

</script>
 </head>
  
 	<body>  
            
           
          
          <jsp:include page="Header.jsp"></jsp:include>
                 <caption><font color="#708090"><i><b>Upload Category Information Here</b></i> </font></caption>
		<form action="./UploadCategoryAction" name="content"><center>
		
    <table>
    
  <tr>
    <td width="228"><span class="style17"><font color="#228B22" size="4">Category Name</font> </span></td>
    <td width="269"><label>
    <input type="text" name="categoryname">
      </label></td>
     </tr>           
 



        </table></br>
        </center>                   
           <br>                  
            <center>   <table>              
     <tr>  <td> </td><td align="left"><input type="image"  alt="submit" value="UpLoad" src="images/upl.png" height="60" width="150" onclick="javascript:validate();"></td>
                  
                  
                             
                              </tr>
    </table></center>
    
    
    
<br/>
			
                 
    </form>
    
    
     
         
  </body>
</html>
