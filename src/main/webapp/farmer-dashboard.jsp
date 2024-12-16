<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farmer Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* General body styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #eef7ed; /* Soft green background */
        }

        /* Navbar styling */
        .navbar {
            background-color: #2c3e50; /* Dark slate color */
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
            color: #f1c40f; /* Yellow for warmth */
            font-weight: bold;
        }

        .navbar-links {
            display: flex;
            gap: 15px;
        }

        .navbar-links a {
            color: #ecf0f1; /* Light text color */
            text-decoration: none;
            padding: 10px 15px;
            font-size: 16px;
            display: inline-block;
            transition: background-color 0.3s, transform 0.3s;
        }

        .navbar-links a:hover {
            background-color: #1abc9c; /* Fresh green */
            transform: scale(1.1);
            border-radius: 8px;
        }

        /* Container for the dashboard content */
        .container {
            margin-top: 80px; /* Adjust to avoid navbar overlap */
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #34495e; /* Deep slate */
            margin-bottom: 20px;
        }

        /* Service icons section */
        .services {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 30px; /* Space between grid items */
            justify-content: center;
            align-items: start;
            padding: 20px;
        }

        .service {
            background-color: #ffffff;
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
            color: #2c3e50; /* Match navbar color */
            text-decoration: none;
            display: block;
        }

        .service a i {
            font-size: 50px; /* Larger icon size */
            margin-bottom: 10px;
            color: #27ae60; /* Vibrant green */
        }

        .service a p {
            font-size: 16px;
            color: #555;
        }

        /* Profile dropdown menu styling */
        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #2c3e50;
            min-width: 160px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
            right: 0;
            border-radius: 8px;
        }

        .dropdown-content a {
            color: #ecf0f1; /* Light text color */
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            font-size: 16px;
        }

        .dropdown-content a:hover {
            background-color: #1abc9c;
            border-radius: 8px;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        /* Footer styling */
        footer {
            background-color: #2c3e50;
            color: #ecf0f1;
            text-align: center;
            padding: 15px;
            margin-top: 40px;
        }

        /* Media queries for responsiveness */
        @media (max-width: 768px) {
            .navbar .brand {
                font-size: 20px;
            }

            .navbar-links a {
                font-size: 14px;
                padding: 8px 10px;
            }

            h2 {
                font-size: 20px;
            }

            .service a p {
                font-size: 14px;
            }
        }

        @media (max-width: 480px) {
            .navbar {
                flex-direction: column;
                align-items: flex-start;
            }

            .navbar-links {
                flex-direction: column;
                align-items: flex-start;
                gap: 5px;
            }

            .services {
                grid-template-columns: 1fr;
            }

            .service {
                max-width: 100%;
            }
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <div class="brand">
            Farmer Dashboard
        </div>
        <div class="navbar-links">
            <a href="#"><i class="fas fa-home"></i> Home</a>
            <a href="AboutUs.jsp"><i class="fas fa-info-circle"></i> About Us</a>
            <a href="ContactUs.jsp"><i class="fas fa-envelope"></i> Contact Us</a>

            <!-- Profile Dropdown -->
            <div class="dropdown">
                <a href="javascript:void(0)"><i class="fas fa-user-circle"></i> Profile</a>
                <div class="dropdown-content">
                    <a href="viewProfile">View Profile</a>
                    <a href="editProfile">Edit Profile</a>
                    <a href="farmerlogout">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Main content -->
    <div class="container">
        <h2>Farmer Dashboard</h2>

        <!-- Service Icons Grid -->
        <div class="services">
            <!-- Individual service blocks -->
            <div class="service">
                <a href="addProduct.jsp">
                    <i class="fas fa-seedling"></i>
                    <p>Add Product</p>
                </a>
            </div>
            <div class="service">
                <a href="viewProducts">
                    <i class="fas fa-list"></i>
                    <p>View Products</p>
                </a>
            </div>
            <div class="service">
                <a href="deleteProduct">
                    <i class="fas fa-trash"></i>
                    <p>Delete Product</p>
                </a>
            </div>
            <div class="service">
                <a href="updateProduct.jsp">
                    <i class="fas fa-pencil-alt"></i>
                    <p>Update Product</p>
                </a>
            </div>
            <div class="service">
                <a href="orderManagement.jsp">
                    <i class="fas fa-box"></i>
                    <p>Order Management</p>
                </a>
            </div>
            <div class="service">
                <a href="inventoryManagement.jsp">
                    <i class="fas fa-warehouse"></i>
                    <p>Inventory Management</p>
                </a>
            </div>
            <div class="service">
                <a href="transactions.jsp">
                    <i class="fas fa-chart-bar"></i>
                    <p>Transaction & Earnings</p>
                </a>
            </div>
            <div class="service">
                <a href="buyerSupport.jsp">
                    <i class="fas fa-hands-helping"></i>
                    <p>Buyer Interaction & Support</p>
                </a>
            </div>
            <div class="service">
                <a href="analytics.jsp">
                    <i class="fas fa-chart-pie"></i>
                    <p>Analytics & Reports</p>
                </a>
            </div>
            <div class="service">
                <a href="productSearch">
                    <i class="fas fa-search"></i>
                    <p>Product Browsing & Searching</p>
                </a>
            </div>
            <div class="service">
                <a href="orderPlacement.jsp">
                    <i class="fas fa-shopping-cart"></i>
                    <p>Order Placement & Payment</p>
                </a>
            </div>
            <div class="service">
                <a href="orderTracking.jsp">
                    <i class="fas fa-location">               </i>
                    <p>Order Tracking</p>
                </a>
            </div>
            <div class="service">
                <a href="videosOnValueAddedProducts.jsp">
                    <i class="fas fa-video"></i>
                    <p>Videos on Value Added Products</p>
                </a>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Farmer Dashboard. All rights reserved.</p>
    </footer>
</body>
</html>
                    
