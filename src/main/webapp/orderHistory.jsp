<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order History</title>
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

        .order-history {
            margin-top: 20px;
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        .order-item {
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px;
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }

        .order-item:last-child {
            border-bottom: none;
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
        <div class="brand">Order History</div>
        <div class="navbar-links">
            <a href="#"><i class="fas fa-home"></i> Home</a>
            <a href="#"><i class="fas fa-info-circle"></i> About Us</a>
            <a href="#"><i class="fas fa-envelope"></i> Contact Us</a>
        </div>
    </div>

    <!-- Main Content -->
    <div class="container">
        <h2>Order History</h2>
        <div class="order-history">
            <!-- Example Order Items -->
            <div class="order-item">
                <div>Order ID: 12345</div>
                <div>Status: Shipped</div>
            </div>
            <div class="order-item">
                <div>Order ID: 12346</div>
                <div>Status: Delivered</div>
            </div>
            <!-- Add more order items here -->
        </div>
    </div>

    <!-- Footer -->
    <footer>
        Buyer Footer
    </footer>
</body>
</html>
