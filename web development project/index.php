<?php
session_start();
session_unset();
session_destroy();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Document</title>
    <style>
     body{
            background-image:url('./assets/img/img3.jpg');
            background-size:cover;
            background-repeat:no-repeat;
            background-position:center;
            height:100vh;
            margin:0;
            font-family:Arial,sans-serif;
            color:white;
            text-align:center;
          
        }
        header h1{
            margin:0;
        }
       h1{
        text-align:center;
        color:red;
        font-weight:bold;
        font-size:60px;
       }
       nav{
        background-color:#333;
       }
       
        nav ul{
            display:flex;
            justify-content:center;
            list-style-type:none ;
            margin:0;
            padding:0;
        }
        nav ul li{
           
            margin: 0 20px;
            
        }
        nav ul li a{
            font-size:30px;
            text-decoration:none;
            color:grey;
            padding:10px;
            position:relative;
            display:inline-block;
           
        }
       
        main{
            padding:20px;
        }
        .container{
            position:absolute;
            text-align:center;
            justify-content:center;
            font-size:25px;

        }

li a:hover{
    color:coral;
}
.bottom{
    cursor:pointer;
    position:absolute;
    bottom:30px;
    color:#fff;
    left:450px;
    font-size:20px;
    text-align:center;
}
    .link {
      color: #007bff; 
      text-decoration: none;
      font-weight: bold;
      border:5px solid black;
      border-radius:10px;
      background-color:white;
      font-size:20px;
      cursor: pointer;
    transition: background-color 0.3s ease;
    }
    .link:hover {
      text-decoration: none;
      background-color:#f0f0f0;
    }
    .text-overlay {
   position: absolute;
   opacity: 70%;
   top: 72%;
   left: 50%;
   transform: translate(-50%, -50%);
   background-color: red; 
   padding: 20px;
   text-align: center;
   color:white;
}
.text-overlay p {
    font-size: 1.2rem;
}
nav ul li a::after{
    content: '';
    position:absolute;
    width:0;
    height:2px;
    display:block;
    background:#fff;
    margin-top:5px;
    right:0;
    transition: width 0.4s ease-in-out;
    -webkit-transition:width 0.4s ease-in-out;
}
nav ul li a:hover::after{
    width:100%;
    left:0;
    background:#fff;
}


    </style>
</head>
   <body>
   <header>
  
    <nav>
        <ul>
<li>
    <a href="Services.php"><i class="bi bi-gear"></i> Services</a>
</li>

<li>
    <a href="pictures.php"><i class="bi bi-gear"></i> Pictures</a>
</li>
<li><a href="login.php" class="link" class="login-form">Login</a></li>
        </ul>
        </nav>
    </header>
    <main>
        <div class="card" id="welcomeCard">
        <h1 class="header">Welcome to Our Website</h1>
            <p class="description"></p>
</div>

<div class="text-overlay">
<p>Welcome to the ultimate event management system designed to transform your event planning experience! Whether you're organizing a corporate conference, a dazzling wedding, a lively birthday bash, or any special occasion in between, our platform is here to simplify every step of the journey. From seamless guest list management to breathtaking venue selection, from intricate budget tracking to exquisite catering arrangements, our comprehensive tools and expert guidance ensure that your event unfolds with precision and panache. Embrace innovation, elevate your creativity, and enjoy unparalleled convenience with our state-of-the-art event management system. Let's make your next event unforgettable together!</p>
</div>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>

