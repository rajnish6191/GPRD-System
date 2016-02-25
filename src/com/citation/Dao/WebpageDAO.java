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
import java.util.ArrayList;
import java.util.List;

import com.citation.Db.ConnectionFactory;
import com.citation.Db.SqlConstants;
import com.citation.FormBean.WebFormBean;

public class WebpageDAO {
	
	
	PreparedStatement pstmt,pstmt1;
	Statement stmt;
	ResultSet rs,rs1;
	Connection con;
	
	public WebpageDAO(){
		
		con=ConnectionFactory.getConnection();
		
	}
	
	
	public boolean uploadWebpage(WebFormBean wf){
		
		int uid=0;
		int i=0;
		boolean flag=false;
		try{
		
			
			stmt=con.createStatement();
			
			
		
		pstmt=con.prepareStatement(SqlConstants._UPLOAD_WEBPAGE);
		
		
		
		
		pstmt.setString(1, wf.getCategory());
		pstmt.setString(2, wf.getCname());
		pstmt.setString(3, wf.getDescription());
		
		
		

		
		
		
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
	
	public ArrayList<WebFormBean> viewWebpage(String path){
		
		ArrayList<WebFormBean> awf=null;
		
		
		try{
			pstmt=con.prepareStatement(SqlConstants._GET_WEBPAGE);
			
			rs=pstmt.executeQuery();
			
			awf=new ArrayList<WebFormBean>();
			
			while(rs.next()){
				
				WebFormBean wf=new WebFormBean();
				int wid=rs.getInt(1);
				wf.setWid(wid);
				wf.setWname(rs.getString(2));
				wf.setCname(rs.getString(3));
				wf.setDescription(rs.getString(4));
				wf.setCompany(rs.getString(5));
				wf.setCategory(rs.getString(6));
				wf.setCcode(rs.getString(7));
				Blob b=rs.getBlob(8);
				byte[] b1=b.getBytes(1, (int)b.length());
				OutputStream fout=new FileOutputStream(path+"/"+wid+".jpg");
				fout.write(b1);
				wf.setImage(wid+".jpg");
				wf.setColor(rs.getString(9));
				wf.setUldate(rs.getString(10));
				wf.setPrice(rs.getDouble(11));
				
				awf.add(wf);
			
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return awf;
		
	}
	
	public List<WebFormBean> getAllTitles(){
		
		List<WebFormBean> awf=null;
		try{
			
			pstmt=con.prepareStatement("select unique wname,ctitle from webpage");
			
			
			rs=pstmt.executeQuery();
			awf=new ArrayList<WebFormBean>();
			
			while(rs.next()){
				
				WebFormBean wf=new WebFormBean();
				
				wf.setWname(rs.getString(1));
				wf.setCname(rs.getString(2));
				
				awf.add(wf);
			
			}
		
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return awf;
		
		
	}
	
public List<WebFormBean> getWname(){
		
		List<WebFormBean> awf=null;
		try{
			
			pstmt=con.prepareStatement("select unique wname from webpage");
			
			
			rs=pstmt.executeQuery();
			awf=new ArrayList<WebFormBean>();
			
			while(rs.next()){
				
				WebFormBean wf=new WebFormBean();
				
				wf.setWname(rs.getString(1));
				
				
				awf.add(wf);
			
			}
		
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return awf;
		
		
	}
	
	
public ArrayList<WebFormBean> viewWebpageAt(String path,String cname,String wname){
		
		ArrayList<WebFormBean> awf=null;
		
		
		try{
			if(cname.equalsIgnoreCase("bag")){
			
			
			pstmt=con.prepareStatement(SqlConstants._GET_WEBPAGE_AT);
			pstmt.setString(1, cname);
            pstmt.setString(2, wname);
            System.out.println("in dao class wname--------"+wname);
              }else{
            	  
            	  pstmt=con.prepareStatement(SqlConstants._GET_WEBPAGE_FROM);
            	  
            	  pstmt.setString(1, cname);
                  pstmt.setString(2, wname);
				
			}
			rs=pstmt.executeQuery();
			
			
			
			awf=new ArrayList<WebFormBean>();
			
			while(rs.next()){
				
				WebFormBean wf=new WebFormBean();
				int wid=rs.getInt(1);
				wf.setWid(wid);
				wf.setWname(rs.getString(2));
				wf.setCname(rs.getString(3));
				wf.setDescription(rs.getString(4));
				wf.setCompany(rs.getString(5));
				wf.setCategory(rs.getString(6));
				wf.setCcode(rs.getString(7));
				Blob b=rs.getBlob(8);
				byte[] b1=b.getBytes(1, (int)b.length());
				OutputStream fout=new FileOutputStream(path+"/"+wid+".jpg");
				fout.write(b1);
				wf.setImage(wid+".jpg");
				
				wf.setColor(rs.getString(9));
				wf.setUldate(rs.getString(10));
				wf.setPrice(rs.getDouble(11));
				
				awf.add(wf);
			
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return awf;
		
	}
	
}
