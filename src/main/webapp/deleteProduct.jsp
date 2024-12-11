<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>DELETE PRODUCT</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* Universal Styling */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom right, #00c4cc, #009aa3);
            color: #333;
            padding: 20px;
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

        h3 {
            color: #009aa3;
            font-size: 2rem;
            margin-bottom: 10px;
            margin-top: 70px;
        }

        h5 {
            color: #007f89;
            font-size: 1.5rem;
            margin: 20px 0 10px;
            text-decoration: underline;
        }

        table {
            width: 90%;
            max-width: 800px;
            margin: 15px auto;
            border-collapse: collapse;
            background-color: #ffffff;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
        }

        th, td {
            padding: 12px 20px;
            text-align: center;
            font-size: 1rem;
        }

        th {
            background-color: #009aa3;
            color: #ffffff;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #e0f7fa;
        }

        .footer {
            margin-top: 30px;
        }

        .footer a {
            text-decoration: none;
            color: #009aa3;
            font-weight: bold;
        }

        .footer a:hover {
            color: #005f61;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <div class="brand">Product Management</div>
        <div class="navbar-links">
            <a href="javascript:history.back();"><i class="fas fa-arrow-left"></i> Back</a>
            <a href="AboutUs.jsp"><i class="fas fa-info-circle"></i> About</a>
            <a href="ContactUs.jsp"><i class="fas fa-envelope"></i> Contact</a>
        </div>
    </div>

    <h3>DELETE PRODUCT</h3>

    <table class="table table-striped">
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>COST</th>
            <th>DESCRIPTION</th>
            <th>IMAGE</th>
            <th>ACTION</th>
        </tr>
        <c:forEach items="${products}" var="product">
            <tr>
                <td><c:out value="${product.id}"></c:out></td>
                <td><c:out value="${product.name}"></c:out></td>
                <td><c:out value="${product.cost}"></c:out></td>
                <td><c:out value="${product.description}"></c:out></td>
                <td>
                    <img src="displayproductimage?id=${product.id}" alt="Product Image" height="42px" width="58px">
                </td>
                <td>
                    <a href='<c:url value="delete1?id=${product.id}"/>'>Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <div class="footer">
        <a href="farmer-dashboard.jsp">Go back to Home</a>
    </div>
</body>
</html>
