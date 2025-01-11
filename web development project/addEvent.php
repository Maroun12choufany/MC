<?php
 session_start();
 if($_SESSION["email"]=="")
 header("location:index.php");
?>
<!Doctype html>
<html>
<head>
    <title> Add Event </title>
<style>
    table{
        background: blue;
        color: white;
    }
    </style>
<link rel="stylesheet" href="./addevent.css">



</head>


<body>
<nav class="navbar bg-dark border-bottom border-body" data-bs-theme="dark">
  <!-- Navbar content -->
 
  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
   
      <a href="index.php" class="button" class="link"> Logout</a>
</nav>

<?php
$CreatorError=$EventNameError=$locationError=$DateError=$TimeError="";
$Creator=$EventName=$location=$Date=$Time="";

function test_input($data)
{
    $data=trim($data);
    $data=stripslashes($data);
    $data=htmlspecialchars($data);
    return $data;

}
if($_SERVER["REQUEST_METHOD"]=="POST")
{
    if(empty($_SESSION["email"]))
        $CreatorError=" The creator is required";
    else
        {
            $Creator=test_input($_SESSION["email"]);
            
        }
}
if($_SERVER["REQUEST_METHOD"]=="POST")
{
    if(empty($_POST["name"]))
        $EventNameError=" The name is required";
    else
        {
            $EventName=test_input($_POST["name"]);
            if(!preg_match("/^[a-zA-Z-' ]*$/",$EventName))
            {
                $EventNameError=" Only letters and white space allowed";
            }
        }
}
if($_SERVER["REQUEST_METHOD"]=="POST")
    {
        if(empty($_POST["location"]))
            $locationError=" The location is required";
        else
            {
                $location=test_input($_POST["location"]);
                if(!preg_match("/^[a-zA-Z-' ]*$/",$location))
                    {
                        $locationError=" Only letters and white space allowed";
                    }
            }
        }
if($_SERVER["REQUEST_METHOD"]=="POST")
            {
                if(empty($_POST["date"]))
                    $DateError=" The date is required";
                else
                    {
                        $Date=test_input($_POST["date"]);
                       
                    }

    }
    if($_SERVER["REQUEST_METHOD"]=="POST")
    {
        if(empty($_POST["time"]))
            $TimeError=" The time is required";
        else
            {
                $Time=test_input($_POST["time"]);
               
            }

}
echo "<table border='2px'>
<tr><th>Inputs values</th><th>Errors</th></tr>
<tr><td> $EventName </td><td>$EventNameError </td></tr>
<tr><td> $location </td><td>$locationError </td></tr>
<tr><td> $Date </td><td>$DateError </td></tr>
<tr><td> $Time </td><td>$TimeError </td></tr>
<tr><td colspan='2'> $Creator </td></tr>
</table>";
if(!$locationError && !$EventNameError && !$DateError &&!$TimeError)
    {   
        require_once("./connectDB.php");
        $sql="Insert INTO events(EventName,EventLocation,EventDate,EventTime,EventCreator) 
        VALUES ('".$EventName ."','".$location ."','".$Date ."','". $Time."','". $Creator."')";
        if($conn->query($sql)==TRUE)
            {
                echo "Done";
                              
            }
        $conn->close();    
        }
?>
 <form name="myForm" action="logged in.php"   method="POST">
        <div class="submit-container">
        <button>Back</button>
        </div>
        </form>
</html>
    </body>