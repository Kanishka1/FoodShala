<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>FoodShala</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"href="css/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">   
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<style>
    .formbox{
        height:680px;
    }
    footer{
        height:60px;
       
    }
    .fullcontent{
        padding-top:0px;
    }
    h2{
        text-align: center;
        color:limegreen;
        font-weight: bold;
        font-family: 'Anton', sans-serif;
        font-size: 20px;
    }
</style>
  
</head>
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
            <a class="nav-link active" href="register.jsp">Sign Up</a>
        </li>
    </ul>
 </div>
</nav>
      <h2>SIGN UP</h2><br>
      <h1 style="color: white; text-align: center; font-family: 'Poppins', sans-serif;    
          ">Password must contain one uppercase letter,one lowercase letter, a number , a special character and minimum 6 characters
      </h1><br>
  <div class="fullcontent">

    <div class="formbox">
  
        <form id="form"  action="restaurant" method="post">
            <label for="">NAME</label>
           <input type="text" placeholder="Enter Restaurant Name" name="name"class="asd" 
                  onkeypress="return(event.charCode> 64 && event.charCode < 91)
                ||
                (event.charCode>96 && event.charCode <123)" required>
            
            <label for="">ADDRESS:</label>
             <input type="text" placeholder="Enter Restaurant address" name="address" class="asd" required/>
            <label for="">EMAIL</label>
            <input type="email" placeholder="Enter Restaurant email" name="email" class="asd" required/>
            <label for="">CONTACT</label>
            <input type="number" placeholder="Enter Contact Number" minlength="10" maxlength="10" name="mob" class="asd" required/>
            <label for="">SPECIALITY</label>
            <input type="text" placeholder="Enter Restaurant's Speciality " name="spec"  class="asd" required/>
            <label for="">PASSWORD</label>
            <input type="password" placeholder="Enter Password" name="pass" id="pass"  pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" class="asd" required/>
            <label for="">CONFIRM PASSWORD</label>
            <input type="password" placeholder="Confirm Password" name="cpass" id="cpass"   pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" onkeyup="check()" class="asd" required/>
            <span id='message'></span><br>
            
            
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
<script>
   function check() {
  if (document.getElementById('pass').value ===
    document.getElementById('cpass').value) {
    document.getElementById('message').style.color = 'white';
    document.getElementById('message').innerHTML = 'PASSWORDS MATCH';
  } else {
    document.getElementById('message').style.color = 'red';
    document.getElementById('message').innerHTML = 'PASSWORD VALUES DO NOT MATCH';
  }
};

</script>
</body>
</html>