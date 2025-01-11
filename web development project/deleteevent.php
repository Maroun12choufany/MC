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
$EventIdError="";
$EventId="";

function test_input($data)
{
    $data=trim($data);
    $data=stripslashes($data);
    $data=htmlspecialchars($data);
    return $data;

}
if($_SERVER["REQUEST_METHOD"]=="POST")
{
    if(empty($_SESSION["eventid"]))
        $EventId=" The creator is required";
    else
        {
            $EventIdError=test_input($_SESSION["eventid"]);
            
        }
}




if(!$EventIdError)
    {   
        require_once("./connectDB.php");
        $sql="DELETE FROM events
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