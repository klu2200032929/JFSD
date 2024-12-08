<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* General body styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        /* Navbar styling */
        .navbar {
            background-color: #009aa3;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
        }

        .navbar .brand {
            font-size: 24px;
            color: white;
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
            background-color: #006f7c;
            transform: scale(1.1);
            border-radius: 5px;
        }

        /* Container for the dashboard content */
        .container {
            margin-top: 80px; /* Adjust to avoid navbar overlap */
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #009aa3;
        }

        /* Service icons section */
        .services {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
            justify-items: center;
            padding: 20px;
        }

        .service {
            background-color: #fff;
            border-radius: 10px;
            padding: 30px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .service:hover {
            transform: scale(1.05);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        .service a {
            color: #009aa3;
            text-decoration: none;
            display: block;
        }

        .service a i {
            font-size: 50px; /* Icon size */
            margin-bottom: 10px;
        }

        .service a p {
            font-size: 18px;
            color: #333;
            margin-top: 10px;
        }

        /* Footer styling */
        footer {
            background-color: #009aa3;
            color: white;
            text-align: center;
            padding: 20px;
            margin-top: 40px;
        }

        /* Media queries for responsiveness */
        @media (max-width: 768px) {
            .services {
                grid-template-columns: 1fr;
            }
        }

    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <div class="brand">
            Product Moderation
        </div>
        <div class="navbar-links">
            <a href="admin-dashboard.jsp"><i class="fas fa-home"></i> Home</a>
            <a href="#"><i class="fas fa-info-circle"></i> About Us</a>
            <a href="#"><i class="fas fa-envelope"></i> Contact</a>
        </div>
    </div>

    <!-- Main content -->
    <div class="container">
        <h2>Admin Actions</h2>
        
        <!-- Service Icons Grid -->
        <div class="services">
            <div class="service">
                <a href="#">
                    <i class="fas fa-user-plus"></i>
                    <p>Add Product</p>
                </a>
            </div>
            <div class="service">
                <a href="#">
                    <i class="fas fa-users"></i>
                    <p>View All Products</p>
                </a>
            </div>
            <div class="service">
                <a href="#">
                    <i class="fas fa-user-edit"></i>
                    <p>Update Product</p>
                </a>
            </div>
            <div class="service">
                <a href="#">
                    <i class="fas fa-user-minus"></i>
                    <p>Delete Product</p>
                </a>
            </div>
        </div>

    </div>

    <!-- Footer -->
    <footer>
        &copy; 2024 Admin Dashboard
    </footer>

</body>
</html>
