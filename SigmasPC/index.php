<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home | PC Component Store</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Amaranth:ital,wght@0,400;0,700;1,400;1,700&family=Lilita+One&family=MuseoModerno:ital,wght@0,100..900;1,100..900&family=Righteous&display=swap" rel="stylesheet">
    
    <!-- Inline CSS for Background Video and Animated Gradient Text -->
    <style>
        body {
            margin: 0;
            font-family: 'MuseoModerno', 'Lilita-One'; /* Default font for the whole page */
            color: #333333; /* Default text color */
            overflow: hidden; /* Prevent scrolling */
        }

        /* Video Background */
        #video-background {
            position: absolute; /* Changed to absolute for better positioning */
            top: 50%;
            left: 50%;
            width: 100%; /* Full width */
            height: auto; /* Maintain aspect ratio */
            z-index: -1; /* Ensure video stays behind other content */
            transform: translate(-50%, -50%); /* Center the video */
            object-fit: cover; /* Cover the container while maintaining aspect ratio */
        }

        /* Animated gradient text for the heading */
        h1 {
            font-size: 3rem; /* Adjust size as needed */
            background: linear-gradient(90deg, #C08B5C, #795458, #C08B5C, #795458); /* Multiple gradient colors */
            background-size: 300%; /* Makes the gradient larger for the animation */
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent; /* Makes the text fill transparent to show the gradient */
            animation: gradientAnimation 5s ease infinite; /* Apply animation */
        }

        h2 {
            font-size: 1,5rem; /* Adjust size as needed */
            background: linear-gradient(90deg, #795458, #795458, #795458, #795458); /* Multiple gradient colors */
            background-size: 300%; /* Makes the gradient larger for the animation */
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent; /* Makes the text fill transparent to show the gradient */
            animation: gradientAnimation 7s ease infinite; /* Apply animation */
        }

        /* Keyframes for gradient animation */
        @keyframes gradientAnimation {
            0% {
                background-position: 0% 50%; /* Start position */
            }
            50% {
                background-position: 100% 50%; /* Midpoint position */
            }
            100% {
                background-position: 0% 50%; /* Return to start */
            }
        }

        /* Navbar Link Hover Animation */
        .navbar-nav .nav-link {
         padding: 5px 10px;
         margin-right: 10px;
         border-radius: 5px;  /* Optional: Keep some border radius */
}

        .navbar-nav .nav-link:hover {
          background-color: #C08B5C;  /* Background color when hovered */
         color: #795458;  /* Change text color on hover for better visibility */
}

        .btn-primary {
        background-color: #C08B5C; /* Custom background color for the button */
        border-color: #C08B5C;     /* Custom border color */
    }

        /* Center the search button */
        .container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 70vh; /* Full height for container */
            position: relative; /* Position relative for stacking */
            z-index: 1; /* Ensure content is above the video */
        }
    </style>
</head>
<body>

<!-- Video Background -->
<video id="video-background" autoplay loop muted>
    <source src="images/web/nekobackground.mp4" type="video/mp4"> <!-- Replace with your video path -->
    Your browser does not support HTML5 video.
</video>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="index.php">
        <img src="images/web/sigmaL.png" alt="Logo" height="40"> <!-- Replace with your logo path -->
    </a>
    <ul class="navbar-nav">
        <li class="nav-item"><a class="nav-link" href="index.php">Home</a></li>
        <li class="nav-item"><a class="nav-link" href="search.php">Search</a></li>
        <li class="nav-item"><a class="nav-link" href="about.php">About Us</a></li>
    </ul>
</nav>

<div class="container text-center">
    <h1>Welcome to Sigmas PC</h1>
    <h2>Find the best components based on your budget.</h2>
    <a href="search.php" class="btn btn-primary">Search for Components</a>
</div>

</body>
</html>
