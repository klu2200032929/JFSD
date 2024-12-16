<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update User</title>
    <style>
        /* Reset and general styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #00c4cc, #009aa3);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            color: #333;
        }

        .form-container {
            background: #fff;
            width: 90%;
            max-width: 450px;
            border-radius: 12px;
            padding: 30px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            animation: fadeIn 0.8s ease-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .form-container h1 {
            font-size: 1.8rem;
            color: #007f89;
            margin-bottom: 20px;
            text-align: center;
        }

        .form-container p {
            text-align: center;
            font-size: 1rem;
            color: #555;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-size: 0.95rem;
            color: #555;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="email"],
        input[type="number"] {
            padding: 12px;
            font-size: 1rem;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            transition: border-color 0.3s;
        }

        input:focus {
            border-color: #009aa3;
            outline: none;
        }

        .radio-group {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .radio-group label {
            font-size: 1rem;
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .radio-group input[type="radio"] {
            margin-right: 5px;
        }

        button {
            background: #00c4cc;
            color: #fff;
            font-size: 1rem;
            padding: 12px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:disabled {
            background-color: #ccc;
            cursor: not-allowed;
        }

        button:hover:enabled {
            background: #007f89;
        }

        .footer {
            margin-top: 20px;
            text-align: center;
        }

        .footer a {
            color: #009aa3;
            text-decoration: none;
            font-size: 0.9rem;
            transition: color 0.3s;
        }

        .footer a:hover {
            color: #005f65;
        }

        /* Responsive Design */
        @media (max-width: 480px) {
            .form-container {
                padding: 20px;
            }

            .form-container h1 {
                font-size: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <div class="register-container">
        <h1>Update User</h1>
        <p>Modify the details of an existing user.</p>
        <form id="updateUserForm" action="updateuser" method="post">
            <label for="userId">User ID</label>
            <input type="number" id="userId" name="userId" placeholder="Enter user ID" required>

            <label for="username">Username</label>
            <input type="text" id="username" name="username" placeholder="Enter new username" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Enter new email" required>

            <label for="role">Role</label>
            <input type="text" id="role" name="role" placeholder="Enter new role" required>

            <label for="contactno">Contact Number</label>
            <input type="number" id="contactno" name="contactno" placeholder="Enter new contact number" required>

            <button type="submit">Update User</button>
        </form>

        <div class="footer">
            <a href="manageUsers.jsp">Go back to Home</a>
        </div>
    </div>
</body>
</html>
