<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        #history-table {
    width: 100%;
    border-collapse: collapse;
}

#history-table th, #history-table td {
    padding: 8px;
    border-bottom: 1px solid #ddd;
}

#history-table th {
    background-color: red;
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
h3{
    text-align:center;
    color:green;
    font-size:30px;
}
    </style>
</head>
<body>
    <div id="ticket-history">
    <h3> My Events</h3>
    <table id="history-table">
        <thead>
            <tr>
                <th> ID</th>
                <th> EventName</th>
                <th>Event time</th>
                <th>Date</th>
                <th> Location</th>
              
            </tr>
        </thead>
        <tbody id="history-table-body">
            <td>1</td>
            <td>dsdsa</td>
            <td>12:00am</td>
            <td>4/4/2024</td>
            <td> jounieh</td>
        </tbody>
    </table>
    
</body>
</html>