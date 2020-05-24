<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>FoodShala</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">


        <link rel ="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">   
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
        <style>
            table{
                width: 80%;
                height:200px;
                
            }
             td{
        height: 50px;
        background:rgb(34,43,49,0.7);
        color: white;
        text-align: center;
        margin-top: 8px;
    }
            
            thead{
                background-color:#21bf73;
            }
   h1
   {
       color: white;
       
       margin-top: 50px;
       font-weight:bold ;
   }
   
   .mb{
       margin-left: 300px;
       
       background: var(--secondaryred);
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
  margin-left: 300px;
    }
   .ord:hover
    {
          background-color: #21bf73; /* Green */
        border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin-left: 300px;
    }
</style>
    </head>
    
<body>
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
            
                <a class="nav-link "href="index.jsp">Logout</a>
                  </li>
                  <li>
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
					out.println(" <h1>Welcome " +uid+"</h1>");
					%>
					<!-- WE HAVE GIVEN LOGOUT.JSP FILE INORDER TO LOGOUT THE SESSION -->
					
				<%}
		%> 
      
        </li>
    </ul>
 </div>
</nav>
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


<h1 style="margin-left: 500px;">LIST OF ORDERS</h1>
<br>
<table cellspacing="30" style="margin-left: 50px;">

<thead style="background-color:#21bf73;">
<td><b>Item</b></td>
<td><b>Quantity</b></td>
<td><b>Name</b></td>
<td><b>Address</b></td>
<td><b>Contact</b></td>
</thead>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * from orders";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("item") %></td>
<td><%=resultSet.getString("quantity") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("contact") %></td>

</tr>


<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

</table>
<br>
<div id='add'>
<br>
<a href="addmenu.jsp"><input type="button" class="btn btn-primary ord"  value="ADD MENU ITEMS" ></a>
<a href="delmenu.jsp"><input type="button" class="btn btn-primary ord" value="DELETE MENU ITEMS" ></a>
</body>
</html>