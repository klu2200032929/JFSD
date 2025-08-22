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
            font-family: 'Roboto', Arial, sans-serif;
            background: linear-gradient(to bottom, #f5f9f6, #e1f5eb);
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

        /* Product Listing */
        .product-list {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 20px;
        }

        .product-card {
            background-color: #fafafa;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .product-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.2);
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
            font-size: 20px;
            margin: 10px 0;
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

        .button-container {
            display: flex;
            justify-content: space-around;
            align-items: center;
            margin-top: 20px;
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

        /* Success Popup */
        .popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #4caf50;
            color: white;
            padding: 20px 40px;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            font-size: 16px;
            z-index: 2000;
        }

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

        /* Responsive Design */
        @media (max-width: 768px) {
            .navbar .brand {
                font-size: 20px;
            }

            .navbar-links a {
                font-size: 14px;
                padding: 8px 10px;
            }

            h2 {
                font-size: 28px;
            }
        }
    </style>
</head>

<body>
    <!-- Navbar -->
    <div class="navbar">
        <div class="brand">Product Listing</div>
        <div class="navbar-links">
            <a href="buyer-dashboard.jsp"><i class="fas fa-home"></i> Home</a>
            <a href="AboutUs1.jsp"><i class="fas fa-info-circle"></i> About</a>
            <a href="ContactUs1.jsp"><i class="fas fa-envelope"></i> Contact</a>
        </div>
    </div>

    <!-- Success Message Popup -->
    <div id="successPopup" class="popup">
        Item added to cart successfully!
    </div>

    <!-- Main Container -->
    <div class="container">
        <h2>Our Products</h2>
        <div class="product-list">
            <c:forEach items="${products}" var="product">
                <div class="product-card">
                    <img src="https://jfsd.onrender.com/displayproductimage?id=${product.id}" alt="Product Image">
                    <h3><c:out value="${product.name}"></c:out></h3>
                    <p><strong>Product ID:</strong> <c:out value="${product.id}"></c:out></p>
                    <p><strong>Description:</strong> <c:out value="${product.description}"></c:out></p>
                    <p class="price"><strong>Price:</strong> Rs. <c:out value="${product.cost}"></c:out></p>
                    <p><strong>Farmer Contact:</strong> <c:out value="${product.farmer.contactno}"></c:out></p>
                    <div class="button-container">
                        <form action="https://jfsd.onrender.com/addtocart" method="post" onsubmit="showSuccessMessage(event)">
                            <input type="hidden" name="productId" value="${product.id}">
                            <button type="submit">Add to Cart</button>
                        </form>
                        <a href="https://jfsd.onrender.com/order/${product.id}">Order</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Product Listing. All Rights Reserved.</p>
    </footer>

    <!-- JavaScript for Popup -->
    <script>
        function showSuccessMessage(event) {
            event.preventDefault(); // Prevent form submission
            var form = event.target;
            // Simulate form submission (you can replace this with actual AJAX form submission)
            setTimeout(function() {
                // Show success message
                document.getElementById('successPopup').style.display = 'block';
                // Hide the success message after 3 seconds
                setTimeout(function() {
                    document.getElementById('successPopup').style.display = 'none';
                    form.submit(); // Submit the form after showing the popup
                }, 3000);
            }, 500);
        }
    </script>
</body>

</html>
