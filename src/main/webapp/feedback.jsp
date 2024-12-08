<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #388e3c;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
        }

        .navbar-links {
            display: flex;
            gap: 15px;
        }

        .navbar-links a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            font-size: 18px;
            display: inline-block;
            transition: background-color 0.3s, transform 0.3s;
        }

        .navbar-links a:hover {
            background-color: #1abc9c;
            color: #fff;
            transform: scale(1.1);
        }

        .container {
            margin-top: 70px;
            padding: 20px;
        }

        .feedback-form {
            display: flex;
            flex-direction: column;
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        .feedback-form textarea {
            padding: 12px;
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .submit-btn {
            padding: 12px;
            background-color: #388e3c;
            color: white;
            border-radius: 5px;
            cursor: pointer;
            border: none;
        }

        .submit-btn:hover {
            background-color: #2c6e49;
        }

        footer {
            background-color: #388e3c;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <div class="brand">Feedback</div>
        <div class="navbar-links">
            <a href="#"><i class="fas fa-home"></i> Home</a>
            <a href="#"><i class="fas fa-info-circle"></i> About Us</a>
            <a href="#"><i class="fas fa-envelope"></i> Contact Us</a>
        </div>
    </div>

    <!-- Main Content -->
    <div class="container">
        <h2>We Value Your Feedback</h2>
        <div class="feedback-form">
            <textarea placeholder="Enter your feedback here..." rows="5"></textarea>
            <button class="submit-btn">Submit Feedback</button>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        Buyer Footer
    </footer>
</body>
</html>
