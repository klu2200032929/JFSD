<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Details</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
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
            max-width: 900px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #388e3c;
            text-align: center;
        }

        .order-detail {
            font-size: 16px;
            color: #555;
            margin-bottom: 20px;
        }

        .btn {
            padding: 8px 15px;
            background-color: #388e3c;
            color: white;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            width: 100%;
            display: block;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #2c6e49;
        }
    </style>
</head>
<body>

    <div class="navbar">
        <h1>Order Details</h1>
    </div>

    <div class="container">
        <h2>Order ID: #12345</h2>
        
        <div class="order-detail">
            <strong>Product:</strong> Tomatoes
        </div>
        <div class="order-detail">
            <strong>Quantity:</strong> 50
        </div>
        <div class="order-detail">
            <strong>Price:</strong> $5 per unit
        </div>
        <div class="order-detail">
            <strong>Status:</strong> Pending
        </div>
        
        <div class="btn">Update Order Status</div>
    </div>

</body>
</html>
