<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: 'Roboto', Arial, sans-serif;
            background-color: #f5f3eb; /* Light beige for a natural feel */
            margin: 0;
            padding: 0;
        }

        /* Navbar Styling */
        .navbar {
            background-color: #3b6e3b; /* Deep green for agriculture */
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
            cursor: pointer;
        }

        .navbar-links a:hover {
            background-color: #2d5c2d; /* Slightly darker green */
            transform: scale(1.1);
        }

        /* Main Container */
        .container {
            max-width: 800px;
            margin: 80px auto 40px; /* Added margin-top for space below navbar */
            background-color: #ffffff; /* White for contrast */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #3b6e3b;
            text-align: center;
            margin-bottom: 20px;
        }

        .form-group {
            margin: 15px 0;
        }

        .form-group label {
            font-size: 14px;
            color: #333;
            display: block;
            margin-bottom: 5px;
        }

        input,
        textarea {
            width: 100%;
            padding: 12px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        textarea {
            resize: vertical;
            min-height: 100px;
        }

        button {
            background-color: #6d4c41; /* Earthy brown */
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            width: 100%;
            margin-top: 20px;
        }

        button:hover {
            background-color: #5a4037; /* Darker brown */
        }

        .file-input {
            margin-top: 10px;
            background-color: #f7f5f0;
            padding: 5px;
            border-radius: 5px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .file-input label {
            font-size: 14px;
            color: #333;
        }

        .file-input input {
            font-size: 14px;
        }

        .file-name {
            margin-left: 10px;
            font-style: italic;
            color: #666;
        }

        @media (max-width: 768px) {
            .container {
                margin: 15px;
                padding: 15px;
            }

            button {
                font-size: 14px;
            }
        }

        /* Footer Styling */
        footer {
            background-color: #3b6e3b;
            color: white;
            text-align: center;
            padding: 10px 20px;
            margin-top: 30px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        footer p {
            margin: 0;
        }
    </style>
</head>

<body>
    <!-- Navbar -->
    <div class="navbar">
        <div class="brand">Support Farmers</div>
        <div class="navbar-links">
            <a onclick="history.back()"><i class="fas fa-arrow-left"></i> Back</a>
            <a href="AboutUs.jsp"><i class="fas fa-seedling"></i> About</a>
            <a href="ContactUs.jsp"><i class="fas fa-phone"></i> Contact</a>
        </div>
    </div>

    <!-- Main Container -->
    <div class="container">
        <h2>Add New Product</h2>
        <form action="insertproduct" method="POST" enctype="multipart/form-data">
            <div class="form-group">
                <label for="productName">Product Name</label>
                <input type="text" name="pname" required placeholder="Enter product name">
            </div>
            <div class="form-group">
                <label for="productPrice">Product Price ($)</label>
                <input type="number" name="pcost" required placeholder="Enter product price" min="0" step="0.01">
            </div>
            <div class="form-group">
                <label for="productDescription">Product Description</label>
                <textarea name="pdescription" required placeholder="Enter product description"></textarea>
            </div>

            <div class="form-group file-input">
                <label for="productImage">Product Image</label>
                <input type="file" name="pimage" accept="image/*" required>
                <span class="file-name" id="fileName">No file chosen</span>
            </div>

            <button type="submit" value="Add">Add Product</button>
            <button type="reset" value="Clear">Reset</button>
        </form>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Support Farmers Initiative. All Rights Reserved.</p>
    </footer>

    <script>
        // JavaScript to update file name on file selection
        document.querySelector('input[type="file"]').addEventListener('change', function (e) {
            const fileName = e.target.files.length ? e.target.files[0].name : 'No file chosen';
            document.getElementById('fileName').textContent = fileName;
        });
    </script>
</body>

</html>
