<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shipping & Delivery</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .container {
            padding: 20px;
            max-width: 800px;
            margin: auto;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            margin-top: 50px;
        }

        h1 {
            text-align: center;
            color: #388e3c;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table th, table td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }

        table th {
            background-color: #388e3c;
            color: white;
        }

        .status {
            padding: 5px 10px;
            border-radius: 5px;
        }

        .delivered {
            background-color: #4caf50;
            color: white;
        }

        .in-transit {
            background-color: #ff9800;
            color: white;
        }

        .pending {
            background-color: #f44336;
            color: white;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Shipping & Delivery</h1>
        <p>Track and manage shipping and delivery processes.</p>
        <table>
            <thead>
                <tr>
                    <th>Order ID</th>
                    <th>Customer</th>
                    <th>Shipping Status</th>
                    <th>Details</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>101</td>
                    <td>Jaya Sai</td>
                    <td><span class="status delivered">Delivered</span></td>
                    <td><a href="viewShippingDetails.jsp?id=5001">View</a></td>
                </tr>
                <tr>
                    <td>102</td>
                    <td>Karthik Reddy</td>
                    <td><span class="status in-transit">In Transit</span></td>
                    <td><a href="viewShippingDetails.jsp?id=5002">View</a></td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
