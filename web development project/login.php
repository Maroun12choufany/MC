
<?php
session_start();
if(isset($_SESSION["email"]))
{
    $emailregistered=$_SESSION["email"];
    
}
else
    $emailregistered="Anonymous";
    
?>
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
            height:100vh;
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
a.button {
  display: inline-block;
  padding: 10px 20px;
  text-decoration: none;
  background-color: #007bff; 
  color: lime; 
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
}
a.button {
  border-radius: 25px
}

    </style>
</head>
<body>
    <h1> Welcome <?php echo $emailregistered; ?>
    <h1> Login</h1>
    <div class="form-container">
    <form name="myForm" action="login.php"   method="POST">
        <label> E-mail</label>
        <input class ="input-field" type="email" id="email" name="email"  placeholder="Email" required><br>
        
        <label>Password</label>
    <input class="input-field" type="password" id="password" name="password" placeholder="Password" required><br>
    <div class="submit-container">
    <button name="loggedin">Login</button>
    </div>
<p>D'ont have an account?
     <a href ="register.php" class="button"> Register Here</a>
<p id="message"></p>
    </form>
</div>
    
</body>
</html>

<?php

$EmailError=$PasswordError="";
$Email=$Password="";
$EmailProved=$passwordProved=false;
function test_input($data)
{
    $data=trim($data);
    $data=stripslashes($data);
    $data=htmlspecialchars($data);
    return $data;

}
if(($_SERVER["REQUEST_METHOD"]=="POST") && isset($_POST['loggedin']))
{
    if(empty($_POST["email"]))
        $EmailError=" The Email is required";
    else
        {
            $Email=test_input($_POST["email"]);
            
        }
}

if(($_SERVER["REQUEST_METHOD"]=="POST") && isset($_POST['loggedin']))
    {
        if(empty($_POST["password"]))
            $PasswordError=" The password is required";
        else
            {
                $Password=test_input($_POST["password"]);
                
            }

    }
if(($PasswordError || $EmailError))
    {  
      header('location:login.php');
    }
else 
        {
        require_once("./connectDB.php");
        $sql="SELECT * FROM users  ";
        $result=$conn->query($sql);
        if($result->num_rows>0)
            {
            while ($row=$result->fetch_assoc())
                {
                  
                        if(strtolower($row["UserEmail"])==strtolower($Email) )
                        {
                            $EmailProved=true;
                            if( $row["UserPassword"]==$Password )
                                    $passwordProved=true;
                        }
                }
            if((!$EmailProved || !$passwordProved)&& isset($_POST['loggedin']))
                  header('location:login.php');
            else
            {   if($Email!="")
                {$_SESSION["email"]=$Email;
                header('location:logged in.php');
                }
            }
            }
            
        }

?>