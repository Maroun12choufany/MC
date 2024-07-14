
function countryChanged(){
    const countrySelect = document.getElementById("country");
    const Selectedcountry = countrySelect.options[countrySelect.selectedIndex].text;
    document.getElementById("Selected-country").innerText = "Selected country: "
    + Selectedcountry;
}
let name=document.getElementById("name");
let email= document.getElementById("email");
let password=document.getElementById("password");
console.log(name,email,password);

function validateForm(){
    let x = document.forms["myForm"] ["name"].value;
    if(x==""){
      alert("Enter your name");
        return false;
    }
    let y = document.forms["myForm"] ["email"].value;
    if(y==""){
        alert("Enter your email");
        return false;
    }
    let a = document.forms["myForm"] ["password"].value;
    if(a==""){
        alert("Enter your password");
        return false;
    }
}

let Firstname=document.getElementById("firstname");
let Lastname=document.getElementById("lastname");
let Email= document.getElementById("emailReg");
let Password=document.getElementById("passwordReg");
console.log(Firstname ,Lastname,Email,Password);

function validateRegistration(){
    let b =document.forms["myRegistration"] ["firstname"].value;
    if(b==""){
        alert("Enter your fName");
        return false;
    }
    let c = document.forms["myRegistration"] ["lastname"].value;
    if(c==""){
        alert("Enter your lName");
        return false;
    }
    let d = document.forms["myRegistration"] ["emailReg"].value;
    if(d==""){
        alert("Invalid email");
        return false;
    }
    let f = document.forms["myRegistration"] ["passwordReg"].value;
    if(f==""){
        alert("Please create your password");
        return false;
    }
}
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
