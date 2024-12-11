<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Videos on Value Added Products</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f4f8;
            color: #333;
        }

        .navbar {
            background-color: #4CAF50;
            padding: 15px 30px;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar .brand {
            color: white;
            font-size: 26px;
            font-weight: bold;
            letter-spacing: 2px;
        }

        .navbar-links {
            display: flex;
            align-items: center;
        }

        .navbar-links a {
            color: white;
            text-decoration: none;
            padding: 12px 20px;
            margin-left: 20px;
            font-size: 16px;
            border-radius: 5px;
            transition: background-color 0.3s, transform 0.3s;
        }

        .navbar-links a:hover {
            background-color: #45a049;
            transform: scale(1.1);
        }

        .container {
            margin-top: 80px;
            padding: 50px 20px;
            margin-bottom: 100px; /* Added margin-bottom to create space between videos and footer */
        }

        h2 {
            text-align: center;
            font-size: 36px;
            color: #333;
            margin-bottom: 40px;
            font-weight: 600;
            letter-spacing: 1px;
        }

        .video-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 30px;
            justify-content: center;
        }

        .video-card {
            background-color: white;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
        }

        .video-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 45px rgba(0, 0, 0, 0.2);
        }

        .video-card iframe {
            width: 100%;
            height: 250px;
            border: none;
            border-radius: 10px 10px 0 0;
        }

        .video-card .content {
            padding: 20px;
            text-align: center;
            background-color: #f9f9f9;
            border-bottom-left-radius: 15px;
            border-bottom-right-radius: 15px;
        }

        .video-card h3 {
            margin: 10px 0;
            font-size: 18px;
            color: #333;
        }

        footer {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 20px;
            position: relative;
            bottom: 0;
            width: 100%;
            font-size: 14px;
            margin-top: 50px; /* Added margin-top to ensure space from the content */
        }

        @media (max-width: 768px) {
            .navbar .brand {
                font-size: 22px;
            }

            .navbar-links a {
                font-size: 14px;
                padding: 10px 15px;
            }

            h2 {
                font-size: 28px;
            }
        }

        @media (max-width: 480px) {
            .navbar {
                flex-direction: column;
                align-items: flex-start;
                padding: 10px 20px;
            }

            .navbar-links {
                flex-direction: column;
                align-items: flex-start;
                margin-top: 15px;
            }

            .video-container {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <div class="brand">
            Farmer Dashboard
        </div>
        <div class="navbar-links">
            <a href="farmer-dashboard.jsp"><i class="fas fa-home"></i> Home</a>
            <a href="AboutUs.jsp"><i class="fas fa-info-circle"></i> About Us</a>
            <a href="ContactUs.jsp"><i class="fas fa-envelope"></i> Contact Us</a>
        </div>
    </div>

    <!-- Main content -->
    <div class="container">
        <h2>Videos on Value Added Products</h2>

        <!-- Video Grid -->
        <div class="video-container">
            <!-- First Video Card -->
            <div class="video-card">
                <iframe src="https://www.youtube.com/embed/MTTFZbRlpxc" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <div class="content">
                    <h3>Preparation of Bread</h3>
                </div>
            </div>

            <!-- Second Video Card -->
            <div class="video-card">
                <iframe src="https://www.youtube.com/embed/AvcmSldaSQQ" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <div class="content">
                    <h3>Preparation of Biscuits using Wheat Flour</h3>
                </div>
            </div>
            
            <!-- Third Video Card -->
            <div class="video-card">
                <iframe src="https://www.youtube.com/embed/gD3Vak1kUps" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <div class="content">
                    <h3>Preparation of Bellam Mamidi Tandra</h3>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        &copy; 2024 Farmer Dashboard. All Rights Reserved.
    </footer>

</body>
</html>
