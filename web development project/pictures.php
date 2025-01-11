<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            padding: 20px;
            background:repeating-radial-gradient(circle,black,white 70%);
        }
        .gallery {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            max-width: 800px;
            margin: 0 auto;
        }
        .gallery-item {
            overflow: hidden;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
        .gallery-item:hover {
            transform: scale(1.05);
        }
        .gallery-item img {
            width: 100%;
            height: auto;
            display: block;
        }
        .caption {
            text-align: center;
            margin-top: 10px;
            font-size: 14px;
            color: #666;
        }
        a.button {
  display: inline-block;
  padding: 10px 20px;
  text-decoration: none;
  background-color: #007bff; 
  color: #ffffff; /
  border-radius: 5px;
  border: 1px solid #007bff; 
  font-size: 16px;
  font-weight: bold;
  text-align: center;
  cursor: pointer;
}


a.button:hover {
  background-color: #0056b3; 
  border-color: #0056b3; 
}
a.button {
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); 
}
a.button {
  transition: all 0.3s ease;
}

a.button:hover {
  transform: scale(1.1);
  color:coral;
}
a.button {
  border-radius: 25px;
}
    </style>
</head>
<body>
<a href="login.php" class="button" class="link"> Login</a>
</nav>
<div class="gallery">
        <div class="gallery-item">
            <img src="./assets/img/img11.jpg" alt="Image 1">
            <div class="caption">Image 1</div>
        </div>
        <div class="gallery-item">
            <img src="./assets/img/img2.jpg" alt="Image 2">
            <div class="caption">Image 2</div>
        </div>
        <div class="gallery-item">
            <img src="./assets/img/img5.jpg" alt="Image 3">
            <div class="caption">Image 3</div>
        </div>
        <div class="gallery-item">
            <img src="./assets/img12.jpg" alt="Image 4">
            <div class="caption">Image 4</div>
        </div>
        <div class="gallery-item">
            <img src="./assets/img/img3.jpg" alt="Image 5">
            <div class="caption">Image 5</div>
         </div>

            <div class="gallery-item">
            <img src="./assets/img/img4.jpg" alt="Image 6">
            <div class="caption">Image 6</div>

         </div>

         <div class="gallery-item">
            <img src="./assets/img/img7.jpg" alt="Image 7">
            <div class="caption">Image 7</div>

         </div>

         <div class="gallery-item">
            <img src="./assets/img/img8.jpg" alt="Image 8">
            <div class="caption">Image 8</div>

         </div>

         <div class="gallery-item">
            <img src="./assets/img/img10.jpg" alt="Image 9">
            <div class="caption">Image 9</div>
         </div>
    </div>
</body>
</html>