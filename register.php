<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        form{
            text-align:center;
            position:absolute;
            background:linear-gradient(to right, lime, blue);
             font-size:40px;
              margin:10px;
               top:100px;
               left:600px;
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
           background:linear-gradient(to right, black,grey);
        }
        .form-reg{
            display:flex;
           justify-content:center;
           text-align:center;
           font-size:20px;
        }
        form label {
        display: block;
        margin-bottom: 5px;
         color: red;
         font-size:20px;
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
    </style>
</head>
<body>
    <h1> Registration</h1>
    <div class="form-reg">
<form name="myRegistration" action="registered.php" onsubmit="return validateRegistration()" method="POST">
<label> First name </label>
<input class ="input-field" type="name" id="firstname"placeholder=" First Name"><br>
<label> Last Name</label>
<input class ="input-field" type="name" id="lastname"placeholder=" Last Name"><br>
   
<label> Email </label>
<input class="input-field" type="email" id="emailReg" placeholder="Email"><br>

<div class="password-container">
    <label> Create password </label>
    <input class="input-field" type="password" id="passwordReg" placeholder="Password"><br>
    
    <label> Choose your country</label>
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
    </select>
    <p id="Selected-country"> No country selected</p>
    <button>Create Account</button>
    </form>
    </div>
<script src="./main.js"></script>
</body>
</html>
