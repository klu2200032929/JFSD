<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Product</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* General Styling */
        body {
            font-family: 'Poppins', Arial, sans-serif;
            background: linear-gradient(to bottom, #a8edea, #fed6e3);
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* Navbar Styling */
        .navbar {
            background-color: #ff6f61;
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
            font-size: 28px;
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
            padding: 10px 20px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 30px;
            background-color: rgba(255, 255, 255, 0.2);
            transition: all 0.3s ease;
        }

        .navbar-links a:hover {
            background-color: #fff;
            color: #ff6f61;
            transform: scale(1.1);
        }

        /* Main Container */
        .container {
            max-width: 1200px;
            margin: 100px auto 40px;
            padding: 30px;
            background-color: #fff;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            animation: fadeIn 0.8s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h2 {
            color: #ff6f61;
            font-size: 36px;
            text-align: center;
            margin-bottom: 30px;
            font-weight: bold;
        }

        .order-card {
            background-color: #fdfdfd;
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            display: flex;
            gap: 20px;
            align-items: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .order-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.2);
        }

        .order-card img {
            width: 250px;
            height: 250px;
            object-fit: cover;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .order-info {
            flex-grow: 1;
        }

        .order-info h3 {
            color: #2c6e49;
            font-size: 26px;
            margin-bottom: 10px;
        }

        .order-info p {
            color: #555;
            font-size: 16px;
            margin: 8px 0;
        }

        .price {
            color: #ff6f61;
            font-size: 22px;
            font-weight: bold;
        }

        .button-container {
            display: flex;
            flex-direction: column;
            gap: 15px;
            align-items: flex-start;
        }

        .button-container button,
        .button-container a {
            background: linear-gradient(45deg, #ff6f61, #ffa07a);
            color: #fff;
            padding: 12px 20px;
            border-radius: 30px;
            text-decoration: none;
            font-size: 14px;
            font-weight: bold;
            border: none;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .button-container button:hover,
        .button-container a:hover {
            transform: scale(1.1);
            background: linear-gradient(45deg, #ffa07a, #ff6f61);
        }

        .quantity-selector {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .quantity-selector input {
            width: 60px;
            padding: 8px;
            text-align: center;
            font-size: 14px;
            border: 2px solid #ccc;
            border-radius: 10px;
        }

        .quantity-selector label {
            font-size: 16px;
            font-weight: bold;
            color: #444;
        }

        label input[type="radio"] {
            margin-right: 10px;
        }

        /* Footer */
        footer {
            background-color: #ff6f61;
            color: white;
            text-align: center;
            padding: 20px;
            border-top-left-radius: 20px;
            border-top-right-radius: 20px;
            box-shadow: 0 -4px 10px rgba(0, 0, 0, 0.1);
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
                    <div class="quantity-selector">
                        <label for="quantity">Quantity:</label>
                        <input type="number" id="quantity" name="quantity" min="1" value="1" required>
                    </div>
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
