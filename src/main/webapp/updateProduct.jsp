<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Product</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
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
            max-width: 600px;
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

        label {
            font-size: 16px;
            color: #555;
            margin-bottom: 10px;
            display: block;
        }

        input, textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .submit-btn {
            background-color: #388e3c;
            color: white;
            padding: 15px;
            text-align: center;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s;
        }

        .submit-btn:hover {
            background-color: #2c6e49;
        }
    </style>
</head>
<body>

    <div class="navbar">
        <h1>Update Product</h1>
    </div>

    <div class="container">
        <h2>Product Details</h2>
        <form>
            <label for="productName">Product Name</label>
            <input type="text" id="productName" name="productName" value="Tomatoes" required>

            <label for="productDescription">Product Description</label>
            <textarea id="productDescription" name="productDescription" rows="4" required>Fresh and organic tomatoes</textarea>

            <label for="productPrice">Product Price</label>
            <input type="number" id="productPrice" name="productPrice" value="5" step="0.01" required>

            <label for="productStock">Stock Quantity</label>
            <input type="number" id="productStock" name="productStock" value="100" required>

            <label for="productCategory">Product Category</label>
            <input type="text" id="productCategory" name="productCategory" value="Vegetables" required>

            <div class="submit-btn">Update Product</div>
        </form>
    </div>

</body>
</html>
