<?php
 session_start();
 if($_SESSION["email"]=="")
 header("location:index.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Document</title>
    <style>
        form{
        max-width: 600px;
        margin: 20px auto;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        background-color: #f9f9f9;
    }
    body{
            height:100vh;
            margin:0;
            font-family:Arial,sans-serif;
            text-align:center;
    }
    body{color: #000;overflow-x: hidden;height: 100%;background-repeat: no-repeat;background-size: 100% 100%}
    .card{padding: 30px 40px;margin-top: 60px;margin-bottom: 60px;border: none !important;box-shadow: 0 6px 12px 0 rgba(0,0,0,0.2)}
    .blue-text{color: #00BCD4}
    .form-control-label{margin-bottom: 0}
    input, textarea, button{padding: 8px 15px;border-radius: 5px !important;margin: 5px 0px;box-sizing: border-box;border: 1px solid #ccc;font-size: 18px !important;font-weight: 300}
    input:focus, textarea:focus{-moz-box-shadow: none !important;-webkit-box-shadow: none !important;box-shadow: none !important;border: 1px solid #00BCD4;outline-width: 0;font-weight: 400}
    .btn-block{text-transform: uppercase;font-size: 15px !important;font-weight: 400;height: 43px;cursor: pointer}
    .btn-block:hover{color: #fff !important}
    button:focus{-moz-box-shadow: none !important;-webkit-box-shadow: none !important;box-shadow: none !important;outline-width: 0}

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    th, td {
        border: 1px solid red;
        text-align: left;
        padding: 8px;
    }
    th {
        background-color: #f0f0f0;
    }
    .btn-container {
        display: flex;
        justify-content: space-between;
    }
    .btn-container button {
        padding: 5px 10px;
        cursor: pointer;
    }
    h2{
        text-align:center;
        color:blue;
        font-size:35px;
    }
    button{
        padding:10px;
        border:none;
        background-color:#007BFF;
        color:white;
        border-radius:4px;
        cursor:pointer;
        transition:background-color 0.3s ease;
        
    }
    button:hover{
        background-color:lime;
        color: red;
    }
    a.button {
  display: inline-block;
  padding: 10px 20px;
  text-decoration: none;
  background-color: #007bff; 
  color: #ffffff; /
  border-radius: 5px;
  border: 1px solid #007bff; 
  font-size: 16px;
  font-weight: bold;
  text-align: center;
  cursor: pointer;
}


a.button:hover {
  background-color: #0056b3; 
  border-color: #0056b3; 
}
a.button {
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); 
}
a.button {
  transition: all 0.3s ease;
}

a.button:hover {
  transform: scale(1.1);
  color:coral;
}
a.button {
  border-radius: 25px;
}
nav{
    text-align:right;
    margin:15px;
}
</style>
</head>
<body>
    <header>
        <navnav class="navbar bg-dark border-bottom border-body" data-bs-theme="dark">
            <a href="logged in.php" class="button" class="link"> Back</a>
            <a href="index.php" class="button" class="link"> Logout</a>
        </nav>
    </header>
<h2>Creations events</h2>
<div class="form-container">
<form id="formData" action="addEvent.php" method="POST" >
    <label for="Creator">Creator:</label>
    <label type="text"  ><?php  echo $_SESSION["email"]; ?></label><br><br>
    <label for="name">EventName:</label>
    <input type="text" id="name" name="name" required=""><br><br>
    <label for="date">Date:</label>
    <input type="date" id="date" name="date" required=""><br><br>
    <label for="time">Time:</label>
    <input type="time" id="time" name="time" required=""><br><br>
    <label for="location">Location:</label>
    <input type="text" id="location" name="location" ><br><br>
    <button type="submit" >Submit</button>
</form>
</div>
<div id="table-container"></div>
<script src="./main.js"></script>
</body>
</html>