<?php
 session_start();
 if($_SESSION["email"]=="")
 header("location:index.php");
?>
<p> Welcome to our Event Management System</p>
    <h1> Your events </h1>
    <?php
        require_once("./connectDB.php");
        $sql="SELECT av.EventID,EventName , EventLocation, EventDate, EventTime, EventCreator FROM events as av, reservation as rev where  ";
        $result=$conn->query($sql);
        $details="<table border='2'>
        <tr><th> Event Name </th><th>Location</th><th>Date</th> <th>Time </th><th> Created by</th></tr>
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
                    </tr>
                    ";
                }
            }
        $conn->close();
      
       

    ?>
     <form name="myForm" action="logged in.php"   method="POST">
        <div class="submit-container">
        <button>Back</button>
        </div>
        </form>