package com.citation.Action;

import java.io.IOException;
import java.util.StringTokenizer;

//import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import com.text.DAO.WebpageDAO;
//import com.text.Formbean.WebFormBean;

public class GetSearchItemAction extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	@SuppressWarnings("deprecation")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		@SuppressWarnings("unused")
		HttpSession session=request.getSession();
		
		String path=request.getRealPath("");
        String wname = request.getParameter("wname");
        //String wname1 = request.getParameter("wname1");
        //String wname2 = request.getParameter("wname2");
       // String wname3 = request.getParameter("wname3");
        
        
        
        System.out.println("in jsp wname is--========>"+wname);
      
        
        	
        	
        	StringTokenizer str=new StringTokenizer(wname,"\\");
        	
             while(str.hasMoreElements()){
             	
            	 
            	 String token=str.nextToken();
                if(token.equalsIgnoreCase("x"))
                	 path="./Path.jsp";
                
                else if(token.equalsIgnoreCase("y")) 
                	path="./Path1.jsp";
                else if(token.equalsIgnoreCase("z")) 
                	path="./Path2.jsp";
              
                 System.out.println("------"+token);  
		                
                	           	   
                	   
                	   
                	 
		                    
	   
        }
                   
         
   RequestDispatcher rd=request.getRequestDispatcher(path);
   rd.forward(request, response);
   
   
	}
}