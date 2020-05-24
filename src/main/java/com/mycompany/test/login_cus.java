/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.test;

import java.sql.*;  
public class login_cus {
    public static boolean validate(String username,String password){  
    boolean status=false;  
    try
    {  
        Class.forName("com.mysql.jdbc.Driver");  
        Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login1","root","myserver");
        PreparedStatement ps=con.prepareStatement ("select * from customer where email=? and pass=PASSWORD(?)");  
        ps.setString(1,username);  
        ps.setString(2,password);  
        ResultSet rs=ps.executeQuery();  
        status=rs.next();
    }
    catch(Exception e)
    {
        System.out.println(e);
    }  
return status;  
}  
}  

