<%-- 
    Document   : order
    Created on : 2 May, 2020, 7:35:11 PM
    Author     : Kanishka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Order </title>
  <meta name="viewport" content="width=device-width, initial-scale=1">

 <link rel="stylesheet"href="css/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">   
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
  <style>
    table{
       
        background:rgb(34,43,49,0.7);
        color: white;
        margin-top: 0px;
        height:500px;
        width: 400px;
    }
    td{
        width: 100px;
        padding-top: 10px;
        padding-left: 20px;
    }
    #order
    {
       
        margin-left: 50px;
        padding-left: 20px;
        height: 86%;
    }
    #menu
    {
        margin-left:20px;
        height:500px;
    }
    .fullcontent
    {
        padding-left:8px;
    }    
    h1{
        font-family: var(--mainfont);
    font-size: 1.5rem;
    margin-bottom: 1rem;
    color:white;
    text-align: center;
    font-weight: bold; 
    margin-top:0px;
    }
</style>
</head>

<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
<body>
 
<nav class="navbar navbar-expand-lg navbar-dark">
    
     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
        <li class="nav-item">
            <a class="nav-link " href="menu.jsp">Menu</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="index.jsp">Log Out</a>
        </li>
        <li class="nav-link">
            <%
		//HERE WE GETTING THE ATTRIBUTE DECLARED IN VALIDATE.JSP AND CHECKING IF IT IS NULL, THE USER WILL BE REDIRECTED TO LOGIN PAGE
				String uid = (String)session.getAttribute("user");
				if (uid == null)
				{
		%><!-- NOT A VALID USER, IF THE USER TRIES TO EXECUTE LOGGED IN PAGE DIRECTLY, ACCESS IS RESTRICTED -->
					 <jsp:forward page="index.jsp"/>
		<%	
				}
				else
				{//IF THE VALUE IN SESSION IS NOT NULL THEN THE IS USER IS VALID
					out.println(" <h2 style='color: white;margin-top: 50px;'>Welcome " +uid+"</h2>");
					%>
					<!-- WE HAVE GIVEN LOGOUT.JSP FILE INORDER TO LOGOUT THE SESSION -->
					
				<%}
		%> 
      
        </li>
    </ul>
 </div>
</nav>

  <div class="fullcontent">
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
//String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "login1";
String userId = "root";
String password = "myserver";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<div>
   
    <br>
    <br>
    <table align="center" cellpadding="5" cellspacing="5" border="1" height='100%' width='100%' >
         <h1>LIST OF RESTAURANTS</h1>
        <thead style='background-color:orangered'>
<td>Name</td>
<td>Address</td>
<td>Contact</td>
<td>Speciality</td>

</thead>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT name,address,mob,spec FROM restaurant";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>


    <tr>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("mob") %></td>
<td><%=resultSet.getString("spec") %></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<br>
<br>
</div>

<div>
    <br>
    <br>
    <table align="center" cellpadding="5" cellspacing="5" border="1" height='100%' width='100%' id="menu">
         <h1>MENU</h1>
        <thead style='background-color:orangered'>
<td><b>Restaurant Name</b></td>
<td><b>Item</b></td>
<td><b>Price</b></td>
<td><b>Type</b></td>


</thead>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * from menu";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("rname") %></td>
<td><%=resultSet.getString("item") %></td>
<td><%=resultSet.getString("price") %></td>
<td><%=resultSet.getString("type") %></td>


</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>

    <div class="formbox" id='order'>
        <h3 style='color:white; text-align: center; font-weight: bold; margin-top:0px;'>PLACE ORDER</h3>
        <form id="form" action="order" method="post">
           <label for="">NAME</label>
           <input type="text" placeholder="Enter Your Name" name="name"class="asd" required>
            <label for="">ADDRESS:</label>
             <input type="text" placeholder="Enter address" name="address" class="asd" required/>
            <label for="">CONTACT NUMBER</label>
            <input type="number" placeholder="Enter Contact Number" name="contact" class="asd" required/>
            <label for="">ITEM</label>
            <input type="text" placeholder="Enter Item" name="item" class="asd" required/>
            <label for="">QUANTITY</label>
            <input type="number" placeholder="Enter Quantity" name="quantity" class="asd" required/>
            <label for="">RESTAURANT NAME</label>
            <input type="text" placeholder="Enter Restaurant Name" name="quantity" class="asd" required/>
            <input type="submit" name="submit" value="CONFIRM" class="mainbox">
        </form>
    
</div>
   
</div>

<script src="https://kit.fontawesome.com/f58c5089e2.js" crossorigin="anonymous"></script>
      <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js'></script>
</body>
</html>