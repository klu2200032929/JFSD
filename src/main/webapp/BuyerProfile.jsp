
<%@page import="com.klef.jfsd.springboot.model.Buyer"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
	Buyer buyer = (Buyer)session.getAttribute("buyer");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Profile</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* General Styles */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
            line-height: 1.6;
        }

        /* Navbar Styles */
        .navbar {
            background: linear-gradient(90deg, #4caf50, #2e7d32);
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            color: white;
            font-size: 18px;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            margin-left: 15px;
            font-size: 16px;
            transition: color 0.3s ease;
        }

        .navbar a:hover {
            color: #c8e6c9;
        }

        /* Profile Container */
        .profile-container {
            max-width: 90%; /* Adjust width for responsiveness */
            margin: 40px auto;
            padding: 20px;
            background: #fff;
            border: 1px solid #dcdcdc;
            border-radius: 12px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .profile-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 20px;
            flex-wrap: wrap;
        }

        .profile-pic {
            border-radius: 50%;
            border: 3px solid #4caf50;
            width: 120px;
            height: 120px;
            overflow: hidden;
            box-shadow: 0 0 10px rgba(76, 175, 80, 0.5);
        }

        .profile-pic img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .profile-details {
            flex-grow: 1;
            margin-left: 20px;
        }

        .profile-details h2 {
            font-size: 28px;
            color: #4caf50;
            margin-bottom: 5px;
        }

        .profile-details p {
            margin: 5px 0;
            font-size: 16px;
            color: #555;
        }

        /* Action Buttons */
        .action-buttons {
            display: flex;
            gap: 15px;
            flex-wrap: wrap;
            justify-content: center;
        }

        .action-buttons a {
            text-decoration: none;
            padding: 10px 20px;
            background: #4caf50;
            color: white;
            font-size: 16px;
            border-radius: 8px;
            border: 1px solid #388e3c;
            transition: transform 0.3s ease, background 0.3s ease, border-color 0.3s ease;
            text-align: center;
        }

        .action-buttons a:hover {
            background: #388e3c;
            border-color: #2e7d32;
            transform: scale(1.05);
        }

        /* Footer Styles */
        footer {
            background: #4caf50;
            color: white;
            text-align: center;
            padding: 15px;
            margin-top: 30px;
            border-top: 3px solid #388e3c;
        }

        footer a {
            color: #c8e6c9;
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .profile-header {
                flex-direction: column;
                align-items: center;
                text-align: center;
            }

            .profile-details {
                margin-left: 0;
            }

            .action-buttons {
                flex-direction: column;
                gap: 10px;
            }

            .profile-container {
                max-width: 95%;
            }
        }

        @media (min-width: 1200px) {
            .profile-container {
                max-width: 70%; /* For larger screens */
            }
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <span>MY PROFILE</span>
        <div>
            <a href="buyer-dashboard.jsp">Dashboard</a>
            <a href="buyerlogout">Logout</a>
        </div>
    </div>

    <!-- Profile Container -->
    <div class="profile-container">
        <div class="profile-header">
            <div class="profile-pic">
                <img src="https://via.placeholder.com/120" alt="Profile Picture"> <!-- Replace with actual profile picture -->
            </div>
            <div class="profile-details">
                <h2><%=buyer.getUsername()%></h2>
                <p><strong>ID:</strong><%=buyer.getId()%> </p>
                <p><strong>Email:</strong><%=buyer.getEmail()%> </p>
                <p><strong>Phone:</strong><%=buyer.getContactno()%> </p>
                <p><strong>Address:</strong><%=buyer.getLocation()%> </p>
            </div>
        </div>

        <!-- Action Buttons -->
        <div class="action-buttons">
            <a href="editProfile.jsp"><i class="fas fa-edit"></i> Edit Profile</a>
            <a href="changePassword.jsp"><i class="fas fa-key"></i> Change Password</a>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        &copy; 2024 <a href="#">Profile page</a>. All Rights Reserved.
    </footer>

</body>
</html>
