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

public class index extends HttpServlet {

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
        String a=request.getParameter("username");
        String b=request.getParameter("password");
       if(login.validate(a,b))
       {
           session.setAttribute("user", a);
        RequestDispatcher rd=request.getRequestDispatcher("/admin.jsp");  
        rd.forward(request,response);  
        } 
       else if(login_cus.validate(a,b))
       {
           session.setAttribute("user", a);
        RequestDispatcher rd=request.getRequestDispatcher("/order.jsp");  
        rd.forward(request,response);   
       }
    else
    {  
        out.print("Sorry username or password error");  
        RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");  
        rd.forward(request,response);  
    }  
          
    out.close();  
    }  
}    
