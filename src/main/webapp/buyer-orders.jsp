<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Your Orders</title>
</head>
<body>
    <h1>Your Orders</h1>
    <c:if test="${not empty successMessage}">
        <p style="color: green;">${successMessage}</p>
    </c:if>
    <table>
        <thead>
            <tr>
                <th>Order ID</th>
                <th>Product Name</th>
                <th>Cost</th>
                <th>Order Date</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${orders}" var="order">
                <tr>
                    <td>${order.id}</td>
                    <td>${order.product.name}</td>
                    <td>${order.product.cost}</td>
                    <td>${order.orderDate}</td>
                    <td>${order.status}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
