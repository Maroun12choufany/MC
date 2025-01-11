<?php
 session_start();
 if($_SESSION["email"]=="")
 header("location:index.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Document</title>
    <style>
        p{
            font-size:20px;
            text-align:center
        }
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            padding:0px;
        }
        .event {
            margin-bottom: 20px;
            border: 1px solid #ccc;
            padding: 10px;
            border-radius: 5px;
            background:linear-gradient(to right , orangered,red);
         
           
        }
        .event h2 {
            margin-top: 0;
        }
        .event p {
            margin-bottom: 5px;
        }
    button{

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
  margin: auto;
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
}
a.button {
  border-radius: 25px;
}

    </style>
</head>
<body>
<nav class="navbar bg-dark border-bottom border-body" data-bs-theme="dark">
  
  <a href="logged in.php" class="button" class="link"> Back</a>
 
    <form class="d-flex" role="search" method="POST" action="authenticate.php">
        <input class="form-control me-2" name="search" id="search" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>  
      <a href="index.php" class="button" class="link"> Logout</a>
</nav>

    <p> Welcome <?php echo $_SESSION["email"]; ?> to our Event Management System</p>
    <h1> Our events </h1>
   
    <?php
    $search = "";
    if (isset($_GET['search'])) {
        $search = $_GET['search'];
    }
    $details2="<div class='container text-center'>  <div class='row row-cols-3'>";
        require_once("./connectDB.php");
        
       $sql="SELECT * FROM events WHERE EventLocation LIKE '%$search%' ORDER BY EventDate, EventTime ";
        $result=$conn->query($sql);
        if($result->num_rows>0)
            {
                while ($row=$result->fetch_assoc())
                { if ($row["EventDate"]>date("Y-m-d") ||($row["EventDate"]==date("Y-m-d") && $row["EventTime"]>Time()))
                    {
                        $details2.="
                        <div class='col event'>
                        <h2>" .$row["EventName"]." </h2>
                        <p><strong>Date:</strong> " .$row["EventDate"]."</p>
                        <p><strong>Time:</strong> " .$row["EventTime"]."</p>
                        <p><strong>Location:</strong> " .$row["EventLocation"]."</p>
                        <p><strong>Created by:</strong> " .$row["EventCreator"]."</p>";
                        $sql2="select rate,numberOfRatedPeople from users where userEmail='".$row["EventCreator"]."' ";
                        $result2=$conn->query($sql2);
                        $row2=$result2->fetch_assoc();
                        if($row2["rate"]>0)
                          $ratio=$row2["rate"]/$row2["numberOfRatedPeople"];
                        else
                          $ratio=0;
                        $details2.="<p><strong>Rated:</strong> " .$ratio."</p>
                        <p> For RSVP:</p>
                        <form  name='rsvpForm' action='reserved.php'   method='POST'> 
                        <input hidden class ='input-field' type='name' id='eventid' name='eventid'   value=".$row["EventID"].">
                        <p>
                        <input type='number' name='bookingnumber' id='bookingnumber' class='form-control' placeholder='Number of People'>
                        </p>
                        <div >
                        <button>Send</button></form>";

                        if($row["EventCreator"]==$_SESSION["email"])
                        {
                            $details2.="
                              <form  name='rsvpForm' action='EventsEdit.php'   method='POST'>
                             <input hidden class ='input-field' type='name' id='eventid' name='eventid'   value=".$row["EventID"].">
                             <button >Edit</button> 
                             </form>
                             <form  name='rsvpForm' action='deleteevent.php'   method='POST'>
                             <input hidden class ='input-field' type='name' id='eventid' name='eventid'   value=".$row["EventID"].">
                             <button >Delete</button></form>";
                        }
                        $details2.="</div></div>";
                    }
                }
                $details2.=" </div></div>";
            
            }
            echo $details2;
           
            $conn->close();
    ?>
    
    <script src="./main.js"></script>
</div>
</body>
</html>

