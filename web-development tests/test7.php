<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .links {
            text-align: center;
        }
        .links a {
            display: inline-block;
            text-decoration: none;
            color: #333;
            font-size: 18px;
            padding: 15px 30px;
            margin: 10px;
            border-radius: 8px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, background-color 0.3s ease, color 0.3s ease;
            position: relative;
            overflow: hidden;
        }
        .links a::before {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 300%;
            height: 300%;
            background-color: rgba(255, 255, 255, 0.2);
            transition: transform 0.6s ease;
            transform: translate(-50%, -50%) rotate(45deg);
            z-index: 0;
        }
        .links a:hover::before {
            transform: translate(-50%, -50%) rotate(405deg);
        }
        .links a span {
            position: relative;
            z-index: 1;
        }
        .links a:hover {
            background-color: #333;
            color: #fff;
            transform: translateY(-5px);
        }
    </style>
</head>
<body>
    <div class="links">
        <a href="page1.html"><span>Go to Page 1</span></a>
        <a href="page2.html"><span>Visit Page 2</span></a>
    </div>
</body>
</html>
