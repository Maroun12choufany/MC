<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            transition: background-color 0.3s, color 0.3s;
        }
        
        .light-mode {
            background-color: #ffffff;
            color: #333333;
        }
        
        .dark-mode {
            background-color: #333333;
            color: #ffffff;
        }
        
        .container {
            max-width: 800px;
            margin: 0 auto;
        }
        
        h1 {
            text-align: center;
        }
        
        .toggle-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 20px;
        }
        
        .toggle-switch {
            position: relative;
            display: inline-block;
            width: 60px;
            height: 34px;
        }
        
        .toggle-switch input {
            opacity: 0;
            width: 0;
            height: 0;
        }
        
        .slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #ccc;
            transition: .4s;
            border-radius: 34px;
        }
        
        .slider:before {
            position: absolute;
            content: "";
            height: 26px;
            width: 26px;
            left: 4px;
            bottom: 4px;
            background-color: white;
            transition: .4s;
            border-radius: 50%;
        }
        
        input:checked + .slider {
            background-color: #2196F3;
        }
        
        input:checked + .slider:before {
            transform: translateX(26px);
        }
        
        .mode-label {
            margin-left: 10px;
        }
    </style>
</head>
<body class="light-mode">
    <div class="container">
        <h1>Light/Dark Mode Toggle</h1>
        
        <div class="toggle-container">
            <label class="toggle-switch">
                <input type="checkbox" id="mode-toggle">
                <span class="slider"></span>
            </label>
            <span class="mode-label">Dark Mode</span>
        </div>
        
        <p>This is a sample paragraph to demonstrate the light and dark mode functionality. You can toggle between the two modes using the switch above.</p>
        
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nec magna vel ante sollicitudin lacinia. Ut in gravida ante. Sed consequat ex ac odio mollis, vel malesuada sapien venenatis.</p>
    </div>

    <script>
        const body = document.body;
        const modeToggle = document.getElementById('mode-toggle');
        const modeLabel = document.querySelector('.mode-label');

        modeToggle.addEventListener('change', () => {
            if (modeToggle.checked) {
                body.classList.remove('light-mode');
                body.classList.add('dark-mode');
                modeLabel.textContent = 'Light Mode';
            } else {
                body.classList.remove('dark-mode');
                body.classList.add('light-mode');
                modeLabel.textContent = 'Dark Mode';
            }
        });
    </script>
</body>
</html>