<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <style>
        /* Redesigned CSS for index.html with a theme suitable for a farmers' support platform */

        body {
            background-color: #f4f4f4;
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .home-container {
            text-align: center;
            max-width: 600px;
            padding: 40px 20px;
            background-color: #ffffff;
            border-radius: 25px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            border: 2px solid #a3c59c;
        }

        .home-container h1 {
            color: #4e763e;
            font-size: 32px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .home-container p {
            font-size: 18px;
            color: #6b6b6b;
            margin-bottom: 25px;
        }

        .home-container ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .home-container ul li {
            display: inline-block;
            margin: 0 10px;
        }

        .home-container ul li a {
            color: #ffffff;
            background-color: #4e763e;
            padding: 12px 25px;
            font-size: 18px;
            font-weight: bold;
            text-decoration: none;
            border-radius: 30px;
            transition: background-color 0.3s, transform 0.2s;
        }

        .home-container ul li a:hover {
            background-color: #3a5c2c;
            transform: scale(1.05);
        }

        .popup {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            display: none;
            justify-content: center;
            align-items: center;
            z-index: 10;
        }

        .popup-content {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
            width: 300px;
            text-align: center;
            border: 2px solid #a3c59c;
        }

        .popup-content h2 {
            font-size: 24px;
            color: #4e763e;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .popup-content ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        .popup-content li {
            padding: 10px 0;
            font-size: 18px;
            border-bottom: 1px solid #ddd;
        }

        .popup-content li:last-child {
            border-bottom: none;
        }

        .popup-content li a {
            color: #4e763e;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s, color 0.3s, font-size 0.3s;
            padding: 10px;
            display: block;
            border-radius: 10px;
        }

        .popup-content li a:hover {
            color: #ffffff;
            background-color: #3a5c2c;
            font-size: 20px;
        }
    </style>
</head>
<body>
    <div class="home-container">
        <h1>Welcome to Farmers' Platform!</h1>
        <p>Empowering farmers to create value-added products and connect with global buyers.</p>
        <ul>
            <li><a href="#" id="login-button">Login</a></li>
            <li><a href="#" id="register-button">Register</a></li>
        </ul>
    </div>
    
    <!-- Login Popup -->
    <div class="popup" id="login-popup">
        <div class="popup-content">
            <h2>Login</h2>
            <ul>
                <li><a href="admin-login.jsp">Admin</a></li>
                <li><a href="farmer-login.jsp">Farmer</a></li>
                <li><a href="buyer-login.jsp">Buyer</a></li>
            </ul>
        </div>
    </div>

    <!-- Register Popup -->
    <div class="popup" id="register-popup">
        <div class="popup-content">
            <h2>Register</h2>
            <ul>
                <li><a href="farmer-register.jsp">Farmer</a></li>
                <li><a href="buyer-register.jsp">Buyer</a></li>
            </ul>
        </div>
    </div>

    <script>
        // Toggle Login Popup
        document.getElementById("login-button").addEventListener("click", function() {
            document.getElementById("login-popup").style.display = "flex";
        });

        // Toggle Register Popup
        document.getElementById("register-button").addEventListener("click", function() {
            document.getElementById("register-popup").style.display = "flex";
        });

        // Close Popup if clicking outside the content area
        window.addEventListener("click", function(event) {
            if (event.target == document.getElementById("login-popup")) {
                document.getElementById("login-popup").style.display = "none";
            }
            if (event.target == document.getElementById("register-popup")) {
                document.getElementById("register-popup").style.display = "none";
            }
        });
    </script>
</body>
</html>
