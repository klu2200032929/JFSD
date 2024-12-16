<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
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
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to bottom right, #FFD700, #228B22); /* Earthy gold to green gradient */
            color: #333;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
            padding-top: 70px; /* Adjusted for the fixed navbar */
        }

        /* Navbar Styling */
        .navbar {
            background-color: #8B4513; /* Warm brown for agriculture */
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
            border-radius: 8px;
            transition: background-color 0.3s, transform 0.3s;
        }

        .navbar-links a:hover {
            background-color: #A52A2A; /* Darker brown for hover effect */
            transform: scale(1.1);
        }

        h3 {
            color: #228B22; /* Green for sustainability */
            font-size: 2rem;
            margin-bottom: 20px;
        }

        table {
            width: 90%;
            max-width: 900px;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #F4E1C1; /* Light tan background for table */
            border-radius: 8px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
        }

        th, td {
            padding: 12px;
            text-align: center;
            font-size: 1rem;
        }

        th {
            background-color: #8B4513; /* Brown for header */
            color: #fff;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #DFF2E2; /* Light green for hover effect */
        }

        .delete-btn {
            color: #D32F2F; /* Red for delete action */
            font-size: 20px;
            cursor: pointer;
            transition: color 0.3s ease;
        }

        .delete-btn:hover {
            color: #C2185B; /* Darker red for hover effect */
        }

        .footer {
            margin-top: 30px;
            text-align: center;
        }

        .footer a {
            text-decoration: none;
            color: #8B4513; /* Brown for footer links */
            font-weight: bold;
        }

        .footer a:hover {
            color: #D32F2F; /* Red for hover effect */
        }

    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <div class="brand">Farmers' Market</div>
        <div class="navbar-links">
            <a href="javascript:history.back();"><i class="fas fa-arrow-left"></i> Back</a>
            <a href="AboutUs.jsp"><i class="fas fa-seedling"></i> About</a>
            <a href="ContactUs.jsp"><i class="fas fa-phone-alt"></i> Contact</a>
        </div>
    </div>

    <h3>DELETE PRODUCT</h3>

    <table class="table table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>COST</th>
                <th>DESCRIPTION</th>
                <th>IMAGE</th>
                <th>ACTION</th>
            </tr>
        </thead>
        <tbody>
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
                        <a href='<c:url value="delete1?id=${product.id}"/>' class="delete-btn">
                            <i class="fas fa-trash"></i> <!-- Trash icon for delete action -->
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <div class="footer">
        <p>For more information, visit our <a href="AboutUs.jsp">About Us</a> page.</p>
    </div>
</body>
</html>
