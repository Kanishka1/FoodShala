<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>FoodShala</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"href="css/index.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">   
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<style>
        .card{
        width: 300px;height:360px;margin:50px;background:rgb(34,43,49,0.7);color:white;
    }
    
    h1{
        color: white; text-align: center; font-family: 'Poppins', sans-serif;font-weight: bold;
    }
    p{
         color: white; text-align: center; font-family: 'Poppins', sans-serif;
    }
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="index.jsp">FoodShala🥗🍕</a>
     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
       
        <li class="nav-item">
            <a class="nav-link active" href="index.jsp">Home</a>
        </li>
        
        <li class="nav-item">
            <a class="nav-link" href="menu.jsp">Menu</a>
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
    <div class="row">
        <div class="col-lg-4">
<div class="card">
    <div class="card-header">
        <h1>LOGIN/SIGNUP</h1>
  </div>
  <img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSm4nOushy9OPctpgrSe4dallOPq_HimUEz09EmcYvG09I70gcV&usqp=CAU" alt="Card image cap">
  <div class="card-body">
    <p>Login to avail the services of various restaurants and order delicious food items.  </p>
  <a href="login.jsp" class="btn btn-secondary " style="margin-top:20px;margin-left:80px;">LOGIN</a>
   
  </div>
</div>
</div>
<div class="col-lg-4">

<div class="card" >
    <div class="card-header">
        <h1>CHOOSE THE FOOD YOU LOVE</h1>
  </div>
  <img class="card-img-top" src="images/card1.jpg" alt="Card image cap">
  <div class="card-body">
    <p>Glance through the mouth watering dishes available at reasonable prices everyday </p>
  <a href="menu.jsp" class="btn btn-secondary" style="margin-top:20px;margin-left: 50px;">VIEW MENU ITEMS</a>
  </div>
</div>
</div>


<div class="col-lg-4">
<div class="card">
    <div class="card-header">
        <h1>PLACE ORDER</h1>
  </div>
  <img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ61lSk4rCL0pTjtKJEV0BmBw7K1Pk3injlD6AEtRbB5b5iOHUQ&usqp=CAU" alt="Card image cap">
  <div class="card-body">
      <p>Choose the food you love, place order and there you go ! <br> Enjoy eating  🍕🍔🍟</p>
  <a href="login.jsp" class="btn btn-secondary" style="margin-top:20px;margin-left: 50px;">PLACE ORDER</a>
  </div>
</div>
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
  <p id="copy" style="color:white;">© 2020 Kanishka Lahori.</p>

      </footer>
    </body>
      <script src="https://kit.fontawesome.com/f58c5089e2.js" crossorigin="anonymous"></script>
      <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js'></script>

</html>