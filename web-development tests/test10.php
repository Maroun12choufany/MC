<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Advanced Form</title>
    <link rel="stylesheet" href="styles.css">
    <Style>
        * {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: Arial, sans-serif;
    background: linear-gradient(45deg, #3498db, #8e44ad);
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

.container {
    background-color:black;
    border-radius: 10px;
    box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
    padding: 40px;
    width: 400px;
}

h2 {
    text-align: center;
    margin-bottom: 30px;
    color: red;
}

.form-group {
    position: relative;
    margin-bottom: 30px;
}

input {
    width: 100%;
    padding: 10px 0;
    font-size: 16px;
    color: #333;
    border: none;
    border-bottom: 1px solid #ddd;
    outline: none;
    background: transparent;
    transition: border-color 0.2s;
}

label {
    position: absolute;
    top: 0;
    left: 0;
    padding: 10px 0;
    font-size: 16px;
    color: #666;
    pointer-events: none;
    transition: 0.2s ease all;
}

input:focus ~ label,
input:valid ~ label {
    top: -20px;
    font-size: 14px;
    color: #3498db;
}

input:focus {
    border-bottom: 2px solid #3498db;
}

.error {
    color: #e74c3c;
    font-size: 14px;
    position: absolute;
    bottom: -20px;
    left: 0;
    opacity: 0;
    transition: opacity 0.3s ease;
}

button {
    width: 100%;
    background-color: #3498db;
    border: none;
    padding: 15px;
    color: white;
    font-size: 16px;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #2980b9;
}

@keyframes shake {
    0%, 100% { transform: translateX(0); }
    25% { transform: translateX(-10px); }
    75% { transform: translateX(10px); }
}

.shake {
    animation: shake 0.5s ease-in-out;
}
    </style>
</head>
<body>
    <div class="container">
        <form id="advancedForm" novalidate>
            <h2>Login Form</h2>
            <div class="form-group">
                <input type="text" id="name" name="name" required>
                <label for="name">Name</label>
                <span class="error" id="nameError"></span>
            </div>
            <div class="form-group">
                <input type="email" id="email" name="email" required>
                <label for="email">Email</label>
                <span class="error" id="emailError"></span>
            </div>
            <div class="form-group">
                <input type="password" id="password" name="password" required>
                <label for="password">Password</label>
                <span class="error" id="passwordError"></span>
            </div>
            <div class="form-group">
                <input type="tel" id="phone" name="phone" required>
                <label for="phone">Phone</label>
                <span class="error" id="phoneError"></span>
            </div>
            <button type="submit">Login</button>
        </form>
    </div>
    <script src="script.js"></script>
</body>
</html>