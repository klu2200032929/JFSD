<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notifications</title>
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

        .notifications-list {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .notification-item {
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px;
        }

        .notification-item p {
            margin: 0;
            font-size: 16px;
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
        <div class="brand">Notifications</div>
        <div class="navbar-links">
            <a href="#"><i class="fas fa-home"></i> Home</a>
            <a href="#"><i class="fas fa-info-circle"></i> About Us</a>
            <a href="#"><i class="fas fa-envelope"></i> Contact Us</a>
        </div>
    </div>

    <!-- Main Content -->
    <div class="container">
        <h2>Your Notifications</h2>
        <div class="notifications-list">
            <div class="notification-item">
                <p>You have a new message regarding your order.</p>
                <span>1 hour ago</span>
            </div>
            <div class="notification-item">
                <p>Your wishlist item is now on sale!</p>
                <span>3 hours ago</span>
            </div>
            <!-- Add more notifications here -->
        </div>
    </div>

    <!-- Footer -->
    <footer>
       Buyer Footer
    </footer>
</body>
</html>
