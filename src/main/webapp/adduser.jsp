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
            font-family: 'Segoe UI', Arial, sans-serif;
            background: linear-gradient(135deg, #d9f2d9, #8bc34a);
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
            border-radius: 16px;
            padding: 30px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
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
            font-size: 2rem;
            color: #4caf50;
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
            gap: 20px;
        }

        .button-container button {
            background: #4caf50;
            color: #fff;
            font-size: 1rem;
            padding: 12px 20px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .button-container button:hover {
            background: #388e3c;
            transform: scale(1.05);
        }

        .footer {
            margin-top: 20px;
            text-align: center;
        }

        .footer a {
            color: #6d4c41;
            text-decoration: none;
            font-size: 0.9rem;
            transition: color 0.3s;
        }

        .footer a:hover {
            color: #4e342e;
        }

        .icon {
            font-size: 1.2rem;
        }

        /* Responsive Design */
        @media (max-width: 480px) {
            .form-container {
                padding: 20px;
            }

            .form-container h1 {
                font-size: 1.7rem;
            }
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <div class="form-container">
        <h1>Add New User</h1>
        <div class="button-container">
            <button onclick="location.href='registerFarmer.jsp'">
                <i class="fas fa-tractor icon"></i> Farmer
            </button>
            <button onclick="location.href='registerBuyer.jsp'">
                <i class="fas fa-shopping-cart icon"></i> Buyer
            </button>
        </div>
        <div class="footer">
            <a href="manageUsers.jsp"><i class="fas fa-arrow-left"></i> Return to Home</a>
        </div>
    </div>
</body>
</html>
