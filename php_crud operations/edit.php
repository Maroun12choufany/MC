<?php
include 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id = $_POST['id'];
    $name = $_POST['name'];
    $email = $_POST['email'];
    $age = $_POST['age'];

    $sql = "UPDATE students SET name='$name', email='$email', age='$age' WHERE id=$id";

    if ($conn->query($sql) === TRUE) {
        
            header("Location: index.php");
      
    } else {
        echo "Error updating record: " . $conn->error;
    }
}

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $result = $conn->query("SELECT * FROM students WHERE id=$id");
    $row = $result->fetch_assoc();
}
?>
<!DOCTYPE html>
<html>
<head>
   
    <style>
        .form-container {
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 100%;
    max-width: 600px;
    margin: 20px auto;
    padding: 30px;
    background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
    border-radius: 15px;
    box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23);
    animation: slideIn 0.8s ease-out;
}

.form-container h2 {
    margin-bottom: 20px;
    color: #34495e;
    font-size: 2em;
    text-transform: uppercase;
    letter-spacing: 2px;
}

.form-container label {
    align-self: flex-start;
    margin-bottom: 5px;
    color: #2c3e50;
    font-size: 1.1em;
    font-weight: bold;
    transition: color 0.3s ease;
}

.form-container input
 {
    width: 100%;
    padding: 12px;
    margin-bottom: 20px;
    border: 2px solid #bdc3c7;
    border-radius: 8px;
    font-size: 1em;
    color: #333;
    background-color: #ecf0f1;
    transition: border-color 0.3s ease, background-color 0.3s ease;
}

.form-container input:focus
 {
    border-color: #3498db;
    background-color: #fff;
    outline: none;
}

.form-container button {
    width: 100%;
    padding: 15px;
    border: none;
    border-radius: 8px;
    background-color: #2ecc71;
    color: white;
    font-size: 1.2em;
    font-weight: bold;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.3s ease;
}

.form-container button:hover {
    background-color: #27ae60;
    transform: translateY(-3px);
}

.form-container button:active {
    transform: translateY(1px);
}

@keyframes slideIn {
    from {
        opacity: 0;
        transform: translateY(-50px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

@media (max-width: 768px) {
    .form-container {
        padding: 20px;
    }

    .form-container h2 {
        font-size: 1.5em;
    }

    .form-container input
   {
        font-size: 0.9em;
    }
}
    </style>
</head>
<body>
    <h2>Edit Student</h2>
    <form method="post" action="" class="form-container">
        <input type="hidden" name="id" value="<?php echo $row['id']; ?>">
        <label>Name</label>
         <input type="text" name="name" value="<?php echo $row['name']; ?>" required><br>
         <label>Email</label>
        <input type="email" name="email" value="<?php echo $row['email']; ?>" required><br>
        <label>Age</label>
        <input type="number" name="age" value="<?php echo $row['age']; ?>" required><br>
        <input type="submit" value="Update Student">
    </form>
</body>
</html>