<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add User</title>
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
            text-align: center;
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

        .button-container {
            display: flex;
            justify-content: center;
            gap: 15px;
        }

        .button-container button {
            background: #00c4cc;
            color: #fff;
            font-size: 1rem;
            padding: 12px 20px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .button-container button:hover {
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
    <div class="form-container">
        <h1>Add New User</h1>
        <div class="button-container">
            <button onclick="location.href='registerFarmer.jsp'">Farmer</button>
            <button onclick="location.href='registerBuyer.jsp'">Buyer</button>
        </div>
        <div class="footer">
            <a href="manageUsers.jsp">Return to Home</a>
        </div>
    </div>
</body>
</html>
