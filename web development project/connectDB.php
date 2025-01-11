<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname="eventmanagment";
$conn = new mysqli($servername, $username, $password);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
$sql="CREATE DATABASE IF NOT EXISTS  eventmanagment";
if($conn->query($sql)==FALSE)
  die("Connection failed: " . $conn->connect_error);



$conn = new mysqli($servername, $username, $password,$dbname);


if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql="CREATE TABLE IF NOT EXISTS Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    UserFirstName VARCHAR(50) NOT NULL,
    UserLastName VARCHAR(50) NOT NULL,
    UserEmail VARCHAR(100) NOT NULL UNIQUE,
    UserPassword VARCHAR(255) NOT NULL,
    Country VARCHAR(50),
    UserPhone VARCHAR(20),
    Rate DECIMAL(3,2) DEFAULT 0, 
    NumberOfRatedPeople INT DEFAULT 0
)";
$conn->query($sql);
        
$sql="CREATE TABLE IF NOT EXISTS Reservation (
    UserEmail VARCHAR(100),
    EventID INT,
    NumberOfPeople INT NOT NULL,
    Rated BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (UserEmail) REFERENCES users(UserEmail) ON DELETE CASCADE,
    FOREIGN KEY (EventID) REFERENCES events(EventID) ON DELETE CASCADE
)";
$conn->query($sql);
$sql="CREATE TABLE IF NOT EXISTS Events (
    EventID INT PRIMARY KEY AUTO_INCREMENT,
    EventName VARCHAR(100) NOT NULL,
    EventLocation VARCHAR(100) NOT NULL,
    EventDate DATE NOT NULL,
    EventTime TIME NOT NULL,
    EventCreator VARCHAR(100),
    FOREIGN KEY (EventCreator) REFERENCES Users(UserEmail) ON DELETE SET NULL
)";
$conn->query($sql);
?>