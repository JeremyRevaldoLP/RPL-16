<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home | Sigmas PC</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Amaranth:ital,wght@0,400;0,700;1,400;1,700&family=Lilita+One&family=MuseoModerno:ital,wght@0,100..900;1,100..900&family=Righteous&display=swap" rel="stylesheet">
    
    <!-- Inline CSS for Background Image and Animated Gradient Text -->
    <style>
        body {
            margin: 0;
            font-family: 'MuseoModerno', 'Lilita-One';
            color: #333333;
            overflow: hidden;
            background-image: url('images/backgrounds/doll-background.jpg'); /* Replace with the path to your doll image */
            background-size: cover;
            background-position: center;
            background-attachment: fixed; /* Keeps background fixed on scroll */
        }

        h1 {
            font-size: 3rem;
            background: linear-gradient(90deg, #C08B5C, #795458, #C08B5C, #795458);
            background-size: 300%;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            animation: gradientAnimation 5s ease infinite;
        }

        h2 {
            font-size: 1rem;
            background: linear-gradient(90deg, #f0f4f9, #f0f725, #f0f4f9, #f0f725);
            background-size: 300%;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            animation: gradientAnimation 7s ease infinite;
        }

        @keyframes gradientAnimation {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .navbar-nav .nav-link {
            padding: 5px 10px;
            margin-right: 10px;
            border-radius: 5px;
        }

        .navbar-nav .nav-link:hover {
            background-color: #C08B5C;
            color: #1f3e5f;
            border-color: #C08B5C;
        }

        .btn-primary {
            background-color: #1f3e5f;
            border-color: #e73813;
        }

        .container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 70vh;
            position: relative;
            z-index: 2;
        }
    </style>
</head>
<body>

<img src="C:\Users\lenovo\Pictures\Saved\ Pictures\foto.png" alt="Logo" height="40">

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="index.php">
        <img src="C:\Users\lenovo\Pictures\Saved\ Pictures\foto.png" alt="Logo" height="40">
    </a>
    <ul class="navbar-nav">
        <li class="nav-item"><a class="nav-link" href="index.php">Home</a></li>
        <li class="nav-item"><a class="nav-link" href="search.php">Search</a></li>
        <li class="nav-item"><a class="nav-link" href="about.php">About Us</a></li>
    </ul>
</nav>

<div class="container text-center">
    <h1>Welcome to Sigmas PC</h1>
    <h2 style="background-color: rgba(0, 123, 255, 0.1); padding: 15px 20px; border-radius: 8px; border: 2px solid #007bff; display: inline-block; font-size: 1.2rem;">
        Find the best components based on your budget.
    </h2>
    <a href="search.php" class="btn btn-primary">Search for Components</a>
</div>

</body>
</html>
