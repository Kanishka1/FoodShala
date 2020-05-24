/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.test;

import java.io.*;
import java.sql.*;
import java.text.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class admin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet register</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet register at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        HttpSession session = request.getSession(true);
       // FileInputStream fis=null;
        String a=request.getParameter("item");
        
       String b=request.getParameter("price");
       String c=request.getParameter("type");
       String d=request.getParameter("name");
     
       
        
        try{
             Class.forName("com.mysql.jdbc.Driver");
             Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login1","root","myserver");
             PreparedStatement ps=con.prepareStatement("insert into menu(item,price,type,rname) values(?,?,?,?)");
            
    ps.setString(1,a);
    ps.setString(2,b);
    ps.setString(3,c);
    ps.setString(4,d);
    
   int it=ps.executeUpdate();
    //int t=s.executeUpdate();
          if(it>0)
          {
              
              RequestDispatcher rd=request.getRequestDispatcher("/admin.jsp");
                            rd.forward(request, response);
          }
          else
          {
              out.println("ERROR");
          }
        con.close();
        }
        catch(Exception se)
        {
             //out.println();
           out.println("ERROR");
           
           out.println(se);
            se.printStackTrace();
        }
    }
}
    