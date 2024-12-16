<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <style>
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
            font-family: 'Roboto', Arial, sans-serif;
            background: linear-gradient(to bottom, #f9f5ec, #d9e4dd);
            color: #333;
        }

        .login-container {
            width: 90%;
            max-width: 500px;
            padding: 40px;
            background-color: #fff;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
            text-align: center;
        }

        .login-container h1 {
            font-size: 2.2rem;
            font-weight: bold;
            color: #4a7c59;
            margin-bottom: 15px;
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
            font-size: 1rem;
            color: #555;
            width: 100%;
            text-align: left;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px;
            font-size: 1rem;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 10px;
            transition: border 0.3s ease;
        }

        input:focus {
            border-color: #4a7c59;
            outline: none;
        }

        button {
            width: 100%;
            padding: 14px;
            font-size: 1.1rem;
            font-weight: bold;
            color: #fff;
            background-color: #4a7c59;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #3d674a;
        }

        .footer {
            margin-top: 25px;
            font-size: 0.9rem;
            color: #777;
        }

        .footer a {
            color: #4a7c59;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s;
        }

        .footer a:hover {
            color: #3d674a;
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
            Don't have an account? <a href="index.jsp">Register here</a>
        </div>
    </div>
</body>
</html>
