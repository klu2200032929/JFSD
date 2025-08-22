<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete Product</title>
    <style>
        /* General reset */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to bottom right, #83a4d4, #b6fbff);
            color: #333;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
        }

        h3 {
            font-size: 2.5rem;
            color: #2b6777;
            margin: 20px 0;
            text-align: center;
        }

        table {
            width: 90%;
            max-width: 1000px;
            margin-top: 20px;
            border-collapse: collapse;
            background: #ffffff;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            overflow: hidden;
        }

        th {
            background-color: #2b6777;
            color: #ffffff;
            text-transform: uppercase;
            font-weight: 600;
            padding: 15px 10px;
        }

        td {
            padding: 15px 10px;
            text-align: center;
            vertical-align: middle;
            font-size: 1rem;
            color: #555;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #e0f7fa;
            transform: scale(1.02);
            transition: all 0.3s ease;
        }

        img {
            height: 50px;
            width: 70px;
            object-fit: cover;
            border-radius: 5px;
        }

        a {
            text-decoration: none;
            color: #ffffff;
            background: #2b6777;
            padding: 8px 15px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        a:hover {
            background: #3c8897;
        }

        .footer {
            margin-top: 20px;
        }

        .footer a {
            font-size: 1.1rem;
            font-weight: bold;
            color: #ffffff;
        }

        .footer a:hover {
            text-decoration: underline;
        }

        @media (max-width: 768px) {
            table {
                font-size: 0.9rem;
            }

            th, td {
                padding: 10px 5px;
            }
        }
    </style>
</head>
<body>
    <h3>Manage Cart</h3>

    <table>
        <tr>
            <th>Cart ID</th>
            <th>Product ID</th>
            <th>Product Name</th>
            <th>Cost</th>
            <th>Description</th>
            <th>Farmer Contact</th>
            <th>Image</th>
            <th>Action</th>
            <th> Buy </th>
        </tr>
        <c:forEach items="${carts}" var="cart">
            <tr>
                <td><c:out value="${cart.id}"/></td>
                <td><c:out value="${cart.product.id}"/></td>
                <td><c:out value="${cart.product.name}"/></td>
                <td><c:out value="${cart.product.cost}"/></td>
                <td><c:out value="${cart.product.description}"/></td>
                <td><c:out value="${cart.product.farmer.contactno}"/></td>
                <td>
                    <img src="https://jfsd.onrender.com/displayproductimage?id=${cart.product.id}" alt="Product Image">
                </td>
                <td>
                    <a href="<c:url value='https://jfsd.onrender.com/delete5?id=${cart.id}'/>">Delete</a>
                </td>
                <td>
                    <a href="https://jfsd.onrender.com/order/${cart.product.id}">Buy</a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <div class="footer">
        <a href="buyer-dashboard.jsp">Go back to Home</a>
    </div>
</body>
</html>
