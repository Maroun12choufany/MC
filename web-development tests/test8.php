<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            overflow: hidden;
        }

        .form-container {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            padding: 40px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
            width: 400px;
            max-width: 90%;
        }

        h2 {
            color: #fff;
            text-align: center;
            margin-bottom: 30px;
            font-weight: 600;
        }

        .input-group {
            position: relative;
            margin-bottom: 30px;
        }

        input {
            width: 100%;
            padding: 10px 0;
            font-size: 16px;
            color: #fff;
            border: none;
            border-bottom: 2px solid #fff;
            outline: none;
            background: transparent;
            transition: 0.3s;
        }

        label {
            position: absolute;
            top: 0;
            left: 0;
            padding: 10px 0;
            font-size: 16px;
            color: #fff;
            pointer-events: none;
            transition: 0.3s;
        }

        input:focus ~ label,
        input:valid ~ label {
            top: -20px;
            font-size: 12px;
            color: #ffd700;
        }

        input:focus,
        input:valid {
            border-bottom: 2px solid #ffd700;
        }

        button {
            width: 100%;
            padding: 10px 0;
            background: #ffd700;
            color: #764ba2;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.3s;
            outline: none;
        }

        button:hover {
            background: #fff;
            color: #764ba2;
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }

        .animation-container {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            z-index: -1;
        }

        .bubble {
            position: absolute;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.1);
            animation: float 4s infinite ease-in-out;
        }

        @keyframes float {
            0%, 100% {
                transform: translateY(0);
            }
            50% {
                transform: translateY(-20px);
            }
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Sign Up</h2>
        <form>
            <div class="input-group">
                <input type="text" required>
                <label>Username</label>
            </div>
            <div class="input-group">
                <input type="email" required>
                <label>Email</label>
            </div>
            <div class="input-group">
                <input type="password" required>
                <label>Password</label>
            </div>
            <button type="submit">Sign Up</button>
        </form>
    </div>
    <div class="animation-container"></div>

    <script>
        function createBubbles() {
            const container = document.querySelector('.animation-container');
            const bubbleCount = 20;

            for (let i = 0; i < bubbleCount; i++) {
                const bubble = document.createElement('div');
                bubble.classList.add('bubble');
                
                const size = Math.random() * 60 + 20;
                bubble.style.width = `${size}px`;
                bubble.style.height = `${size}px`;
                
                bubble.style.left = `${Math.random() * 100}%`;
                bubble.style.top = `${Math.random() * 100}%`;
                
                bubble.style.animationDuration = `${Math.random() * 2 + 2}s`;
                bubble.style.animationDelay = `${Math.random() * 2}s`;
                
                container.appendChild(bubble);
            }
        }

        createBubbles();
    </script>
</body>
</html>