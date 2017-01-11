package com.memento.fileupload;
import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import java.sql.*;
import java.io.IOException;
import java.util.List;



import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


public class UploadServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private final String UPLOAD_DIRECTORY = "https://drive.google.com/open?id=0B85OVebFVhYeMXNKOU5sRUpHWnc";
	 static final String JDBC_DRIVER="com.mysql.jdbc.Driver";  
     static final String DB_URL="jdbc:mysql://localhost:3306/primediscount";

     //  Database credentials
     static final String USER = "root";
     static final String PASS = "root";
     
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(ServletFileUpload.isMultipartContent(request)){
            try {
            	String fname = null;
            	String fsize = null;
            	String ftype = null;
                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                for(FileItem item : multiparts){
                    if(!item.isFormField()){
                        fname = new File(item.getName()).getName();
                        fsize = new Long(item.getSize()).toString();
                        ftype = item.getContentType();
                        item.write( new File(UPLOAD_DIRECTORY + File.separator + fname));
                    }
                }
                String workingDir = System.getProperty("user.dir");
         	   System.out.println("Current working directory : " + workingDir);
               //File uploaded successfully
               request.setAttribute("message", "File Uploaded Successfully");
               
               request.setAttribute("name", fname);
               request.setAttribute("size", fsize);
               request.setAttribute("type", ftype);
               Class.forName("com.mysql.jdbc.Driver");

               // Open a connection
               Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);

               // Execute SQL query
               Statement stmt = conn.createStatement();
               String sql;
               int id=1;
               sql = "Insert into image (id,path)"+ "values(?,?)";
               
               PreparedStatement preparedStmt = conn.prepareStatement(sql);
               preparedStmt.setInt (1, id);
               preparedStmt.setString (2, fname);
               preparedStmt.execute();
               
               conn.close();
            } catch (Exception ex) {
               request.setAttribute("message", "File Upload Failed due to " + ex);
            }          
         
        }else{
            request.setAttribute("message","Sorry this Servlet only handles file upload request");
        }
    
        request.getRequestDispatcher("/result.jsp").forward(request, response);
     
    }		
		// TODO Auto-generated method stub
	}