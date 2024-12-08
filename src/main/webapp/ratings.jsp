<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Ratings and Trust</title>
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
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
        }

        .navbar-links {
            display: flex;
            gap: 15px;
        }

        .navbar-links a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            font-size: 18px;
            display: inline-block;
            transition: background-color 0.3s, transform 0.3s;
        }

        .navbar-links a:hover {
            background-color: #1abc9c;
            color: #fff;
            transform: scale(1.1);
        }

        .container {
            margin-top: 70px;
            padding: 20px;
        }

        .rating-summary {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
        }

        .rating-summary h2 {
            margin: 0;
            font-size: 24px;
        }

        .rating-summary .stars {
            font-size: 24px;
            color: #f1c40f;
            margin: 10px 0;
        }

        .rating-summary .trust-score {
            font-size: 18px;
            color: #2ecc71;
            font-weight: bold;
            margin-top: 10px;
        }

        .user-reviews {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .user-review {
            display: flex;
            justify-content: space-between;
            border-bottom: 1px solid #ddd;
            padding: 10px 0;
        }

        .user-review:last-child {
            border-bottom: none;
        }

        .user-review .stars {
            color: #f1c40f;
        }

        .user-review .review-text {
            font-size: 16px;
            color: #555;
        }

        footer {
            background-color: #388e3c;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <div class="brand">User Ratings & Trust</div>
        <div class="navbar-links">
            <a href="#"><i class="fas fa-home"></i> Home</a>
            <a href="#"><i class="fas fa-info-circle"></i> About Us</a>
            <a href="#"><i class="fas fa-envelope"></i> Contact Us</a>
        </div>
    </div>

    <!-- Main Content -->
    <div class="container">
        <!-- Rating Summary Section -->
        <div class="rating-summary">
            <h2>Product Rating Summary</h2>
            <div class="stars">
                &#9733;&#9733;&#9733;&#9733;&#9734; (4/5)
            </div>
            <div class="trust-score">
                Trust Score: 95%
            </div>
        </div>

        <!-- User Reviews Section -->
        <div class="user-reviews">
            <h3>User Reviews</h3>
            <div class="user-review">
                <div>
                    <div class="stars">
                        &#9733;&#9733;&#9733;&#9733;&#9734;
                    </div>
                    <div class="review-text">Great product! Really happy with the purchase.</div>
                </div>
                <div class="review-date">
                    <span>2 days ago</span>
                </div>
            </div>

            <div class="user-review">
                <div>
                    <div class="stars">
                        &#9733;&#9733;&#9733;&#9733;&#9733;
                    </div>
                    <div class="review-text">Amazing quality! Exceeded my expectations.</div>
                </div>
                <div class="review-date">
                    <span>1 week ago</span>
                </div>
            </div>

            <div class="user-review">
                <div>
                    <div class="stars">
                        &#9733;&#9733;&#9733;&#9734;&#9734;
                    </div>
                    <div class="review-text">Good, but could be better. The packaging was damaged.</div>
                </div>
                <div class="review-date">
                    <span>2 weeks ago</span>
                </div>
            </div>

            <!-- Add more reviews here -->
        </div>
    </div>

    <!-- Footer -->
    <footer>
       Buyer Footer
    </footer>
</body>
</html>
