<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=, initial-scale=1.0">
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
            background:linear-gradient(to right , orangered,black);
         
           
        }
        .event h2 {
            margin-top: 0;
        }
        .event p {
            margin-bottom: 5px;
        }
    

    </style>
</head>
<body>
    <h1> Login Successful</h1>
    <p> Welcome to our Event Management System</p>
    <h1> Our events </h1>
    <div class="event">
        <h2>Event Title 1</h2>
        <p><strong>Date:</strong> January 1, 2024</p>
        <p><strong>Time:</strong> 9:00 AM - 5:00 PM</p>
        <p><strong>Location:</strong> Event Venue 1</p>
       
        <p> For RSVP:</p>
        <form  name="rsvpForm" onsubmit="return validateRsvp()"> 
        <p>
        <input class ="input-field" type="name"id="fname"  placeholder="First Name">
</p>
<p>
<input class ="input-field" type="name" id="lname"placeholder=" Last Name">
</p>
</p>
<p>
<input type="number" name="booking-form-number" id="booking-form-number" class="form-control" placeholder="Number of People">
</p>
<input type="submit" value="Send">

    </form>

    </div>

    <div class="event">
        <h2>Event Title 2</h2>
        <p><strong>Date:</strong> February 15, 2024</p>
        <p><strong>Time:</strong> 10:00 AM - 4:00 PM</p>
        <p><strong>Location:</strong> Event Venue 2</p>
      
        <p> For RSVP:</p>
        <form name="reservationForm" onsubmit="return validateReservation()">
        <p>
        <input class ="input-field" type="name"id="fname"  placeholder="First Name">
</p>
<p>
<input class ="input-field" type="name" id="lname"placeholder=" Last Name">
</p>
</p>
<p>
<input type="number" name="booking-form-number" id="booking-form-number" class="form-control" placeholder="Number of People">
</p>
<input type="submit" value="Send">
    </form>
    </div>
    </div>

    <div class="event">
        <h2>Event Title 3</h2>
        <p><strong>Date:</strong> March 20, 2024</p>
        <p><strong>Time:</strong> 1:00 PM - 6:00 PM</p>
        <p><strong>Location:</strong> Event Venue 3</p>
      
        <p> For RSVP:</p>
        <form name="RsvpForm" onsubmit="return validateR()">
        <p>
        <input class ="input-field" type="name" id="fname"  placeholder="First Name">
</p>
<p>
<input class ="input-field" type="name" id="lname"placeholder=" Last Name">
</p>
</p>
<p>
<input type="number" name="booking-form-number" id="booking-form-number" class="form-control" placeholder="Number of People">
</p>
<input type="submit" value="send">
    </form>
    </div>
    </div>
    <script src="./main.js"></script>
    <script>
        function validateRsvp(){
    let k= document.forms["rsvpForm"] ["fname"].value;
    if(k==""){
        alert(" Enter your first name");
        return false;
    }
    let l= document.forms["rsvpForm"] ["lname"].value;
    if(l==""){
        alert("Enter your last name");
        return false;
    }
    let p= document.forms["rsvpForm"] ["booking-form-number"].value;
    if(p==""){
        alert("Enter number of persons");
        return false;
    }
}
function validateReservation(){
    let o= document.forms["reservationForm"] ["fname"].value;
    if(o==""){
        alert(" Enter your first name");
        return false;
    }
    let u= document.forms["reservationForm"] ["lname"].value;
    if(u==""){
        alert("Enter your last name");
        return false;
    }
    let i = document.forms["reservationForm"] ["booking-form-number"].value;
    if(i==""){
        alert("Enter number of persons");
        return false;
    }
}

function validateR(){
    let w= document.forms["RsvpForm"] ["fname"].value;
    if(w==""){
        alert(" Enter your first name");
        return false;
    }
    let r= document.forms["RsvpForm"] ["lname"].value;
    if(r==""){
        alert("Enter your last name");
        return false;
    }
    let t = document.forms["RsvpForm"] ["booking-form-number"].value;
    if(t==""){
        alert("Enter number of persons");
        return false;
    }
}
    </script>

</body>
</html>