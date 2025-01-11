<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Advanced Login in Navbar</title>
  <link rel="stylesheet" href="styles.css">
  <style>
    /* Reset some default styles */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: Arial, sans-serif;
  line-height: 1.6;
}

header {
  background-color: #333;
  color: #fff;
  padding: 10px 0;
}

.navbar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
}

.logo {
  font-size: 1.8rem;
  font-weight: bold;
  text-decoration: none;
  color: #fff;
}

.nav-links {
  list-style-type: none;
  display: flex;
}

.nav-links li {
  margin-right: 15px;
}

.nav-links a {
  text-decoration: none;
  color: #fff;
  font-size: 1.1rem;
  transition: all 0.3s ease;
}

.nav-links a:hover {
  color: #ffd700; /* Change color on hover */
}

.login-container {
  display: flex;
  align-items: center;
}

.login-form {
  display: flex;
}

.login-form input[type="text"],
.login-form input[type="password"] {
  padding: 8px;
  margin-right: 5px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

.login-form button {
  padding: 8px 15px;
  background-color: #007bff;
  color: #fff;
  border: none;
  border-radius: 3px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.login-form button:hover {
  background-color: #0056b3; /* Darker background color on hover */
}

.register-link {
  margin-left: 10px;
  color: #ffd700; /* Link color */
  text-decoration: none;
  font-weight: bold;
}

.register-link:hover {
  text-decoration: underline; /* Underline on hover */
}

  </style>
</head>
<body>
  <header>
    <nav class="navbar">
      <a href="#" class="logo">YourLogo</a>
      <ul class="nav-links">
        <li><a href="#">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Services</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
      <div class="login-container">
        <form action="#" class="login-form">
          <input type="text" placeholder="Username" required>
          <input type="password" placeholder="Password" required>
          <button type="submit">Login</button>
        </form>
        <a href="#" class="register-link">Register</a>
      </div>
    </nav>
  </header>
  
  <main>
    <!-- Main content of the page -->
    <section>
      <h1>Welcome to Your Website!</h1>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis libero eget ipsum luctus, ut volutpat neque fermentum.</p>
    </section>
  </main>
</body>
</html>
