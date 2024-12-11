<%@ page contentType="text/html;charset=UTF-8" %>
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
            background-color: #388e3c;
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
            background-color: #1abc9c;
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
            color: #388e3c;
        }

        /* Service icons section */
        .services {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
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
            color: #388e3c;
            text-decoration: none;
            display: block;
        }

        .service a i {
            font-size: 45px; /* Icon size */
        }

        .service a p {
            font-size: 14px;
            color: #555;
            margin-top:10px; 
        }

        /* Footer styling */
        footer {
            background-color: #388e3c;
            color: white;
            text-align: center;
            padding: 20px;
            margin-top: 40px;
        }

        /* Media queries for responsiveness */
        @media (max-width: 768px) {
            .services {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 480px) {
            .services {
                grid-template-columns: 1fr;
            }
        }
		
		.dropdown {
		    position: relative;
		    display: inline-block;
		}
		
		/* Dropdown Content (the pop-up menu) */
		.dropdown-content {
		    display: none;
		    position: absolute;
		    background-color: #388e3c;  /* Green color for the dropdown */
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
		    background-color: #4de352;  /* Lighter green when hovered */
		    border-radius: 8px;
		}
		
		/* Display the dropdown content when hovered */
		.dropdown:hover .dropdown-content {
		    display: block;
		}
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <div class="brand">
            Admin Dashboard
        </div>
        <div class="navbar-links">
            <a href="#"><i class="fas fa-home"></i> Home</a>
            <a href="AboutUs2.jsp"><i class="fas fa-info-circle"></i> About Us</a>
            <a href="ContactUs2.jsp"><i class="fas fa-envelope"></i> Contact Us</a>
            <div class="dropdown">
			    <a href="javascript:void(0)"><i class="fas fa-user-circle"></i> Profile</a>
			    <div class="dropdown-content">
			        <a href="AdminProfile">View Profile</a>
			        <a href="editProfile">Edit Profile</a>
			        <a href="adminlogout">Logout</a>
			    </div>
			</div>
        </div>
    </div>

    <!-- Main content -->
    <div class="container">
        <h2>Admin Dashboard</h2>
        
        <!-- Service Icons Grid -->
        <div class="services">
            <div class="service">
                <a href="manageUsers.jsp">
                    <i class="fas fa-users"></i>
                    <p>Manage Users</p>
                </a>
            </div>
            <div class="service">
                <a href="productModeration.jsp">
                    <i class="fas fa-cogs"></i>
                    <p>Product Moderation</p>
                </a>
            </div>
            <div class="service">
                <a href="orderManagement.jsp">
                    <i class="fas fa-box"></i>
                    <p>Order Management</p>
                </a>
            </div>
            <div class="service">
                <a href="helpSupport">
                    <i class="fas fa-question-circle"></i>
                    <p>Help & Support</p>
                </a>
            </div>
            <div class="service">
                <a href="shippingAndDelivery.jsp">
                    <i class="fas fa-truck"></i>
                    <p>Shipping & Delivery</p>
                </a>
            </div>
            <div class="service">
                <a href="settings.jsp">
                    <i class="fas fa-users-cog"></i>
                    <p>Settings</p>
                </a>
            </div>
        </div>

    </div>

    <!-- Footer -->
    <footer>
        Admin Dashboard Footer
    </footer>

</body>
</html>
