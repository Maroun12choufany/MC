<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="Public/css/Styles.css">
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
                <input type="text" id="Name" name="Name" class="form-control"><span class="Error" >*<?php 
               if($_SERVER["REQUEST_METHOD"] == "POST"){
                if(empty($_POST["Name"])){
                    echo $NameErr="Name is Required"; }

               }
               ?></span>

            </div>
            <div class="form-group">
                <label for="email">E_mail:</label>
                <input type="text" id="Email" name="Email" class="form-control"><span class="Error">*<?php if($_SERVER["REQUEST_METHOD"] == "POST"){
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
  
    if($_POST["Name"] && $_POST["Email"]){
        $Name = test_input($_POST["Name"]);
        $Email = test_input($_POST["Email"]);
        echo "Hello $Name, Your Email Address is $Email.<br>";
        
    }
}
?>