<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Management</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
            color: #333;
        }

        h2 {
            color: #2c6e49;
            font-size: 30px;
            text-align: center;
            margin-bottom: 30px;
            font-weight: bold;
        }

        .container {
            max-width: 800px;
            margin: 40px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }

        .order-list {
            list-style: none;
            padding: 0;
        }

        .order-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }

        .order-item:last-child {
            border-bottom: none;
        }

        .order-item p {
            margin: 0;
            font-size: 16px;
            color: #333;
        }

        .order-item .actions {
            display: flex;
            gap: 10px;
        }

        .button {
            padding: 8px 12px;
            font-size: 14px;
            color: white;
            background-color: #2c6e49;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .button:hover {
            background-color: #1d5a39;
        }

        .empty-message {
            text-align: center;
            color: #888;
            font-size: 18px;
        }
    </style>
</head>

<body>
    <div class="container">
        <h2>Order Management</h2>

        <c:if test="${empty orders}">
            <p class="empty-message">You have no orders to display!</p>
        </c:if>

        <c:if test="${not empty orders}">
            <ul class="order-list">
                <c:forEach items="${orders}" var="order">
                    <li class="order-item">
                        <p>Order ID: <c:out value="${order.id}" /></p>
                        <p>Total: $<c:out value="${order.total}" /></p>
                        <div class="actions">
                            <form action="cancelOrder" method="post" style="display:inline;">
                                <input type="hidden" name="orderId" value="${order.id}">
                                <button type="submit" class="button">Cancel Order</button>
                            </form>
                            <form action="viewOrderDetails" method="get" style="display:inline;">
                                <input type="hidden" name="orderId" value="${order.id}">
                                <button type="submit" class="button">View Details</button>
                            </form>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </c:if>

        <form action="checkout" method="post" style="text-align:center; margin-top: 20px;">
            <button type="submit" class="button">Checkout Cart</button>
        </form>
    </div>
</body>

</html>
