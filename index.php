<?php
include 'config.php';
        $sql = "SELECT * FROM students";
        $result = $conn->query($sql);
        ?>
<!DOCTYPE html>
<html>
<head>
    <title>Student List</title>
    <style>
        #student-table {
    width: 100%;
    border-collapse: collapse;
    font-family: 'Arial', sans-serif;
    background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
    box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23);
    border-radius: 10px;
    overflow: hidden;
    animation: fadeIn 1s ease-out;
}

#student-table th,
#student-table td {
    padding: 15px 20px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

#student-table th {
    background-color: #2c3e50;
    color: white;
    font-size: 1.1em;
    text-transform: uppercase;
}

#student-table tr:hover {
    background-color: #f5f5f5;
    transition: background-color 0.3s ease;
}

#student-table td {
    color: #333;
    font-size: 1em;
}

#student-table td:first-child,
#student-table th:first-child {
    border-top-left-radius: 10px;
    border-bottom-left-radius: 10px;
}

#student-table td:last-child,
#student-table th:last-child {
    border-top-right-radius: 10px;
    border-bottom-right-radius: 10px;
}

#student-table tbody tr:nth-child(even) {
    background-color: #ecf0f1;
}

#student-table a {
    text-decoration: none;
    color: #3498db;
    transition: color 0.3s ease;
}

#student-table a:hover {
    color: #2980b9;
}

@keyframes fadeIn {
    from {
        opacity: 0;
        transform: translateY(-20px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

@media (max-width: 768px) {
    #student-table {
        border: 0;
    }

    #student-table thead {
        display: none;
    }

    #student-table tr {
        margin-bottom: 10px;
        display: block;
        border-bottom: 2px solid #ddd;
    }

    #student-table td {
        display: block;
        text-align: right;
        font-size: 13px;
        border-bottom: 1px dotted #ccc;
    }

    #student-table td:last-child {
        border-bottom: 0;
    }

    #student-table td:before {
        content: attr(data-label);
        float: left;
        text-transform: uppercase;
        font-weight: bold;
    }
}
a {
    color: #3498db;
    text-decoration: none;
    font-weight: 600;
    position: relative;
    transition: color 0.3s ease;
}

a::before {
    content: '';
    position: absolute;
    width: 100%;
    height: 2px;
    bottom: 0;
    left: 0;
    background-color: #3498db;
    visibility: hidden;
    transform: scaleX(0);
    transition: all 0.3s ease-in-out;
}

a:hover {
    color: #2980b9;
}

a:hover::before {
    visibility: visible;
    transform: scaleX(1);
}

a:active {
    color: #1f618d;
}

a:focus {
    outline: none;
    color: #2980b9;
    text-decoration: underline;
}

    </style>
</head>
<body>
    <h2>Student List</h2>
    <a href="add.php">Add New Student</a>
    <table border="1" id="student-table">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Age</th>
            <th>Actions</th>
        </tr>
        <?php
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . $row['id'] . "</td>";
                echo "<td>" . $row['name'] . "</td>";
                echo "<td>" . $row['email'] . "</td>";
                echo "<td>" . $row['age'] . "</td>";
                echo "<td>";
                echo "<a href='edit.php?id=" . $row['id'] . "'>Edit</a> | ";
                echo "<a href='delete.php?id=" . $row['id'] . "' onclick=\"return confirm('Are you sure?')\">Delete</a>";
                echo "</td>";
                echo "</tr>";
            }
        } else {
            echo "<tr><td colspan='5'>No students found</td></tr>";
        }
        ?>
    </table>
</body>
</html>