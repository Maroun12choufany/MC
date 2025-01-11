<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Animated Navbar with Dropdown</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #333;
            padding: 15px;
        }

        .navbar-list {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: flex-end;
        }

        .navbar-item {
            margin-left: 20px;
            position: relative;
        }

        .navbar-link {
            color: white;
            text-decoration: none;
            font-size: 18px;
            transition: color 0.3s ease;
        }

        .navbar-link:hover {
            color: #ffd700;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
            opacity: 0;
            transform: translateY(-10px);
            transition: opacity 0.3s, transform 0.3s;
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            transition: background-color 0.3s;
        }

        .dropdown-content a:hover {
            background-color: #f1f1f1;
        }

        .dropdown:hover .dropdown-content {
            display: block;
            opacity: 1;
            transform: translateY(0);
        }

        .menu-icon {
            display: none;
            color: white;
            font-size: 24px;
            cursor: pointer;
        }

        @media screen and (max-width: 600px) {
            .navbar-list {
                display: none;
                flex-direction: column;
                align-items: flex-end;
            }

            .navbar-item {
                margin: 10px 0;
            }

            .menu-icon {
                display: block;
            }

            .navbar-list.show {
                display: flex;
            }

            .dropdown-content {
                position: static;
                background-color: #444;
                box-shadow: none;
            }

            .dropdown-content a {
                color: white;
            }
        }
    </style>
</head>
<body>
    <nav class="navbar">
        <div class="menu-icon" onclick="toggleMenu()">☰</div>
        <ul class="navbar-list">
            <li class="navbar-item"><a href="#" class="navbar-link">Home</a></li>
            <li class="navbar-item"><a href="#" class="navbar-link">About</a></li>
            <li class="navbar-item dropdown">
                <a href="#" class="navbar-link">Services</a>
                <div class="dropdown-content">
                    <a href="#">Service 1</a>
                    <a href="#">Service 2</a>
                    <a href="#">Service 3</a>
                </div>
            </li>
            <li class="navbar-item"><a href="#" class="navbar-link">Contact</a></li>
        </ul>
    </nav>

    <script>
        function toggleMenu() {
            const navbarList = document.querySelector('.navbar-list');
            navbarList.classList.toggle('show');
        }
    </script>
</body>
</html>