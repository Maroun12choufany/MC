<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <title>Document</title>
    <style>
        body{
            background-image:url('./assets/img/img8.jpg');
            background-size:cover;
            background-repeat:no-repeat;
            background-position:center;
            height:500px;
            font-family:Arial, sans-serif;
        }
      .form-container{
        display:flex;
        justify-content:center;
        align-items:center;
       
        
      }
    form{
        border:1px solid  black;
        border-radius:2px;
        background-color:grey;
        width:450px;
       font-size:50px;
        
    }
    * {
        margin:0;
        padding:0;
        box-sizing:border-box;
    }
    .input-field{
        text-align:center;
        width:440px;
        font-size:30px;
    }
    h1{
        text-align:center;
        color:lime;
        font-size:50px;
        
       
    }
    .submit-container{
        
        text-align:center;
        margin-top:20px;
    }
    a{
        font-size:20px;
        color:lime;
    }
    p{
        font-size:20px;
    }
    label{
        font-size:20px;
        color:lime;
    }
    button {
        text-align:center;
    background-color: black;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 10px;
    cursor: pointer;
    font-size: 1rem;
}
button:hover {
    background-color:red;
}
      
    </style>
</head>
<body>
    <h1> Login</h1>
    <div class="form-container">
    <form name="myForm" action="authenticate.php"  onsubmit="return validateForm()" method="POST">
        <label> E-mail</label>
        <input class ="input-field" type="email" id="email"  placeholder="Email"><br>
        <label> Name</label>
         <input class ="input-field" type="name" id="name" placeholder="Name"><br>
    <div class="password-container">
        <label>Password</label>
    <input class="input-field" type="password" id="password" placeholder="Password"><br>
    <div class="submit-container">
   
    <button>Login</button>
</div>
    </div>
<p>D'ont have an account? <a href ="register.php"> Register here</a>
<p id="message"></p>

    </form>
</div>
    
     <script src="./main.js"></script>
</body>
</html>