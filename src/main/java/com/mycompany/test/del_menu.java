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

public class del_menu extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        HttpSession session = request.getSession(true);
       // FileInputStream fis=null;
        String a=request.getParameter("item");
        
        try{
             Class.forName("com.mysql.jdbc.Driver");
             Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login1","root","myserver");
             Statement st=con.createStatement();
             PreparedStatement s=con.prepareStatement("DELETE FROM menu WHERE item=?");
             s.setString(1,a);
    int t=s.executeUpdate();
          if(t>0)
          {
             RequestDispatcher rd=request.getRequestDispatcher("/admin.jsp");  
            rd.forward(request,response);  
          }
          else
          {
              out.println("ERROR");
          }
        con.close();
        }
        catch(Exception se)
        {
           out.println("ERROR");
           out.println(se);
            se.printStackTrace();
        }
    }
}
    