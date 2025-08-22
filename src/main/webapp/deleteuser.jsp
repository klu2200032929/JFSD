<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Users</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* Universal styling */
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
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to bottom, #f4f2e9, #d9e4dd);
            color: #333;
            padding: 20px;
        }

        h3 {
            color: #4caf50;
            font-size: 2.5rem;
            margin-bottom: 10px;
        }

        h5 {
            color: #6a994e;
            font-size: 1.8rem;
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
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
        }

        th, td {
            padding: 12px 20px;
            text-align: center;
            font-size: 1rem;
        }

        th {
            background-color: #6a994e;
            color: #ffffff;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f0f8f1;
        }

        tr:hover {
            background-color: #eaf6e3;
        }

        a {
            text-decoration: none;
            color: #e63946;
            font-weight: bold;
            transition: color 0.3s;
        }

        a:hover {
            color: #d62828;
        }

        .footer a {
            margin-top: 20px;
            display: inline-block;
            color: #6a994e;
            font-size: 1rem;
        }

        .action-icon {
            color: #e63946;
            font-size: 1.2rem;
        }
    </style>
</head>
<body>
    <h3>Manage Users</h3>

    <h5>Farmers</h5>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Location</th>
            <th>Contact No</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${farmerlist}" var="farmer">
            <tr>
                <td><c:out value="${farmer.id}"></c:out></td>
                <td><c:out value="${farmer.username}"></c:out></td>
                <td><c:out value="${farmer.email}"></c:out></td>
                <td><c:out value="${farmer.location}"></c:out></td>
                <td><c:out value="${farmer.contactno}"></c:out></td>
                <td>
                    <a href='<c:url value="https://jfsd.onrender.com/delete?id=${farmer.id}"></c:url>'>
                        <i class="fas fa-trash-alt action-icon" title="Delete Farmer"></i>
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <h5>Buyers</h5>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Location</th>
            <th>Contact No</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${buyerlist}" var="buyer">
            <tr>
                <td><c:out value="${buyer.id}"></c:out></td>
                <td><c:out value="${buyer.username}"></c:out></td>
                <td><c:out value="${buyer.email}"></c:out></td>
                <td><c:out value="${buyer.location}"></c:out></td>
                <td><c:out value="${buyer.contactno}"></c:out></td>
                <td>
                    <a href='<c:url value="https://jfsd.onrender.com/delete?id=${buyer.id}"></c:url>'>
                        <i class="fas fa-trash-alt action-icon" title="Delete Buyer"></i>
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <div class="footer">
        <a href="manageUsers.jsp"><i class="fas fa-home"></i> Go back to Home</a>
    </div>
</body>
</html>
