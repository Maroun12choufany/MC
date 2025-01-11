<?php
 session_start();
 if($_SESSION["email"]=="")
 header("location:index.php");
?>
<!Doctype html>
<html>
<head>
    <title> Update Event </title>
<style>
   
    </style>
<link rel="stylesheet" href="./addevent.css">



</head>


<body>
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

if(!$locationError && !$EventNameError && !$DateError &&!$TimeError)
    {   
        require_once("./connectDB.php");
        $sql="UPDATE events
        SET EventName='".$EventName ."' ,EventLocation= '".$location ."',EventDate='".$Date ."' ,EventTime='". $Time."'
        WHERE EventID='".$_POST["eventid"]."' ";
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