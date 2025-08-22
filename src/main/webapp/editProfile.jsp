<%@page import="com.klef.jfsd.springboot.model.Farmer"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
	Farmer farmer = (Farmer)session.getAttribute("farmer");
	if(farmer==null)
	{
		response.sendRedirect("index.jsp");
		return;
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }

        .navbar {
            background-color: #388e3c;
            padding: 15px 30px;
            color: white;
            text-align: center;
            font-size: 20px;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 10px;
            margin-left: 20px;
            font-size: 16px;
        }

        .edit-profile-container {
            max-width: 600px;
            margin: 30px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .edit-profile-container h2 {
            color: #388e3c;
            text-align: center;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            font-size: 16px;
            color: #333;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }

        .action-buttons {
            display: flex;
            justify-content: center;
        }

        .action-buttons button {
            padding: 10px 20px;
            background-color: #388e3c;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .action-buttons button:hover {
            background-color: #4de352;
        }

        footer {
            background-color: #388e3c;
            color: white;
            text-align: center;
            padding: 15px;
            margin-top: 40px;
        }

    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <a href="farmer-dashboard.jsp">Dashboard</a>
        <a href="logout.jsp">Logout</a>
    </div>

    <!-- Edit Profile Container -->
    <div class="edit-profile-container">
        <h2>Edit Your Profile</h2>
        <form action="https://jfsd.onrender.com/update" method="post">
        	<div class="form-group">
                <label for="id">ID:</label>
                <input type="number" id="id" name="id" value="<%=farmer.getId()%>" readonly required>
            </div>
            <div class="form-group">
                <label for="name">Full Name:</label>
                <input type="text" id="username" name="name" value="<%=farmer.getUsername() %>" required>
            </div>

            <div class="form-group">
                <label for="email">Email Address:</label>
                <input type="email" id="email" name="email" value="<%=farmer.getEmail() %>" readonly required>
            </div>

            <div class="form-group">
                <label for="phone">Phone Number:</label>
                <input type="text" id="contactno" name="contactno" value="<%=farmer.getContactno() %>" required>
            </div>

            <div class="form-group">
                <label for="address">Address</label>
                <input type="text" id="location" name="location" value="<%=farmer.getLocation() %>" required>
            </div>
			
			<div class="form-group">
                <label for="password">Password</label>
            	<input type="password" id="password" name="password" value="<%=farmer.getPassword() %>" required>
			</div>
            <div class="action-buttons">
                <button type="submit">Save Changes</button>
            </div>
        </form>
    </div>

    <!-- Footer -->
    <footer>
        &copy; 2024 Farmer Dashboard
    </footer>

</body>
</html>