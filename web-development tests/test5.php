<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Animated Form</title>
<style>
  /* Basic form styling */
  body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
  }

  .form-container {
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 400px;
    width: 100%;
    text-align: center;
    animation: fadeIn 0.5s ease-out;
  }

  input[type="text"], input[type="email"], input[type="password"] {
    width: calc(100% - 20px);
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
  }

  input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    border: none;
    padding: 12px 20px;
    text-decoration: none;
    font-size: 16px;
    cursor: pointer;
    border-radius: 4px;
    transition: background-color 0.3s;
  }

  input[type="submit"]:hover {
    background-color: #45a049;
  }

  /* Animation keyframes */
  @keyframes fadeIn {
    0% {
      opacity: 0;
      transform: translateY(-20px);
    }
    100% {
      opacity: 1;
      transform: translateY(0);
    }
  }
</style>
</head>
<body>
  <div class="form-container">
    <h2>Sign Up Form</h2>
    <form action="#">
      <input type="text" name="name" placeholder="Your Name" required><br>
      <input type="email" name="email" placeholder="Your Email" required><br>
      <input type="password" name="password" placeholder="Your Password" required><br>
      <input type="submit" value="Sign Up">
    </form>
  </div>
</body>
</html>
