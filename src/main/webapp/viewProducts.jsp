<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Listing</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* General Styling */
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom, #f9f9f9, #e3f2e9);
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* Navbar Styling */
        .navbar {
            background-color: #2c6e49;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .navbar .brand {
            font-size: 24px;
            font-weight: bold;
            color: #fff;
            text-transform: uppercase;
        }

        .navbar-links {
            display: flex;
            gap: 15px;
        }

        .navbar-links a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            font-size: 16px;
            transition: background-color 0.3s, transform 0.3s;
            border-radius: 8px;
        }

        .navbar-links a:hover {
            background-color: #1d5a39;
            transform: scale(1.1);
        }

        /* Main Container */
        .container {
            max-width: 1200px;
            margin: 80px auto 40px;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #2c6e49;
            font-size: 32px;
            text-align: center;
            margin-bottom: 20px;
            font-weight: bold;
        }

        /* Product Listing */
        .product-list {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
        }

        .product-card {
            background-color: #f4f4f4;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .product-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        .product-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 8px;
            margin-bottom: 15px;
        }

        .product-card h3 {
            color: #388e3c;
            font-size: 22px;
            margin-top: 10px;
        }

        .product-card p {
            color: #555;
            font-size: 14px;
            margin: 8px 0;
        }

        .product-card .price {
            color: #2c6e49;
            font-size: 18px;
            font-weight: bold;
        }

        .product-card .button-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 15px;
        }

        .product-card .button-container a {
            background-color: #2c6e49;
            color: #fff;
            padding: 10px 15px;
            border-radius: 6px;
            text-decoration: none;
            font-size: 14px;
            transition: background-color 0.3s, transform 0.3s;
            flex: 1;
            text-align: center;
            margin: 0 5px;
        }

        .product-card .button-container a:hover {
            background-color: #1d5a39;
            transform: scale(1.05);
        }

        /* Footer */
        footer {
            background-color: #2c6e49;
            color: white;
            text-align: center;
            padding: 10px 20px;
            margin-top: 30px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        footer p {
            margin: 0;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            h2 {
                font-size: 26px;
            }

            .navbar .brand {
                font-size: 20px;
            }

            .navbar-links a {
                font-size: 14px;
                padding: 8px 15px;
            }

            .product-card .button-container {
                flex-direction: column;
                gap: 10px;
            }

            .product-card .button-container a {
                margin: 0;
            }
        }
    </style>
</head>

<body>
    <!-- Navbar -->
    <div class="navbar">
        <div class="brand">Product Listing</div>
        <div class="navbar-links">
            <a href="javascript:history.back();"><i class="fas fa-arrow-left"></i> Back</a>
            <a href="AboutUs.jsp"><i class="fas fa-info-circle"></i> About</a>
            <a href="ContactUs.jsp"><i class="fas fa-envelope"></i> Contact</a>
        </div>
    </div>

    <!-- Main Container -->
    <div class="container">
        <h2>Our Products</h2>
        <div class="product-list">
            <c:forEach items="${products}" var="product">
                <div class="product-card">
                    <img src="displayproductimage?id=${product.id}" alt="Product Image">
                    <h3><c:out value="${product.name}"></c:out></h3>
                    <p><strong>Product ID:</strong> <c:out value="${product.id}"></c:out></p>
                    <p><strong>Description:</strong> <c:out value="${product.description}"></c:out></p>
                    <p class="price"><strong>Price:</strong> Rs. <c:out value="${product.cost}"></c:out></p>
                    <p>Farmer ContactNo: <c:out value="${product.farmer.contactno }"></c:out></p>
                    <div class="button-container">
                    	<a href ="#" class="view-button">ADD To Cart</a>
                        <a href="#" class="view-button">Buy</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Product Listing. All Rights Reserved.</p>
    </footer>
</body>

</html>
