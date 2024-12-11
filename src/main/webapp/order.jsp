<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Product</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* Existing styles */
        body {
            font-family: 'Roboto', Arial, sans-serif;
            background: linear-gradient(to bottom, #f5f9f6, #e1f5eb);
            margin: 0;
            padding: 0;
            color: #333;
        }
        /* Other styles remain unchanged */
        
        

        /* Navbar Styling */
        .navbar {
            background-color: #2c6e49;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 20px;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .navbar .brand {
            font-size: 26px;
            font-weight: bold;
            color: #fff;
            text-transform: uppercase;
        }

        .navbar-links {
            display: flex;
            gap: 20px;
        }

        .navbar-links a {
            color: white;
            text-decoration: none;
            padding: 10px 15px;
            font-size: 16px;
            transition: background-color 0.3s ease, transform 0.3s ease;
            border-radius: 5px;
        }

        .navbar-links a:hover {
            background-color: #1d5a39;
            transform: scale(1.1);
        }

        /* Main Container */
        .container {
            max-width: 1200px;
            margin: 100px auto 40px;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #2c6e49;
            font-size: 36px;
            text-align: center;
            margin-bottom: 25px;
            font-weight: bold;
        }

        .order-card {
            background-color: #fafafa;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            display: flex;
            justify-content: space-between;
            align-items: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .order-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.2);
        }

        .order-card img {
            width: 200px;
            height: 200px;
            object-fit: cover;
            border-radius: 8px;
        }

        .order-info {
            flex-grow: 1;
            padding-left: 20px;
        }

        .order-info h3 {
            color: #388e3c;
            font-size: 24px;
            margin-bottom: 10px;
        }

        .order-info p {
            color: #555;
            font-size: 16px;
            margin: 5px 0;
        }

        .price {
            color: #2c6e49;
            font-size: 20px;
            font-weight: bold;
        }

        .button-container {
            display: flex;
            gap: 15px;
            align-items: center;
        }

        .button-container button,
        .button-container a {
            background-color: #2c6e49;
            color: #fff;
            padding: 10px 15px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 14px;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .button-container button:hover,
        .button-container a:hover {
            background-color: #1d5a39;
            transform: scale(1.05);
        }

        /* Footer */
        footer {
            background-color: #2c6e49;
            color: white;
            text-align: center;
            padding: 15px 20px;
            margin-top: 40px;
        }

        footer p {
            margin: 0;
        }
    </style>
</head>

<body>
    <!-- Navbar -->
    <div class="navbar">
        <div class="brand">Product Order</div>
        <div class="navbar-links">
            <a href="buyer-dashboard.jsp"><i class="fas fa-home"></i> Home</a>
            <a href="AboutUs1.jsp"><i class="fas fa-info-circle"></i> About</a>
            <a href="ContactUs1.jsp"><i class="fas fa-envelope"></i> Contact</a>
        </div>
    </div>

    <!-- Main Container -->
    <div class="container">
        <h2>Order Details</h2>
        <div class="order-card">
            <img src="/productimage?id=${product.id}" alt="Product Image">
            <div class="order-info">
                <h3>${product.name}</h3>
                <p><strong>Product ID:</strong> ${product.id}</p>
                <p><strong>Description:</strong> ${product.description}</p>
                <p class="price">Price: Rs. ${product.cost}</p>
                <p><strong>Farmer Contact:</strong> ${product.farmer.contactno}</p>
            </div>
            <div class="button-container">
                <form method="post" action="/confirm/${product.id}">
                    <label>
                        <input type="radio" name="paymentMethod" value="cod" required>
                        Cash on Delivery
                    </label>
                    <label>
                        <input type="radio" name="paymentMethod" value="upi" required>
                        UPI Payment
                    </label>
                    <button type="submit">Confirm Purchase</button>
                </form>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Product Order. All Rights Reserved.</p>
    </footer>
</body>

</html>
