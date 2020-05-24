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

   h1
   {
       color: white;
    
       margin-top: 50px;
       font-weight:bold ;
   }
   
    

    #add
    {
       margin-left: 400px;
    }

    .asd{
         border: 2px solid rgba(255, 255, 255, 0.2);
    box-shadow: none;
    background:transparent;
    height: 2.8rem;
    display:block;
    width: 100%;
    border-radius: 4px;
    margin-bottom: 1rem;
    color: darkorange;
    }
    
    
.formbox {
    background: rgb(34,43,49,0.7);
    color: limegreen;
    flex-basis: 35%;
    border-top: 10px solid var(--secondaryred);
    padding: 2% 3%;
    margin-left: 80px;
    height: 400px;
    width: 500px;
    margin-top: 0px;
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
            <a class="nav-link" href="admin.jsp">Profile</a>
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

<br>

<div id='add'>
<br>
<h1 style="margin-left: 250px;">ADD MENU ITEMS</h1><br>
<form action="admin" method="post" class="formbox" >
    <label>RESTAURANT NAME</label><br>
    <input type="text" name="name" class="asd" placeholder="Enter Restaurant Name"></input>
    <label>ITEM NAME</label><br>
    <input type="text" name="item" class="asd" placeholder="Enter Item Name"></input>
    <label>ITEM PRICE</label><br>
    <input type="text" name="price" class="asd" placeholder="Enter Price"></input>
    <label>ITEM TYPE</label><br>
    <input type="text" name="type" class="asd" placeholder="VEG/NON VEG"></input>
    <input type="submit" class="mainbox" value='ADD ITEMS'>
    </form>
</div>

</body>
</html>