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
public class restaurant extends HttpServlet {

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
       
        String a=request.getParameter("name");
        String b=request.getParameter("address");
        String c=request.getParameter("email");
        String d=request.getParameter("mob");
        String e=request.getParameter("spec");
        String g=request.getParameter("pass");
        String h=request.getParameter("cpass");
        try{
             Class.forName("com.mysql.jdbc.Driver");
          Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_name","username","password");
             PreparedStatement s=con.prepareStatement("insert into restaurant(name,address,email,mob,spec,pass,cpass)values(?,?,?,?,?,PASSWORD(?),PASSWORD(?))");
    
    s.setString(1, a);
    s.setString(2, b);
    s.setString(3,c);
    s.setString(4,d);
    s.setString(5,e);
    s.setString(6,g);
    s.setString(7,h);

    int t=s.executeUpdate();
          if( t>0)
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
           out.println(e);
           out.println(se);
            se.printStackTrace();
        }
    }
}
    
