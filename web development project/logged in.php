<?php
 session_start();
 if($_SESSION["email"]=="")
 header("location:index.php");
 $Email=$_SESSION["email"];
$details="";

if(($_SERVER["REQUEST_METHOD"]=="POST") && isset($_POST['rate']))
{               
                require_once("./connectDB.php");
                $sql="select rated,NumberOfPeople from reservation WHERE UserEmail='".$Email."' AND EventID='".$_POST["eventid"]."' ";
                $result=$conn->query($sql);
                $row=$result->fetch_assoc();
                echo $result->num_rows;
                
                if(!$row["rated"])
                {$sql="  UPDATE users SET rate=rate+'".(int)$_POST["rates"]."'*'".(int)$row["NumberOfPeople"]."',numberOfRatedPeople='".(int)$row["NumberOfPeople"]."' WHERE UserEmail='".$_POST["creator"]."' " ;
                $result=$conn->query($sql);
                $sql="  UPDATE reservation SET rated=1 WHERE UserEmail='".$Email."' AND EventID='".$_POST["eventid"]."' " ;
                $result=$conn->query($sql);
                }
                $details="<table border='2'>
                <tr><th> Event Name </th><th>Location</th><th>Date</th> <th>Time </th><th> Created by</th> <th>Number of people </th></tr>";
                $sql="  SELECT av.EventID,EventName,rated , EventLocation, EventDate, EventTime, EventCreator ,rev.NumberOfPeople
                FROM events as av, reservation as rev, users as user 
                where user.UserEmail=rev.UserEmail AND user.userEmail='".$Email."' AND av.EventID=rev.EventID 
                ORDER BY EventDate, EventTime";
                $result=$conn->query($sql);   
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
                            <td>" .$row["NumberOfPeople"]."</td>";
                            if($row["EventDate"]>date("Y-m-d") ||($row["EventDate"]==date("Y-m-d") && $row["EventTime"]>Time()))
                                        {}
                                    else
                                        if(!$row["rated"])
                                            $details.="<td> 
                                    <form action='logged in.php' method='POST'>
                                    <input hidden name='creator' id='creator' value='".$row["EventCreator"]."'>
                                    <input hidden name='eventid' id='eventid' value='".$row["EventID"]."'>
                                    <label>Rate from 1 to 10: </label> 
                                    <input type='text' name='rates' id='rates'>
                                    <button name='rate' >Send</button> 
                                    </form></td>";    
                            $details.="</tr>";
                        }
                    }
 $conn->close();
}



if(($_SERVER["REQUEST_METHOD"]=="POST") && isset($_POST['myevents']))
        {   
            require_once("./connectDB.php");
            $sql="  SELECT distinct rev.EventID ,EventName , EventLocation, EventDate, EventTime, EventCreator , SUM(rev.NumberOfPeople) OVER (PARTITION BY rev.EventID) as totalnumber
                                FROM reservation as rev 
                                RIGHT JOIN events as av
                                ON  av.EventID=rev.EventID
                                WHERE av.EventCreator='".$Email."'
                                ORDER BY EventDate, EventTime" ;
            $result=$conn->query($sql);
            $details="<table border='2'>
                        <tr><th> Event Name </th><th>Location</th><th>Date</th> <th>Time </th><th>Number of people </th></tr>
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
                                    <td>" .$row["totalnumber"]."</td></tr>";
                                }
                            }
            $conn->close();                  
        }

if(($_SERVER["REQUEST_METHOD"]=="POST") && isset($_POST['myreservations']))
{
    

require_once("./connectDB.php");
$sql="  SELECT av.EventID,EventName ,rated, EventLocation, EventDate, EventTime, EventCreator ,rev.NumberOfPeople
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
                            <td>" .$row["NumberOfPeople"]."</td>";
                            if($row["EventDate"]>date("Y-m-d") ||($row["EventDate"]==date("Y-m-d") && $row["EventTime"]>Time()))
                                        {}
                                    else
                                        if(!$row["rated"])
                                        $details.="<td> 
                                    <form action='logged in.php' method='POST'>
                                    <input hidden name='creator' id='creator' value='".$row["EventCreator"]."'>
                                    <input hidden name='eventid' id='eventid' value='".$row["EventID"]."'>
                                    <label>Rate from 1 to 10: </label> 
                                    <input type='text' name='rates' id='rates'>
                                    <button name='rate' >Send</button> 
                                    </form></td>";     
                            $details.="</tr>";
                        }
                    }
 $conn->close();
}


    ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            font-family: Arial, sans-serif;
            background:repeating-radial-gradient(circle,black,gray 100%);
            margin: 0;
            padding: 0;
            color: red;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        table{
            margin: auto;
            
         
        }
        th,td{
            border: 2px solid;
            color: white;
        }
        
        .links {
            text-align: center;
        }
        .links a {
            display: inline-block;
            text-decoration: none;
            color: #333;
            font-size: 38px;
            padding: 15px 30px;
            margin: 10px;
            border-radius: 8px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, background-color 0.3s ease, color 0.3s ease;
            position: relative;
            overflow: hidden;
        }
        .links a::before {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 300%;
            height: 300%;
            background-color: rgba(255, 255, 255, 0.2);
            transition: transform 0.6s ease;
            transform: translate(-50%, -50%) rotate(45deg);
            z-index: 0;
        }
        .links a:hover::before {
            transform: translate(-50%, -50%) rotate(405deg);
        }
        .links a span {
            position: relative;
            z-index: 1;
        }
        .links a:hover {
            background-color: #0056b3; 
            border-color: #0056b3; 
           
            color: coral;
            transform: translateY(-5px);
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
  background-color: #0056b3; 
  border-color: #0056b3; 
}
a.button {
  border-radius: 25px;
}

    </style>
</head>
<body>
<nav class="navbar bg-dark border-bottom border-body" data-bs-theme="dark">
  <!-- Navbar content -->
 
 <form action="logged in.php" method="POST">
    <button name="myevents"> My events</button>
 </form>
    
    <a href="Events.php" class="navbar-toggler" type="button"  aria-expanded="false" aria-label="Toggle navigation">
     Create new Event
</a>
    <a href="authenticate.php" class="navbar-toggler" type="button"  aria-expanded="false" aria-label="Toggle navigation">
     Make a new reservation
</a>
   
<form action="logged in.php" method="POST">
    <button name="myreservations"> My Reservations</button>
 </form>
      <a href="index.php" class="button" class="link"> Logout</a>
</nav>
    <div class="links">
   <p> Welcome <?php echo $_SESSION["email"]; echo $details; ?> </p>
    </div>
</body>
</html>

  