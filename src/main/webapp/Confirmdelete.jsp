<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Product</title>
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

        .delete-btn {
            background-color: #d32f2f;
            color: white;
            padding: 15px;
            text-align: center;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s;
        }

        .delete-btn:hover {
            background-color: #c62828;
        }
    </style>
</head>
<body>

    <div class="navbar">
        <h1>Delete Product</h1>
    </div>

    <div class="container">
        <h2>Are you sure you want to delete this product?</h2>
        <p>Product Name: Tomatoes</p>
        <p>Price: $5</p>
        <p>Stock: 100</p>

        <div class="delete-btn">Confirm Delete</div>
    </div>

</body>
</html>
