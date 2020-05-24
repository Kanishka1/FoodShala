<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
  <title>FoodShala</title>
  <link rel="stylesheet"href="css/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">   
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<style>
    .formbox
    {
        height: 280px;
    }
    
</style>
<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="index.jsp">FoodShala🥗🍕</a>
     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
       
        <li class="nav-item">
            <a class="nav-link " href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="menu.jsp">Menu</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="login.jsp">Login</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" href="register.jsp">Sign Up</a>
        </li>
    </ul>
 </div>
</nav>

</head>
  <div class="fullcontent">
     
    <div class="formbox">
        <h3>SIGN UP </h3>
        <form id="form" method="post">
            <div>
                <a href="restaurant.jsp"><input type="button" class="mainbox" value="REGISTER AS RESTAURANT" ></a>
            </div>
            <br>
            <br>
            <div>
                <a href="customer.jsp"><input type="button" class="mainbox" value="REGISTER AS CUSTOMER" ></a>
            </div>
        </form>
    </div>
</div>
 <footer>
<a href="https://www.linkedin.com/klahori98"><i class=" fab fa-linkedin"></i></a>
  &nbsp;

  <a href="https://www.github.com/Kanishka1"><i class=" fab fa-twitter"></i></a>
  &nbsp;

  <a href="mailto:klahori98@gmail.com"><i class=" fas fa-envelope"></i></a>
  &nbsp;

  <a href="https://www.facebook.com/kanishka.lahori"><i class="fab fa-facebook-f"></i></a>
  <p id="copy">© 2020 Kanishka Lahori.</p>

      </footer>
      <script src="https://kit.fontawesome.com/f58c5089e2.js" crossorigin="anonymous"></script>
      <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js'></script>

</body>
</html>