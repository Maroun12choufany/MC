<?php
 session_start();
 if($_SESSION["email"]=="")
 header("location:index.php");
?>
<?php
$EmailError=$NumberError=$EventIDError="";
$Email=$Number=$EventID="";


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
        {$EmailError=" The email is required";
            echo $EmailError;
        }
    else
        {
            $Email=test_input($_SESSION["email"]);
           
        }
}
if($_SERVER["REQUEST_METHOD"]=="POST")
{
    if(empty($_POST["bookingnumber"]))
        $NumberError=" The number is required";
    else
        {
            $Number=test_input($_POST["bookingnumber"]);
            if(!is_numeric($Number))
            {
                $NumberError=" Only numbers allowed";
               
            }
        }
        echo $NumberError;
}
if($_SERVER["REQUEST_METHOD"]=="POST")
{
    if(empty($_POST["eventid"]))
        $EventIDError=" The last name is required";
    else
        {
            $EventID=test_input($_POST["eventid"]);
           
        }
        echo $EventIDError;
}

if(!$EmailError && !$NumberError && !$EventIDError)
    {   
        require_once("./connectDB.php");
        $sql="select * from reservation WHERE UserEmail='".$Email ."' AND EventID='".$EventID."'" ;
        $result=$conn->query($sql);
        if($result->num_rows>0)
            {$sql="UPDATE reservation SET NumberOfPeople='".$Number."' WHERE UserEmail='".$Email ."' AND EventID='".$EventID."'";
                $conn->query($sql);
            }
        else
            {$sql="INSERT INTO reservation(UserEmail,EventID,NumberOfPeople,rated) 
            VALUES ('".$Email ."','".$EventID ."','".$Number ."',0)";
            $conn->query($sql);
            }

                $sql="  SELECT av.EventID,EventName , EventLocation, EventDate, EventTime, EventCreator ,rev.NumberOfPeople
                        FROM events as av, reservation as rev, users as user 
                        where user.UserEmail=rev.UserEmail AND user.userEmail='".$Email."' AND av.EventID=rev.EventID 
                        ORDER BY EventDate, EventTime
                        " ;
                $result=$conn->query($sql);
                $details="<table border='2'>
                <tr><th> Event Name </th><th>Location</th><th>Date</th> <th>Time </th><th> Created by</th> <th>Number of people </th></tr>
                ";
                
        
                if($result->num_rows>0)
                    {
                        while ($row=$result->fetch_assoc())
                        {
                            $details.="
                            <tr> 
                            <td>" .$row["EventName"]." </td>
                            <td>" .$row["EventLocation"]." </td>
                            <td>" .$row["EventDate"]." </td>
                            <td>" .$row["EventTime"]." </td>
                            <td>" .$row["EventCreator"]." </td>
                            <td>" .$row["NumberOfPeople"]."</td>
                            </tr>
                            ";
                        }
                    }
                    echo $details;
        $conn->close();      
    }
else
    echo "error";
    ?>
     <form name="myForm" action="logged in.php"   method="POST">
        <div class="submit-container">
        <button>Back</button>
        </div>
        </form>