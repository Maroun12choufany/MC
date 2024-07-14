<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=, initial-scale=1.0">
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
        header{
            text-align: center;
            background-color:#f0f0f0;
            padding:20px;

        }
        header h1{
          
            margin:0;

        }
       h1{
        text-align:center;
       }
      
        nav ul{
            list-style-type:none ;
            margin:0;
            padding:0;
        }
        nav ul li{
            display:inline;
            margin-right:20px;
            
        }
        nav ul li a{
            color:grey;
            text-decoration:none;
            margin-right:70px;
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
.btn-primary{
    background-color:#ffffff3f;
    backdrop-filter:blur(10px);
    border-radius:5px;
    padding:10px 20px;
    border:1px solid #727272;
    transition:all 0.3s;
    width:350px;
}
.btn-primary:hover{
    background-color:#ffffff29;
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
    <a href="Tickets.php"><i class="bi bi-info"></i>Post events</a>
</li>
<li>
    <a href="pictures.php"><i class="bi bi-gear"></i> Pictures</a>
</li>
        </ul>
        </nav>
    </header>
    <main>
        <div class="card" id="welcomeCard">
            <h1 class="header"> Welcome To our web</h1>
            <p class="description"></p>
</div>
<div class="container">
<p>Welcome to the ultimate event management system designed to transform your event planning experience! Whether you're organizing a corporate conference, a dazzling wedding, a lively birthday bash, or any special occasion in between, our platform is here to simplify every step of the journey. From seamless guest list management to breathtaking venue selection, from intricate budget tracking to exquisite catering arrangements, our comprehensive tools and expert guidance ensure that your event unfolds with precision and panache. Embrace innovation, elevate your creativity, and enjoy unparalleled convenience with our state-of-the-art event management system. Let's make your next event unforgettable together!</p>
</div>
<div class="btn-container">
<button class="btn-primary bottom" id="exploreButton"> <a href="login.php">Explore more</button></a>
</div>
    </main>
</body>
</html>

