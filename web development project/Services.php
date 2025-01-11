<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Services</title>
    <style>
      body{
        background:linear-gradient(to right,#ADBC9F,blue);
        font-size:20px;
        font-family:Arial, sans-serif;
        text-align:center;
    }
    .card {
    width: 300px;
    border: 1px solid #ccc;
    border-radius: 8px;
    padding: 16px;
    margin: 16px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    background-color:red;
  }
  
 
  .card h2 {
    font-size: 1.5rem;
    margin-bottom: 8px;
  }
  
  
  .card p {
    font-size: 1rem;
    line-height: 1.5;
    color:#ADBC9F;
    font-size:15px;
  }
  p:hover{
    color:black;
  }
  .card-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center; 
    gap: 20px; 
    padding: 20px; 
    background-color: #f0f0f0; 
    background:linear-gradient(to right,#ADBC9F,blue);
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
nav{
  text-align:right;
}
    </style>
</head>
<body>
<header>
  <nav>
<a href="login.php" class="button" class="link"> Login</a>
</nav>
</header>
        <h1>Our Services</h1>
        <div class="card-container">
   
    <div class="card">
      <h2>Wedding Planning</h2>
      <p>Full-service wedding planning including venue selection, catering, decor, and more.</p>
    </div>
    <div class="card">
      <h2>Corporate Events</h2>
      <p>Plan and organize corporate events such as conferences, seminars, and team-building activities.</p>
    </div>
    <div class="card">
      <h2>Birthday Parties</h2>
      <p>Customized birthday party planning including themes, entertainment, and logistics.</p>
    </div>
     <div class="card">
    <section class="services">
        <h2>Event Planning</h2>
        <p>Comprehensive event planning services tailored to your needs, ensuring every detail is meticulously handled from inception to execution.</p>
    </section></div>
<div class="card">
    <section class="service">
        <h2>Venue Selection</h2>
        <p>We help you choose the perfect venue that fits your event's theme, size, and budget, ensuring a memorable setting for your guests.</p>
    </section></div>
    <div class="card">
    <section class="service">
        <h2>Vendor Management</h2>
        <p>Coordination with trusted vendors including caterers, decorators, entertainers, and more, to ensure seamless integration and exceptional service delivery.</p>
    </section></div>
    <div class="card">
    <section class="service">
        <h2>Event Design</h2>
        <p>Creative event design services covering theme development, décor, lighting, and floral arrangements to create a captivating atmosphere.</p>
    </section></div>
    <div class="card">
    <section class="service">
        <h2>Entertainment</h2>
        <p>Booking of talented performers, DJs, live bands, or unique entertainment options to keep your guests engaged and entertained throughout the event.</p>
    </section></div>
    <div class="card">
    <legend>For More Informations:</legend>
    <label> Contact Us</label>
    <a href="contact.php" class="button">Contact</a>

    
  </div>
</body>
</html>