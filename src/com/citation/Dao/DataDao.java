package com.citation.Dao;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Vector;
import java.io.IOException;
import java.util.ArrayList;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Vector;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;





import com.citation.Dao.RegisterDAO;
import com.citation.Dao.DataDao;

import com.citation.FormBean.DataFormBean;
import com.citation.FormBean.WebFormBean;
import com.citation.Db.ConnectionFactory;

import com.citation.Util.DateWrapper;







public class DataDao {

	PreparedStatement pstmt,pstmt1,pstmt2,pstmt3,pstmt4,pstmt5,pstmt6,pstmt7,pstmt8,pstmt9,ps;
	Statement stmt,statement,stmt1;
	ResultSet rs,rs1,rs2,rs3,rs4,rs5,rs6,rs7,rs8,rs9,rs10,rs11,rs12,rs13,rs14;
	Connection con;
	String path="";
	int dataid=0;
public DataDao(){
		
		con=ConnectionFactory.getConnection();
		
		
	}
	  public boolean UploadData(DataFormBean sf){
	int i=0;
		
		boolean flag=false;
		try{
		

		pstmt=con.prepareStatement("insert into datas values((select nvl(max(dataid),100)+1 from datas),?,?)");
		
		
	    pstmt.setString(1, sf.getTitle());
	    pstmt.setString(2, sf.getDatas());
	 i=pstmt.executeUpdate();
		 
		 if(i>0){
			 
			 flag=true;
			 con.commit();
		 
		 }
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	finally{
		try{
			
			if(con!=null){
				
				con.close();
				
			}
			
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}
		return flag;
		
		
	}
	  
	  public ArrayList<DataFormBean> retreveCategory(DataFormBean df) throws SQLException
	    {
	    	
	    	ArrayList<DataFormBean> awf=null;
	    	pstmt=con.prepareStatement("select unique categoryname from categoryinfo");
			
	    	rs=pstmt.executeQuery();
			awf=new ArrayList<DataFormBean>();
			
			while(rs.next()){
				
				DataFormBean wf=new DataFormBean();
				
		      System.out.println("--------"+rs.getString(1));
				
		      wf.setCategoryname(rs.getString(1));
		     
				awf.add(wf);
			
			}
	    	
	     	return awf;
	    	
	    }	
	    	 
	  public boolean uploadCategoryData(DataFormBean sf){
			
			
			int i=0;
			boolean flag=false;
			try{
				stmt=con.createStatement();
			pstmt=con.prepareStatement("insert into categoryinfo values((select nvl(max(categoryid),100)+1 from categoryinfo),?)");
			pstmt.setString(1, sf.getCategoryname());
		  
		   
				 i=pstmt.executeUpdate();
			 
			 if(i>0){
				 
				 flag=true;
				 con.commit();
			 
			 }
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			try{
				
				if(con!=null){
					
					con.close();
					
				}
				
			}catch (SQLException e) {
				e.printStackTrace();
			}
		
			
		}
			return flag;
		}
	  public boolean CountData(DataFormBean sf){
			int i=0;
				
				boolean flag=false;
				try{
				

				pstmt=con.prepareStatement("insert into countdata values(?,?,?,?,?)");
				
				
			    pstmt.setInt(1, sf.getDataid());
			    pstmt.setInt(2, sf.getCountdata());
			    pstmt.setDouble(3, sf.getTf());
			    pstmt.setDouble(4, sf.getIdf());
			    pstmt.setDouble(5, sf.getTotal());
			   
			 i=pstmt.executeUpdate();
				 
				 if(i>0){
					 
					 flag=true;
					 con.commit();
				 
				 }
				
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			finally{
				try{
					
					if(con!=null){
						
						con.close();
						
					}
					
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}
				return flag;	
			}
	  
	  
	  public boolean CountTFData(DataFormBean sf){
			int i=0;
				
				boolean flag=false;
				try{
				

				pstmt=con.prepareStatement("insert into TFDATA values((?,?,?)");
				
				
			    pstmt.setInt(1, sf.getDataid());
			    pstmt.setDouble(2, sf.getTf());
			    pstmt.setDouble(3, sf.getIdf());
			 i=pstmt.executeUpdate();
				 
				 if(i>0){
					 
					 flag=true;
					 con.commit();
				 
				 }
				
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			finally{
				try{
					
					if(con!=null){
						
						con.close();
						
					}
					
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}
				return flag;	
			}
	  
	  
	  
	  public boolean SimilarData(String data,int count){
			int i=0;
				
				boolean flag=false;
				try{
				

				pstmt=con.prepareStatement("insert into similar values((?,?)");
				
				
			    pstmt.setString(1, data);
			    pstmt.setInt(2, count);
			   
			 i=pstmt.executeUpdate();
				 
				 if(i>0){
					 
					 flag=true;
					 con.commit();
				 
				 }
				
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			finally{
				try{
					
					if(con!=null){
						
						con.close();
						
					}
					
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}
				return flag;	
			}
	  
	  
	  
	  
	  
	  
   public List<WebFormBean> getDatas(String Title)
     	{
     		
     	  List<WebFormBean> list=new ArrayList<WebFormBean>();
     	    try {
     	    	
     	    	ps=con.prepareStatement("select DATACONTANT,description from uploaddata where UPPER(category) LIKE UPPER('%"+Title+"%') order by dataid asc");
     	    	
     	        rs=ps.executeQuery();
 
     	       while(rs.next())
     	  	{
     	    	  WebFormBean f=new WebFormBean();
     	  		System.out.println(f);
     	  	
     	  		   
	        		f.setCname(rs.getString(1));
	        		f.setDescription(rs.getString(2));
	        	list.add(f);
     	  		System.out.println("no of result set values"+list.size());
     	  	        }
     	  		
     	  	
     	  	}
     	    	catch(Exception e)
     	  	{
     	  		e.printStackTrace();
     	  		System.out.println(e.getMessage());
     	  	}
     	  	return list;
     	  	
     	  }
       	
        
   
   public List<DataFormBean> getTFvalue()
	{
		
	  List<DataFormBean> list=new ArrayList<DataFormBean>();
	    try {
	    	
	    	ps=con.prepareStatement("select dataid,round(tf,3),round(idf,3),round(total,3) from COUNTDATA");
	    	
	        rs=ps.executeQuery();

	       while(rs.next())
	  	{
	    	  DataFormBean f=new DataFormBean();
	  		System.out.println(f);
	  	
	  		    f.setDataid(rs.getInt(1));
       		f.setTf(rs.getDouble(2));
       		f.setIdf(rs.getDouble(3));
       		f.setTotal(rs.getDouble(4));
       	list.add(f);
	  		System.out.println("no of result set values"+list.size());
	  	        }
	  		
	  	
	  	}
	    	catch(Exception e)
	  	{
	  		e.printStackTrace();
	  		System.out.println(e.getMessage());
	  	}
	  	return list;
	  	
	  }
  	
   public List<DataFormBean> getGraphValue()
	{
		
	  List<DataFormBean> list=new ArrayList<DataFormBean>();
	    try {
	    	
	    	ps=con.prepareStatement("select slideNo,count,total from slideDATA");
	    	
	        rs=ps.executeQuery();

	       while(rs.next())
	  	{
	    	  DataFormBean f=new DataFormBean();
	  		System.out.println(f);
	  	
	  		    f.setSlideno(rs.getInt(1));
      		    f.setCount(rs.getInt(2));
      		    f.setTotal(rs.getDouble(3));
      	list.add(f);
	  		System.out.println("no of result set values"+list.size());
	  	        }
	  		
	  	
	  	}
	    	catch(Exception e)
	  	{
	  		e.printStackTrace();
	  		System.out.println(e.getMessage());
	  	}
	  	return list;
	  	
	  }
 	
   
   
   
   
   
         public String  getContent(int dataid)
     	{
     		
     	   
     	    List<DataFormBean> list=null;
     	    try {
     	    	
     	    	ps=con.prepareStatement("select datas from datas where dataid=?");
     	    	ps.setInt(1, dataid);
     	        rs1=ps.executeQuery();
     	        if(rs1.next())
     	        	return rs1.getString(1);
     	        //return resultSet.getString("datas");
     	    
     		} catch (Exception e) {
     			// TODO: handle exception
     			e.printStackTrace();
     			System.out.println(e.getMessage());
     			
     		}
     		finally
     		{
     			try {
     				//ResourceHelper.closeConnection();
     			} catch (Exception e2) {
     				// TODO: handle exception
     				e2.printStackTrace();
     				System.out.println(e2.getMessage());
     			}
     		}
     		return null;
     	}
         
         
         
         
         
         
         public String  getTitle(int dataid)
      	{
      		
      	   
      	    List<DataFormBean> list=null;
      	    try {
      	    	
      	    	ps=con.prepareStatement("select title from datas where dataid=?");
      	    	ps.setInt(1, dataid);
      	        rs1=ps.executeQuery();
      	        if(rs1.next())
      	        	return rs1.getString(1);
      	        //return resultSet.getString("datas");
      	    
      		} catch (Exception e) {
      			// TODO: handle exception
      			e.printStackTrace();
      			System.out.println(e.getMessage());
      			
      		}
      		finally
      		{
      			try {
      				//ResourceHelper.closeConnection();
      			} catch (Exception e2) {
      				// TODO: handle exception
      				e2.printStackTrace();
      				System.out.println(e2.getMessage());
      			}
      		}
      		return null;
      	}

public String  getlink(int dataid)
{
	
   
   
    try {
    	
    	ps=con.prepareStatement("select wname from webpage where wid=?");
    	ps.setInt(1, dataid);
        rs1=ps.executeQuery();
        if(rs1.next())
        	return rs1.getString(1);
        
    
	} catch (Exception e) {
		
		e.printStackTrace();
		System.out.println(e.getMessage());
		
	}
	finally
	{
		try {
			//ResourceHelper.closeConnection();
		} catch (Exception e2) {
			// TODO: handle exception
			e2.printStackTrace();
			System.out.println(e2.getMessage());
		}
	}
	return null;
}
}
