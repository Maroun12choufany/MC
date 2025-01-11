<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="Public/css/Styles.css">
    <style>
        /* General Styles */
body {
    font-family: 'Arial', sans-serif;
    background-color: #f0f0f0;
    color: #333;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    text-align: center;
}


/* Container for centering content */
.container {
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    padding: 40px;
    width: 300px;
    max-width: 100%;
}

/* Heading Styles */
h1 {
    color: #ff4500;
    font-size: 24px;
    margin-bottom: 20px;
}

/* Form Styles */
.form {
    display: flex;
    flex-direction: column;
}

/* Form Group Styles */
.form-group {
    margin-bottom: 15px;
    text-align: left;
}

/* Label Styles */
label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
    
}

/* Input Styles */
.form-control {
    width: 100%;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 40px;
    font-size: 16px;
    box-shadow: 1px, 2px, 5px gray;
}

/* Button Styles */
.btn {
    background-color: #ff4500;
    color: #fff;
    border: none;
    padding: 10px;
    border-radius: 40px;
    cursor: pointer;
    font-size: 16px;
    transition: background-color 0.3s;
}

.btn:hover {
    background-color: #e03e00;
}
.Req{
    color: red;
    display: none;
}
    </style>
</head>
<body>
    <?php
    $NameErr = $EmailErr = "";
    $Name = $Email = "";?>
    <div class="container">
        <h1>Hello MUC Students</h1>
        <form  action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="POST" class="form">
            <div class="form-group">
                <label for="Name">Name:</label>
                <input type="text" id="Name" name="Name" class="form-control"><span class="error">*<?php 
               if($_SERVER["REQUEST_METHOD"] == "POST"){
                if(empty($_POST["Name"])){
                    echo $NameErr="Name is Required"; }

               }
               ?></span>
            </div>
            <div class="form-group">
                <label for="email">E_mail:</label>
                <input type="text" id="Email" name="Email" class="form-control"><span class="error">*<?php if($_SERVER["REQUEST_METHOD"] == "POST"){
                if(empty($_POST["Email"])){
                    echo $EmailErr="Email is Required"; }

               }?></span>

            </div>
             <!--<div class="form-group">
                 <label for="Password">Password:</label>
                 <input type="password" id="Password" name="Password" class="form-control"><span class="Req" id="ReqPass">Password is definitley Required</span>

            </div>-->
            <input type="submit" id="Validate" value="Validation Form" class="btn">

            <div id="Details"></div>
        </form>
       <?php
function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  
    if($_POST["Name"] && empty($_POST["Email"])){
        $Name = test_input($_POST["Name"]);
        echo "Hello $Name, $EmailErr.<br>";
        
    }elseif(empty($_POST["Name"]) && $_POST["Email"]){
        echo "$NameErr, but your Email is Accepted $Email.<br>";

    }else{
        $Name = test_input($_POST["Name"]);
        $Email = test_input($_POST["Email"]);
        echo "Hello $Name, Your Email is $Email<br>";
    }
}
?>
    </div>
   <script src="Public/css/Styles.css"></script>
</body>
</html>
