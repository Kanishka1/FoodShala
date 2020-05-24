<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
    
    <head>
        <title>
            Menu Items
        </title>
        <link rel ="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">   
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<style>
    td{
        height: 50px;
        background:rgb(34,43,49,0.7);
        color: white;
    }
    .ord
    {
          background-color: #21bf73; /* Green */
        border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
    }
</style>
    </head>
<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="index.jsp">FoodShala</a>
     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
        <li class="nav-item">
            <a class="nav-link" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" href="menu.jsp">Menu</a>
        </li>
         <li class="nav-item">
            <a class="nav-link" href="login.jsp">Login</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="register.jsp">Sign Up</a>
        </li>
    </ul>
 </div>
</nav>
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
<div class="fullcontent">

<table align="center" cellpadding="10" cellspacing="10" border="10" height='100%' width='100%'>

<tr bgcolor="#21bf73">
<td><b>Restaurant Name</b></td>
<td><b>Item</b></td>
<td><b>Price</b></td>
<td><b>Item Type</b></td>
<td><b>Place Order</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM menu";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<tr>
<td><%=resultSet.getString("rname") %></td>
<td><%=resultSet.getString("item") %></td>
<td><%=resultSet.getString("price") %></td>

<td><%=resultSet.getString("type") %></td>
<td><a href="login.jsp"><button class="ord">ORDER</button></a></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</div>
</table>
<footer>


  <a href="https://www.linkedin.com"><i class=" fab fa-linkedin"></i></a>
  &nbsp;

  <a href="https://www.twitter.com"><i class=" fab fa-twitter"></i></a>
  &nbsp;

  <a href="mailto:klahori98@gmail.com"><i class=" fas fa-envelope"></i></a>
  &nbsp;

  <a href="https://www.facebook.com"><i class="fab fa-facebook-f"></i></a>
  <p id="copy"style="color:white;">© 2020 Kanishka Lahori.</p>

      </footer>
      <script src="https://kit.fontawesome.com/f58c5089e2.js" crossorigin="anonymous"></script>
      <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js'></script>
</body>


</html>
