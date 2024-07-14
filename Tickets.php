<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
    font-family: Arial, sans-serif;
    background-color: #f1f1f1;
    padding: 20px;
    background: repeating-linear-gradient(to right, black, red 15%);
    background-size: cover;
    background-position: center;
    height: 100vh;
}

h2 {
    text-align: center;
    color: #333;
}

.ticket-section {
    max-width: 400px;
    margin: 0 auto;
}

input[type="text"], input[type="date"], input[type="submit"] {
    width: calc(100% - 20px);
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
}

input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
}

input[type="submit"]:hover {
    background-color: #45a049;
}

#ticket-history {
    margin-top: 20px;
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    display: none;
}
#view-history-btn{
    background-color:rgb(24, 24, 92);
    color: white;
    cursor: pointer;
    transition: background-color 0.3s;
    width: calc(100% - 20px);
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;

}

#history-table {
    width: 100%;
    border-collapse: collapse;
    
}

#history-table th, #history-table td {
    padding: 8px;
    border-bottom: 1px solid #ddd;
}

#history-table th {
    background-color: #f2f2f2;
    text-align: left;
}

#history-table td {
    text-align: center;
}

.delete-btn {
    background-color: #dc3545;
    color: white;
    border: none;
    border-radius: 5px;
    padding: 5px 10px;
    cursor: pointer;
}
    </style>
</head>
<body>
<div class="ticket-section">
    <form id="ticket-form" action="table.php" method="POST">
        <h2>Ticket Management System</h2>
        <input type="number" id="id" placeholder="Event ID" required><br>
        <input type="text" id="name" placeholder="Event Name" required><br>
        <input type="time" id="time" placeholder="Event time" required><br>
        <input type="date" id="date" required><br>
        <input type="text" id="location" placeholder=" Location" required><br>
        <input type="submit" id="book" value="bookEvent">
    </form>
</div>
</div>
<div id="ticket-history">
    <h3> Events</h3>
    <table id="history-table">
        <thead>
            <tr>
                <th> ID</th>
                <th> Event Name</th>
                <th>Event time</th>
                <th>Date</th>
                <th>Location</th>
               
            </tr>
        </thead>
</table>

<script src="main.js"></script>
</body>
</html>