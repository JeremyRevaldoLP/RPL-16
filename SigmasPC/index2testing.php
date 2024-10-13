<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home | PC Component Store</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f4f4f4;
        }
        .container {
            width: 100%;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
        .navbar {
            background-color: #333;
            color: #fff;
            padding: 10px 0;
            width: 100%;
        }
        .navbar a {
            color: #fff;
            text-decoration: none;
            padding: 0 15px;
        }
        h1 {
            margin: 20px 0;
        }
        p {
            margin-bottom: 20px;
        }
        .btn {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="index.pbp">Home</a>
        <a href="search.php">Search</a>
        <a href="about.php">About</a>
    </div>
    <div class="container">
        <h1>Welcome to Sigmas PC</h1>
        <p>Find the best components based on your budget.</p>
        <a href="search.php" class="btn">Search for Components</a>
    </div>
</body>
</html>
