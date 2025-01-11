<?php
 session_start();
 if($_SESSION["email"]=="")
 header("location:index.php");
?>
<?php

$Email=$_SESSION["email"];
require_once("./connectDB.php");
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
        ?>
        <form name="myForm" action="logged in.php"   method="POST">
        <div class="submit-container">
        <button name="backed">Back</button>
        </div>
        </form>