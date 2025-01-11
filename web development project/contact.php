<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Document</title>
    <style>
        img{
                position:absolute;
                width:80%;
                height:550px;
                border:2px solid;
                margin:5px;
                top:250px;
               left:100px;
}
body{
    background: repeating-linear-gradient(to right, lime,white 100%)
}
a:hover{
    color:orange;
}
ul li{
    color:blue;
}
ul li:hover{
    color:orangered;
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
}
a.button {
  border-radius: 25px;
}


    </style>
</head>
<body>
<nav class="navbar bg-dark border-bottom border-body" data-bs-theme="dark">
<a href="index.php" class="button">Main Page</a>
      <a href="login.php" class="button" class="link"> Login</a>
</nav>

<div class="row align-items-center">
    
    <div class="col-lg-6 col-12 mx-auto">
        
        <h1> MC  Event Management System</h1>
        <p class="d-flex mb-1">
            <strong class="me-2">Phone:</strong>
            <a href="tel:76762909" class="site-footer-link">
                (961)
                76 762 909
                    </a>
                </p>
            </a>
        </p>
        </p>
        <p class="d-flex">
          <strong class="me-2">Email:</strong>

          <a href="mailto:info@yourgmail.com" class="site-footer-link">
             info MC@gmail.com
          </a>
      </p>
  </div>
  <div class="col-lg-5 col-12">
      <em class="text-white d-block mb-4">Opening Hours.</em>
      <p>

      <ul class="opening-hours-list">
          <li class="d-flex">
              Monday - Friday
              <span class="underline"></span>
              <strong>9:00 PM - 2:00 AM</strong>
              </p>
          </li>
          <p>
          <li class="d-flex">
              Saturday
              <span class="underline"></span>
              <strong>12:00 AM - 5:00 AM</strong>
          </p>
          </li>
          <p>
          <li class="d-flex">
              Sunday
              <span class="underline"></span>
              <strong>12:00 AM - 5:00 AM</strong>
</div>
<div>
              <img src="./assets/img/img4.jpg">
</div>
</body>
</html>