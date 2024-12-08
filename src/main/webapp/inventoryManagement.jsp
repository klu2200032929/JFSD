<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Actions</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #388e3c;
            padding: 15px;
            color: white;
            text-align: center;
        }

        .container {
            max-width: 600px;
            margin: 100px auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #388e3c;
            text-align: center;
        }

        .action-btns {
            display: flex;
            flex-direction: column;
            gap: 15px;
            margin-top: 40px;
        }

        .btn {
            padding: 15px;
            background-color: #388e3c;
            color: white;
            text-align: center;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            font-size: 16px;
            transition: background-color 0.3s;
            width: 100%;
        }

        .btn:hover {
            background-color: #2c6e49;
        }

        .btn:focus {
            outline: none;
        }
    </style>
</head>
<body>

    <div class="navbar">
        <h1>Order Management</h1>
    </div>

    <div class="container">
        <h2>Choose an Action for Your Order</h2>

        <div class="action-btns">
            <!-- Button for Viewing Order Details -->
            <a href="viewOrderDetails.jsp" class="btn">View Order Details</a>

            <!-- Button for Updating Order Status -->
            <a href="updateOrderStatus.jsp" class="btn">Update Order Status</a>
        </div>
    </div>

</body>
</html>
