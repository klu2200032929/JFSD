<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buyer Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* Basic styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        /* Navbar styling */
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
            box-sizing: border-box;
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
            background-color: #4de352;
            color: #fff;
            transform: scale(1.1);
            border-radius: 8px;
        }

        /* Main Content Area */
        .container {
            margin-top: 70px;
            padding: 20px;
            text-align: center;
        }

        h2 {
            color: #388e3c;
        }

        /* Services Section */
        .services {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 30px;
            padding: 20px;
            justify-items: center;
        }

        .service {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
            width: 120px;
            transition: transform 0.3s;
            color: inherit;
            text-decoration: none;
        }

        .service:hover {
            transform: scale(1.1);
            cursor: pointer;
        }

        .service i {
            font-size: 40px;
            color: #388e3c;
        }

        .service p {
            font-size: 14px;
            margin-top: 10px;
            color: #555;
        }

        /* Footer (optional) */
        footer {
            background-color: #388e3c;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        .navbar .brand {
            font-size: 24px;
            color: white;
        }

        /* Dropdown Container */
        .dropdown {
            position: relative;
            display: inline-block;
        }

        /* Dropdown Content (the pop-up menu) */
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #388e3c;
            min-width: 160px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
            right: 0;
            border-radius: 8px;
        }

        /* Links inside the dropdown */
        .dropdown-content a {
            color: white;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            font-size: 16px;
        }

        /* Change color when hovering over the links */
        .dropdown-content a:hover {
            background-color: #4de352;
            border-radius: 8px;
        }

        /* Display the dropdown content when hovered */
        .dropdown:hover .dropdown-content {
            display: block;
        }

        /* Media Queries for responsiveness */
        @media (max-width: 1200px) {
            .services {
                grid-template-columns: repeat(3, 1fr);
            }

            .navbar-links a {
                font-size: 16px;
                padding: 8px 16px;
            }
        }

        @media (max-width: 900px) {
            .services {
                grid-template-columns: repeat(2, 1fr);
            }

            .navbar-links {
                flex-direction: column;
                gap: 10px;
            }

            .navbar-links a {
                font-size: 14px;
                padding: 8px;
            }
        }

        @media (max-width: 600px) {
            .services {
                grid-template-columns: 1fr;
                gap: 20px;
            }

            .navbar-links a {
                font-size: 14px;
                padding: 6px 12px;
            }

            footer {
                font-size: 12px;
                padding: 5px;
            }
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <div class="brand">Buyer Dashboard</div>
        <div class="navbar-links">
            <a href="#"><i class="fas fa-home"></i> Home</a>
            <a href="AboutUs1.jsp"><i class="fas fa-info-circle"></i> About Us</a>
            <a href="ContactUs1.jsp"><i class="fas fa-envelope"></i> Contact Us</a>
            <div class="dropdown">
                <a href="javascript:void(0)"><i class="fas fa-user-circle"></i> Profile</a>
                <div class="dropdown-content">
                    <a href="BuyerProfile">View Profile</a>
                    <a href="editProfile.jsp">Edit Profile</a>
                    <a href="buyerlogout">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Main Content -->
    <div class="container">
        <h2>Buyer Dashboard</h2>

        <!-- Services Icons Stack -->
        <div class="services">
            <a href="productBrowsing" class="service">
                <i class="fas fa-th-list"></i>
                <p>Product Browsing</p>
            </a>
            <a href="orderPlacement.jsp" class="service">
                <i class="fas fa-cart-plus"></i>
                <p>Order Placement & Payment</p>
            </a>
            <a href="orderTracking.jsp" class="service">
                <i class="fas fa-shipping-fast"></i>
                <p>Order Tracking</p>
            </a>
            <a href="notifications.jsp" class="service">
                <i class="fas fa-bell"></i>
                <p>Notifications & Alerts</p>
            </a>
            <a href="https://forms.office.com/Pages/ResponsePage.aspx?id=PsiMgEal50egP3Oh67ok87RhZU4TRf9LnQ7faYvk2BdUMzJYTFJJVzVBRlAzTzhSOU5SN01QQkg0Ni4u" class="service">
                <i class="fas fa-comment-dots"></i>
                <p>Review & Feedback</p>
            </a>
            <a href="orderHistory.jsp" class="service">
                <i class="fas fa-history"></i>
                <p>Order History & Reordering</p>
            </a>
            <a href="viewcart" class="service">
                <i class="fas fa-heart"></i>
                <p>Wishlist & Product Follow</p>
            </a>
            <a href="helpCenter.jsp" class="service">
                <i class="fas fa-headset"></i>
                <p>Help Center & Support</p>
            </a>
            <a href="ratings.jsp" class="service">
                <i class="fas fa-star"></i>
                <p>User Ratings & Trust</p>
            </a>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        Buyer Dashboard Footer
    </footer>
</body>
</html>
