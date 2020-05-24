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
public class customer extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
       response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        HttpSession session = request.getSession(true);
        String a=request.getParameter("name");
        String b=request.getParameter("address");
        String c=request.getParameter("email");
        String d=request.getParameter("mob");
        String e=request.getParameter("pass");
        String f=request.getParameter("cpass");
        String g=request.getParameter("pref");
        
        try{
             Class.forName("com.mysql.jdbc.Driver");
         Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login1","root","myserver");
          //PreparedStatement s=con.prepareStatement("insert into cust_login values(?,PASSWORD(?))");
          PreparedStatement ps=con.prepareStatement("insert into customer(name,address,email,mob,pass,cpass,pref)values(?,?,?,?,PASSWORD(?),PASSWORD(?),?)");
    
    //s.setString(1,c);
    //s.setString(2,e);
    ps.setString(1, a);
    ps.setString(2, b);
    ps.setString(3,c);
    ps.setString(4,d);
    ps.setString(5,e);
    ps.setString(6,f);
    ps.setString(7,g);
    
   int it=ps.executeUpdate();
    //int t=s.executeUpdate();
          if(it>0)
          {
              
              RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");
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
    