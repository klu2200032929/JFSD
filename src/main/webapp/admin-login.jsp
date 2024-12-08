<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <style>
        /* Same CSS as the farmer and buyer login pages */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom right, #00c4cc, #009aa3);
            color: #333;
        }

        .login-container {
            width: 90%;
            max-width: 400px;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
            text-align: center;
            animation: fadeIn 0.8s ease;
        }

        .login-container h1 {
            font-size: 1.8rem;
            font-weight: bold;
            color: #009aa3;
            margin-bottom: 10px;
        }

        .login-container p {
            font-size: 1rem;
            color: #555;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        label {
            font-size: 0.9rem;
            color: #555;
            width: 100%;
            max-width: 400px;
            text-align: left;
            margin-bottom: 5px;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px;
            font-size: 1rem;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            transition: border 0.3s ease;
        }

        input:focus {
            border-color: #009aa3;
            outline: none;
        }

        button {
            width: 100%;
            padding: 12px;
            font-size: 1rem;
            font-weight: bold;
            color: #ffffff;
            background-color: #00c4cc;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-top: 10px;
        }

        button:disabled {
            background-color: #ccc;
            cursor: not-allowed;
        }

        button:hover:enabled {
            background-color: #007f89;
        }

        .footer {
            margin-top: 15px;
            font-size: 0.9rem;
            color: #777;
        }

        .footer a {
            color: #009aa3;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s;
        }

        .footer a:hover {
            color: #005f65;
        }

        .error-message {
            color: red;
            font-size: 0.9rem;
            margin-top: -15px;
            margin-bottom: 15px;
            display: none;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>Admin Login</h1>
        <p>Welcome, Admin! Please enter your credentials to access your admin dashboard.</p>
        <form id="adminLoginForm" action="checkadminlogin" method="post">
            <label for="username">Username</label>
            <input type="text" name="auname" placeholder="Enter your username" required>

            <label for="password">Password</label>
            <input type="password" name="apwd" placeholder="Enter your password" required>

            <div class="error-message" id="errorMessage"></div>
            
            

            <button type="submit" id="submitButton">Login</button>
        </form>

        <div class="footer">
            Don't have an account? <a href="admin-register.jsp">Register here</a>
        </div>
    </div>

    
</body>
</html>
