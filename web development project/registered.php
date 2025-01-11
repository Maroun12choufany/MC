<?php
/*header('Content-Type: application/json');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $json = json_decode(file_get_contents('php://input'));
   
    $FirstNameError=$LastNameError=$EmailError=$PasswordError=$CountryError=$phoneError="";
   
    $FirstName = trim($json->fname);
    $LastName = trim($json->lname);
    $Email = trim($json->email);
    $Password = trim($json->password);
    $Phone = trim($json->phone);
    $Country = trim($json->country);
    $data = []; // Proper array initialization

    if(empty($FirstName))
    $FirstNameError=" The First Name is required";
        else
    {
        $FirstName=test_input($FirstName);
        if(!preg_match("/^[a-zA-Z-' ]*$/",$FirstName))
        {
            $FirstNameError=" Only letters and white space allowed";
        }
    }
    if(empty($LastName))
        $LastNameError=" The last name is required";
    else
        {
            $LastName=test_input($LastName);
            if(!preg_match("/^[a-zA-Z-' ]*$/",$LastName))
            {
                $LastNameError=" Only letters and white space allowed";
            }
        }

    if(empty($Phone))
        $phoneError=" The phone number is required";
    else
        {
            $phone=test_input($Phone);
            if(!is_numeric($phone))
            {
                $phoneError=" Only numbers allowed";
            }
        }

    if(empty($Email))
        $EmailError=" The email is required";
    else
        {   
            $Email=test_input($Email);
            require_once("./connectDB.php");
            $sql="SELECT * FROM users where UserEmail= '$Email'";
            $result=$conn->query($sql);
            if ($result->num_rows>0)
                { $EmailError=" Please use another Email";
                       }
            $conn->close();
        }


    if(empty($Password))
        $PasswordError=" The password is required";
    else
        {
            $Password=test_input($Password);
           
        }


    if(empty($Country))
        $CountryError=" The location is required";
    else
        {
            $Country=test_input($Country);
            if(!preg_match("/^[a-zA-Z-' ]*$/",$Country))
                {
                    $CountryError=" Only letters and white space allowed";
                }
        }



if(!$FirstNameError && !$LastNameError && !$EmailError && !$PasswordError && !$CountryError && !$phoneError)
    // Database connection
    {   
        require_once("./connectDB.php");

    // Prepare and execute SQL query
    $sql = "INSERT INTO users (Country, numberOfRatedPeople, rate, UserEmail, UserfirstName, UserLastName, UserPassword, userPhone) 
            VALUES ('$Country', 0, 0, '$Email', '$FirstName', '$LastName', '$Password', '$Phone')";

    if ($conn->query($sql) == TRUE) {
        session_start();
        $_SESSION["email"] = $Email;
        $data["fname"] = $FirstName;
        $data["lname"] = $LastName;
        $data["email"] = $Email;
        $data["password"] = $Password;
        $data["phone"] = $Phone;
        $data["country"] = $Country;
        $data["message"] = "Done";
         
        $conn->close();
    } else {
        $data["message"] = "Error: " . $conn->error;
    }
       
}
    else
    {
        $data["message"]=$FirstNameError .$LastNameError .$EmailError .$PasswordError .$CountryError .$phoneError
    }

    echo json_encode($data);   // Return the data with message as JSON
    
}
function test_input($data)
{
    $data=trim($data);
    $data=stripslashes($data);
    $data=htmlspecialchars($data);
    return $data;

}
*/
$FirstNameError=$LastNameError=$EmailError=$PasswordError=$CountryError=$phoneError="";
$FirstName=$LastName=$Email=$Password=$Country=$phone="";
function test_input($data)
{
    $data=trim($data);
    $data=stripslashes($data);
    $data=htmlspecialchars($data);
    return $data;

}
if($_SERVER["REQUEST_METHOD"]=="POST")
{
    if(empty($_POST["firstname"]))
        $FirstNameError=" The First Name is required";
    else
        {
            $FirstName=test_input($_POST["firstname"]);
            if(!preg_match("/^[a-zA-Z-' ]*$/",$FirstName))
            {
                $FirstNameError=" Only letters and white space allowed";
            }
        }
}
if($_SERVER["REQUEST_METHOD"]=="POST")
{
    if(empty($_POST["lastname"]))
        $LastNameError=" The last name is required";
    else
        {
            $LastName=test_input($_POST["lastname"]);
            if(!preg_match("/^[a-zA-Z-' ]*$/",$LastName))
            {
                $LastNameError=" Only letters and white space allowed";
            }
        }
}

if($_SERVER["REQUEST_METHOD"]=="POST")
{
    if(empty($_POST["phone"]))
        $phoneError=" The phone number is required";
    else
        {
            $phone=test_input($_POST["phone"]);
            if(!is_numeric($phone))
            {
                $phoneError=" Only numbers allowed";
            }
        }
}
if($_SERVER["REQUEST_METHOD"]=="POST")
    {
        if(empty($_POST["email"]))
            $EmailError=" The email is required";
        else
            {   
                $Email=test_input($_POST["email"]);
                require_once("./connectDB.php");
                $sql="SELECT * FROM users where UserEmail= '$Email'";
                $result=$conn->query($sql);
                if ($result->num_rows>0)
                    { $EmailError=" Please use another Email";
                        echo $EmailError;    }
                
            }

    }
    if($_SERVER["REQUEST_METHOD"]=="POST")
    {
        if(empty($_POST["password"]))
            $PasswordError=" The password is required";
        else
            {
                $Password=test_input($_POST["password"]);
               
            }

    }
    if($_SERVER["REQUEST_METHOD"]=="POST")
    {
        if(empty($_POST["country"]))
            $CountryError=" The location is required";
        else
            {
                $Country=test_input($_POST["country"]);
                if(!preg_match("/^[a-zA-Z-' ]*$/",$Country))
                    {
                        $CountryError=" Only letters and white space allowed";
                    }
            }

    }
if(!$FirstNameError && !$LastNameError && !$EmailError && !$PasswordError && !$CountryError && !$phoneError)
    {   
        require_once("./connectDB.php");
        $sql="Insert INTO users(UserfirstName,UserLastName,UserEmail,UserPassword,Country,userPhone,rate,numberOfRatedPeople) 
        VALUES ('".$FirstName ."','".$LastName ."','".$Email ."','".$Password ."','". $Country."','". $phone."',0,0)";
        if($conn->query($sql)==TRUE)
               {session_start();
                $_SESSION["email"]=$Email;
                $conn->close();
                
                header('location: login.php');
               }
        $conn->close();
    }
else
    echo $FirstNameError .$LastNameError .$EmailError.$PasswordError.$CountryError.$phoneError;


?>