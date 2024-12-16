<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farmer Registration</title>
    <style>
        /* Global Styling */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to bottom, #f0f9ff, #c3e6ff);
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .register-container {
            background-color: #ffffff;
            padding: 30px;
            width: 90%;
            max-width: 500px;
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
            animation: fadeIn 0.6s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .register-header {
            text-align: center;
            margin-bottom: 20px;
        }

        .register-header h1 {
            font-size: 1.8rem;
            color: #007B5E;
        }

        .register-header p {
            font-size: 1rem;
            color: #555;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        label {
            font-size: 0.9rem;
            color: #555;
        }

        input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 1rem;
            transition: border-color 0.3s ease;
        }

        input:focus {
            border-color: #007B5E;
            outline: none;
        }

        button {
            background-color: #007B5E;
            color: #ffffff;
            padding: 12px;
            font-size: 1rem;
            font-weight: bold;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:disabled {
            background-color: #ccc;
            cursor: not-allowed;
        }

        button:hover:enabled {
            background-color: #005F47;
        }

        .footer {
            margin-top: 15px;
            text-align: center;
            font-size: 0.9rem;
            color: #555;
        }

        .footer a {
            color: #007B5E;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        .footer a:hover {
            color: #005F47;
        }

        .error-message, .strength-message {
            font-size: 0.9rem;
            margin-top: -10px;
            margin-bottom: 10px;
        }

        .error-message {
            color: red;
        }

        .strength-message {
            color: #555;
        }
    </style>
</head>
<body>
    <div class="register-container">
        <div class="register-header">
            <h1>Empower Farmers</h1>
            <p>Join our platform to transform your crops into value-added products and connect globally.</p>
        </div>
        <form id="registrationForm" action="insertfarmer" method="post">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" placeholder="Enter your username" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Enter your email" required>

            <label for="contactno">Contact Number</label>
            <input type="number" id="contactno" name="contactno" placeholder="Enter your contact number" required oninput="validateContactLength()">

            <label for="location">Location</label>
            <input type="text" id="location" name="location" placeholder="Enter your location" required>

            <label for="upiid">UPI ID</label>
            <input type="text" id="upiid" name="upiid" placeholder="Enter your UPI ID" required>

            <label for="upiuname">UPI Username</label>
            <input type="text" id="upiuname" name="upiuname" placeholder="Enter your UPI username" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Create a password" required>
            <div class="strength-message" id="strengthMessage"></div>

            <div class="error-message" id="errorMessage"></div>

            <button type="submit" id="submitButton" disabled>Register</button>
        </form>

        <div class="footer">
            <a href="adduser.jsp">Return to Home</a>
        </div>
    </div>

    <script>
        const registrationForm = document.getElementById('registrationForm');
        const submitButton = document.getElementById('submitButton');
        const errorMessage = document.getElementById('errorMessage');
        const strengthMessage = document.getElementById('strengthMessage');
        const passwordField = document.getElementById('password');
        const contactField = document.getElementById('contactno');

        function checkPasswordStrength(password) {
            let strength = 0;
            if (password.length >= 8) strength++;
            if (/[A-Z]/.test(password)) strength++;
            if (/[a-z]/.test(password)) strength++;
            if (/[0-9]/.test(password)) strength++;
            if (/\W|_/.test(password)) strength++;

            if (strength === 5) return "Strong";
            if (strength >= 3) return "Moderate";
            return "Weak";
        }

        function validateForm() {
            errorMessage.style.display = 'none';

            if (!registrationForm.username.value || !registrationForm.password.value ||
                !registrationForm.email.value || !registrationForm.contactno.value) {
                errorMessage.textContent = 'Please fill out all fields.';
                errorMessage.style.display = 'block';
                submitButton.disabled = true;
                return;
            }

            if (contactField.value.length !== 10) {
                errorMessage.textContent = 'Contact number must be exactly 10 digits.';
                errorMessage.style.display = 'block';
                submitButton.disabled = true;
                return;
            }

            const passwordStrength = checkPasswordStrength(passwordField.value);
            if (passwordStrength === "Weak") {
                strengthMessage.textContent = "Password is weak. Use a mix of uppercase, lowercase, numbers, and special characters.";
                submitButton.disabled = true;
                return;
            } else if (passwordStrength === "Moderate") {
                strengthMessage.textContent = "Password is moderate. Consider adding more character types.";
            } else {
                strengthMessage.textContent = "Password is strong.";
            }

            errorMessage.style.display = 'none';
            submitButton.disabled = false;
        }

        function validateContactLength() {
            if (contactField.value.length > 10) {
                contactField.value = contactField.value.slice(0, 10);
            }
            validateForm();
        }

        registrationForm.addEventListener('input', validateForm);
    </script>
</body>
</html>
