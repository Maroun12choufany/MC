<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap');

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            padding: 0;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
            padding: 40px;
            width: 400px;
            max-width: 100%;
            transform: translateY(20px);
            opacity: 0;
            animation: fadeIn 0.5s ease-out forwards;
        }

        @keyframes fadeIn {
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h2 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 25px;
            position: relative;
        }

        .form-group input {
            width: 100%;
            padding: 10px 0;
            font-size: 16px;
            color: #333;
            border: none;
            border-bottom: 1px solid #ddd;
            outline: none;
            background: transparent;
            transition: 0.3s;
        }

        .form-group label {
            position: absolute;
            top: 0;
            left: 0;
            padding: 10px 0;
            font-size: 16px;
            color: #666;
            pointer-events: none;
            transition: 0.3s;
        }

        .form-group input:focus ~ label,
        .form-group input:valid ~ label {
            top: -20px;
            font-size: 12px;
            color: #667eea;
        }

        .form-group .underline {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 2px;
            background-color: #667eea;
            transform: scaleX(0);
            transition: 0.3s;
        }

        .form-group input:focus ~ .underline,
        .form-group input:valid ~ .underline {
            transform: scaleX(1);
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #667eea;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
            overflow: hidden;
            position: relative;
        }

        button:hover {
            background-color: #5a6fe0;
        }

        button::after {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 5px;
            height: 5px;
            background: rgba(255, 255, 255, 0.5);
            opacity: 0;
            border-radius: 100%;
            transform: scale(1, 1) translate(-50%);
            transform-origin: 50% 50%;
        }

        @keyframes ripple {
            0% {
                transform: scale(0, 0);
                opacity: 1;
            }
            20% {
                transform: scale(25, 25);
                opacity: 1;
            }
            100% {
                opacity: 0;
                transform: scale(40, 40);
            }
        }

        button:focus:not(:active)::after {
            animation: ripple 1s ease-out;
        }

        .error {
            color: #ff4444;
            font-size: 12px;
            margin-top: 5px;
            display: none;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Sign Up</h2>
        <form id="signupForm" action="process.php" method="POST">
            <div class="form-group">
                <input type="text" id="username" name="username">
                <label for="username">Username</label>
                <span class="underline"></span>
                <span class="error" id="username-error"></span>
            </div>
            <div class="form-group">
                <input type="email" id="email" name="email">
                <label for="email">Email</label>
                <span class="underline"></span>
                <span class="error" id="email-error"></span>
            </div>
            <div class="form-group">
                <input type="password" id="password" name="password">
                <label for="password">Password</label>
                <span class="underline"></span>
                <span class="error" id="password-error"></span>
            </div>
            <button type="submit">Sign Up</button>
        </form>
    </div>
    <script src="main.js"></script>
   
</body>
</html>