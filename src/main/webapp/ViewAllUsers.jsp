<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Users</title>
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
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to bottom, #f4f4f4, #a3d977);
            color: #333;
            padding: 20px;
        }

        h3 {
            color: #3b7419;
            font-size: 2rem;
            margin-bottom: 10px;
            text-align: center;
        }

        h5 {
            color: #558b2f;
            font-size: 1.5rem;
            margin: 20px 0 10px;
            text-decoration: underline;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        h5::before {
            content: '\1F33D'; /* Corn emoji for farmers */
            font-size: 1.2rem;
        }

        table {
            width: 90%;
            max-width: 800px;
            margin: 15px auto;
            border-collapse: collapse;
            background-color: #ffffff;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px 20px;
            text-align: center;
            font-size: 1rem;
        }

        th {
            background-color: #6d9e47;
            color: #ffffff;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9fdf4;
        }

        tr:hover {
            background-color: #d7f0c3;
        }

        .footer {
            margin-top: 20px;
            font-size: 1rem;
        }

        .footer a {
            color: #558b2f;
            text-decoration: none;
            font-weight: bold;
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .footer a::before {
            content: '\21A9'; /* Left arrow for back link */
            font-size: 1rem;
        }
    </style>
</head>
<body>
    <h3>Support Farmers and Buyers</h3>

    <h5>Farmers</h5>
    <table class="table table-striped">
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>EMAIL</th>
            <th>LOCATION</th>
            <th>CONTACT NO</th>
        </tr>
        <c:forEach items="${farmerlist}" var="farmer">
            <tr>
                <td><c:out value="${farmer.id}"></c:out></td>
                <td><c:out value="${farmer.username}"></c:out></td>
                <td><c:out value="${farmer.email}"></c:out></td>
                <td><c:out value="${farmer.location}"></c:out></td>
                <td><c:out value="${farmer.contactno}"></c:out></td>
            </tr>
        </c:forEach>
    </table>

    <h5>Buyers</h5>
    <table class="table table-striped">
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>EMAIL</th>
            <th>LOCATION</th>
            <th>CONTACT NO</th>
        </tr>
        <c:forEach items="${buyerlist}" var="buyer">
            <tr>
                <td><c:out value="${buyer.id}"></c:out></td>
                <td><c:out value="${buyer.username}"></c:out></td>
                <td><c:out value="${buyer.email}"></c:out></td>
                <td><c:out value="${buyer.location}"></c:out></td>
                <td><c:out value="${buyer.contactno}"></c:out></td>
            </tr>
        </c:forEach>
    </table>

    <div class="footer">
        <a href="manageUsers.jsp">Go back to Home</a>
    </div>
</body>
</html>
