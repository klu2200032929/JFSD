<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Analytics & Reports</title>
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

        .reports {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            margin-top: 40px;
        }

        .report {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .report h3 {
            color: #388e3c;
        }

        .report p {
            color: #555;
        }

        .view-report-btn {
            padding: 10px;
            background-color: #388e3c;
            color: white;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            font-size: 14px;
            margin-top: 10px;
        }

        .view-report-btn:hover {
            background-color: #2c6e49;
        }
    </style>
</head>
<body>

    <div class="navbar">
        <h1>Analytics & Reports</h1>
    </div>

    <div class="container">
        <h2>Sales Analytics & Product Reports</h2>

        <div class="reports">
            <div class="report">
                <h3>Product Performance</h3>
                <p>See how your products are performing over time.</p>
                <a href="productPerformanceReport.jsp" class="view-report-btn">View Report</a>
            </div>
            <div class="report">
                <h3>Order Trends</h3>
                <p>Analyze the trends of orders and growth.</p>
                <a href="orderTrendsReport.jsp" class="view-report-btn">View Report</a>
            </div>
            <div class="report">
                <h3>Revenue Insights</h3>
                <p>Get insights into your total revenue and earnings.</p>
                <a href="revenueReport.jsp" class="view-report-btn">View Report</a>
            </div>
        </div>
    </div>

</body>
</html>
