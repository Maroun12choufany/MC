<?php

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
    <title>Event Management</title>
    <style>
                form{
             position: absolute;
             margin:5px;
             left: 40%;
             top:70px;
              background: gray;
              opacity: 60%;
              display: block;
              
    }
        .input-field{
            text-align:center;
            font-size:20px;
             margin:10px;
        }
        body{
            font-family:Arial, sans-serif;
            display:flex;
            justify-content:center;
            align-items:center;
            background-image: url("./assets/img/img2.jpg");
            
        }
       
        .form-reg{
            display:flex;
           justify-content:center;
           text-align:center;
           font-size: 3rem;
         
        }
        form label {
            text-align:center;
        display: block;
        margin-bottom: 5px;
         color: red;
         font-size:20px;
}
select{
    font-size:22px;
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
    background-color:grey;
}
p{
    font-size:15px;
}
nav{
        background-color:#333;
       }
       
        nav ul{
            display:flex;
            justify-content:center;
            list-style-type:none ;
            margin:0;
            padding:0;
        }
        nav ul li{
           
            margin: 0 20px;
            
        }
        nav ul li a{
            font-size:30px;
            text-decoration:none;
            color:grey;
            padding:10px;
            position:relative;
            display:inline-block;
           
        }
       
        main{
            padding:20px;
        }
        .container{
            position:absolute;
            text-align:center;
            justify-content:center;
            font-size:25px;

        }

li a:hover{
    color:coral;
}
.bottom{
    cursor:pointer;
    position:absolute;
    bottom:30px;
    color:#fff;
    left:450px;
    font-size:20px;
    text-align:center;
}
    .link {
      color: #007bff; 
      text-decoration: none;
      font-weight: bold;
      border:5px solid black;
      border-radius:10px;
      background-color:white;
      font-size:20px;
      cursor: pointer;
    transition: background-color 0.3s ease;
    }
    .link:hover {
      text-decoration: none;
      background-color:#f0f0f0;
    }
    .text-overlay {
   position: absolute;
   opacity: 70%;
   top: 60%;
   left: 50%;
   transform: translate(-50%, -50%);
   background-color: red; 
   padding: 20px;
   text-align: center;
   color:white;
}
.text-overlay p {
    font-size: 1.2rem;
}
nav ul li a::after{
    content: '';
    position:absolute;
    width:0;
    height:2px;
    display:block;
    background:#fff;
    margin-top:5px;
    right:0;
    transition: width 0.4s ease-in-out;
    -webkit-transition:width 0.4s ease-in-out;
}
nav ul li a:hover::after{
    width:100%;
    left:0;
    background:#fff;
}

</style>
</head>

<body>
<header>
<nav>
        <ul>
<li>
    <a href="Services.php"><i class="bi bi-gear"></i> Services</a>
</li>

<li>
    <a href="pictures.php"><i class="bi bi-gear"></i> Pictures</a>
</li>
<li><a href="login.php" class="link" class="login-form">Login</a></li>
        </ul>
        </nav>
</header>
    <div class="form-reg">
         
<form name="myRegistration" action="registered.php"  method="POST">
   <!-- <form name="myRegistration">  -->
<label> First name </label>
<input class ="input-field" type="name" id="firstname" name="firstname" placeholder=" First Name" required><br>
<label> Last Name</label>
<input class ="input-field" type="name" id="lastname" name="lastname" placeholder=" Last Name" required><br>
<label> Phone number</label>
<input class ="input-field" type="name" id="phone" name="phone" placeholder="Phone number" required><br>
<label> Email </label>
<input class="input-field" type="name" id="email" name="email" placeholder="Email" required><br>

<div class="password-container">
    <label> Create password </label>
    <input class="input-field" type="password" id="password" name="password" placeholder="Password" required><br></div>
    <label> Choose your country
    <select id="country" name="country" onchange="countryChanged()">
        <option></option>
        <option value="egypt"> Egypt</option>
        <option value="germany"> Germany</option>
        <option value="spain"> Spain</option>
        <option value="italy"> Italy</option>
        <option value="kuwait"> Kuwait</option>
        <option value="oman"> Oman</option>
        <option value="lebanon"> Lebanon</option>
        <option value="other">Morroco</option>
    </select></label>
    <p id="Selected-country"> No country selected</p>
    <button  >Create Account</button>
    </form>
    </div>
    <script>
       /*
        const email= document.getElementById("email");
        const password=document.getElementById("password");
        const fname=document.getElementById("firstname");
        const lname=document.getElementById("lastname");
    const phone=document.getElementById("phone");
        const countrySelect = document.getElementById("country");
    
        const validateRegistration2= async () => 
        {
          //let country=document.getElementById("country").value;
    
        var country = countrySelect.options[countrySelect.selectedIndex];
    if(email.value==""){
        alert("Enter your Email");
        return false;
    }
    
    if(password.value==""){
        alert("Enter your Password");
        return false;
    }
    
    if(fname.value==""){
        alert("Invalid First name");
        return false;
    }
    if(lname.value==""){
        alert("Please create your Last name");
       return false;
    }
    if(phone.value==""){
        alert("Please create your Phone");
       return false;
    }
    if(country.text==""){
        alert("Please create your Country");
       return false;
    }
    
    const formData = {
        email: email.value,
        password: password.value,
        fname: fname.value,
        lname: lname.value,
        phone: phone.value,
        country: country.text,
    };
    console.log(formData);
    fetch("./registered.php", {
    method: "POST",
    headers: {
        "Content-Type": "application/json"
    },
    body: JSON.stringify(formData)
})
.then((response) => response.json())
.then((data) => {
    console.log("Success:", data);
    window.location.href = "./login.php"; // Redirect to login.php
    
})
.catch((error) => {
    console.error("Error:", error);
});

};
*/
function countryChanged(){
    const countrySelect = document.getElementById("country");
    const Selectedcountry = countrySelect.options[countrySelect.selectedIndex].text;
    document.getElementById("Selected-country").innerText = "Selected country: " + Selectedcountry;}

document.getElementById("btn").addEventListener("click",validateRegistration2);
    </script>
</body>
</html>
       