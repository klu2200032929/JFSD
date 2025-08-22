<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* General Styling */
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* Navbar Styling */
        .navbar {
            background-color: #007bff;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .navbar .brand {
            font-size: 24px;
            font-weight: bold;
            color: #fff;
        }

        .navbar-links {
            display: flex;
            gap: 15px;
        }

        .navbar-links a {
            color: white;
            text-decoration: none;
            padding: 10px 15px;
            font-size: 16px;
            border-radius: 5px;
            transition: background-color 0.3s ease-in-out;
        }

        .navbar-links a:hover {
            background-color: #0056b3;
        }

        /* Main Container */
        .container {
            max-width: 600px;
            margin: 100px auto 40px;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            animation: fadeIn 0.5s ease-in-out;
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

        h3 {
            color: #007bff;
            font-size: 28px;
            text-align: center;
            margin-bottom: 20px;
            font-weight: bold;
        }

        .product-details {
            display: grid;
            gap: 20px;
        }

        .product-details img {
            width: 100%;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .product-details p {
            margin: 0;
            font-size: 16px;
            color: #555;
        }

        .product-details .label {
            font-weight: bold;
            color: #333;
        }

        .button-container {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }

        .button-container a {
            text-decoration: none;
            padding: 10px 20px;
            color: white;
            background-color: #007bff;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s ease-in-out, transform 0.3s ease-in-out;
        }

        .button-container a:hover {
            background-color: #0056b3;
            transform: translateY(-3px);
        }

        /* Footer */
        footer {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 15px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        footer p {
            margin: 0;
        }
    </style>
</head>

<body>
    <!-- Navbar -->
    <div class="navbar">
        <div class="brand">Product Details</div>
        <div class="navbar-links">
            <a href="farmer-dashboard.jsp"><i class="fas fa-home"></i> Home</a>
            <a href="AboutUs.jsp"><i class="fas fa-info-circle"></i> About</a>
            <a href="ContactUs.jsp"><i class="fas fa-envelope"></i> Contact</a>
        </div>
    </div>

    <!-- Main Container -->
    <div class="container">
        <h3>Product Information</h3>
        <div class="product-details">
            <img src="https://jfsd.onrender.com/displayproductimage?id=${product.id}" alt="Product Image">
            <p><span class="label">ID:</span> <c:out value="${product.id}" /></p>
            <p><span class="label">Name:</span> <c:out value="${product.name}" /></p>
            <p><span class="label">Cost:</span> Rs. <c:out value="${product.cost}" /></p>
            <p><span class="label">Description:</span> <c:out value="${product.description}" /></p>
            <p><span class="label">Farmer Contact:</span> <c:out value="${product.farmer.contactno}" /></p>
            <div class="button-container">
                <a href="#" class="view-button">Add to Cart</a>
                <a href="#" class="view-button">Buy Now</a>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Product Details. All Rights Reserved.</p>
    </footer>
</body>

</html>
