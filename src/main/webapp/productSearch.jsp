<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Search</title>
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
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #388e3c;
            text-align: center;
        }

        .search-box {
            margin-top: 30px;
            text-align: center;
        }

        .search-input {
            padding: 12px;
            font-size: 16px;
            width: 80%;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .search-btn {
            padding: 12px 20px;
            background-color: #388e3c;
            color: white;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            margin-left: 10px;
            font-size: 16px;
        }

        .search-btn:hover {
            background-color: #2c6e49;
        }

        .results {
            margin-top: 20px;
        }

        .result-item {
            padding: 10px;
            border: 1px solid #ccc;
            margin-bottom: 10px;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .result-item h3 {
            margin: 0;
            color: #333;
        }

        .result-item p {
            margin: 5px 0;
            color: #555;
        }
    </style>
</head>
<body>

    <div class="navbar">
        <h1>Product Search</h1>
    </div>

    <div class="container">
        <h2>Find Your Desired Products</h2>
        
        
        <form method="post" action="https://jfsd.onrender.com/displayproduct">
        	<label>Select Product By Id</label>
        	<select name="id" class="form-select" required>
        		<option value="">--Select--</option>
        		<c:forEach items="${productlist}" var="product">
        		<option value="${product.id}">${product.id}-${product.name}</option>
        		</c:forEach>
        	</select>
        	<br/><br/>
			<input type="submit" value="View" class="btn btn-success" />
        </form>
    </div>

    
</body>
</html>
