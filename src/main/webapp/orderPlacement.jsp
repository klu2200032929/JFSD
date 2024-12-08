<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Placement</title>
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
            max-width: 800px;
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

        .order-form {
            display: flex;
            flex-direction: column;
        }

        .input-field {
            margin-bottom: 20px;
            padding: 12px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .submit-btn {
            padding: 12px;
            background-color: #388e3c;
            color: white;
            border-radius: 5px;
            cursor: pointer;
            border: none;
        }

        .submit-btn:hover {
            background-color: #2c6e49;
        }
    </style>
</head>
<body>

    <div class="navbar">
        <h1>Place Your Order</h1>
    </div>

    <div class="container">
        <h2>Order Information</h2>
        <form action="submitOrder.jsp" method="POST" class="order-form">
            <input type="text" name="productName" class="input-field" placeholder="Product Name" required>
            <input type="number" name="quantity" class="input-field" placeholder="Quantity" required>
            <input type="text" name="address" class="input-field" placeholder="Shipping Address" required>
            <button type="submit" class="submit-btn">Place Order</button>
        </form>
    </div>

</body>
</html>
