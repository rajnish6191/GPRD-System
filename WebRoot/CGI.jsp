<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
  </head>
  
  <body>
    The Common Gateway Interface (CGI) is a standard (see RFC 3875: CGI Version 1.1) method for web server software to delegate the generation of web content to executable files. Such files are known as CGI scripts or simply CGI's; they are usually written in a scripting language.
    A web server that supports CGI can be configured to interpret a URL that it serves as a reference to a CGI script. A common convention is to have a cgi-bin/ directory at the base of the directory tree and treat all executable files within this directory (and no other, for security) as CGI scripts. Another popular convention is to use filename extensions; for instance, if CGI scripts are consistently given the extension .cgi, the web server can be configured to interpret all such files as CGI scripts. While convenient, and required by many prepackaged scripts, it opens the server to attack if a remote user can upload executable code with the proper extension.

<br>
  </body>
</html>
