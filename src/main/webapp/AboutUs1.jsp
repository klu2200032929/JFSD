<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
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

        .about-us {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
        }

        .about-us h2 {
            font-size: 30px;
            margin-bottom: 20px;
        }

        .about-us p {
            font-size: 18px;
            line-height: 1.6;
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
        <h2>AgriValue Connect</h2>
        <div class="navbar-links">
            <a href="buyer-dashboard.jsp"><i class="fas fa-home"></i> Home</a>
            <a href="AboutUs1.jsp"><i class="fas fa-info-circle"></i> About Us</a>
            <a href="ContactUs1.jsp"><i class="fas fa-envelope"></i> Contact Us</a>
        </div>
    </div>

    <!-- Main Content -->
    <div class="container">
        <!-- About Us Section -->
        <div class="about-us">
            <h2>About AgriValue Connect</h2>
            <p>AgriValue Connect is a platform dedicated to empowering farmers by helping them turn their crops into more valuable products, such as processed foods, handmade goods, and other agricultural by-products. Our mission is to promote rural entrepreneurship and create opportunities for farmers to expand their businesses globally.</p>
            <p>We connect farmers with global buyers, offering them a marketplace where they can list their products, manage inventory, and engage with customers. Through our platform, farmers gain access to technology, tools, and a supportive community to grow their businesses.</p>
            <p>Our goal is to foster sustainability, improve agricultural practices, and provide farmers with the resources they need to thrive in today's competitive marketplace.</p>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        &copy; 2024 AgriValue Connect. All Rights Reserved.
    </footer>
</body>
</html>
