<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buyer Registration</title>
    <style>
        /* Styling for responsiveness and visual appeal */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom right, #00c4cc, #009aa3);
            color: #333;
        }

        .register-container {
            width: 90%;
            max-width: 400px;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
            text-align: center;
            animation: fadeIn 0.8s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .register-container h1 {
            font-size: 1.8rem;
            font-weight: bold;
            color: #009aa3;
            margin-bottom: 10px;
        }

        .register-container p {
            font-size: 1rem;
            color: #555;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        label {
            font-size: 0.9rem;
            color: #555;
            width: 100%;
            max-width: 400px;
            text-align: left;
            margin-bottom: 5px;
        }

        input[type="text"], input[type="email"], input[type="password"], input[type="number"] {
            width: 100%;
            padding: 12px;
            font-size: 1rem;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            transition: border 0.3s ease;
        }

        input:focus {
            border-color: #009aa3;
            outline: none;
        }

        button {
            width: 100%;
            padding: 12px;
            font-size: 1rem;
            font-weight: bold;
            color: #ffffff;
            background-color: #00c4cc;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-top: 10px;
        }

        button:disabled {
            background-color: #ccc;
            cursor: not-allowed;
        }

        button:hover:enabled {
            background-color: #007f89;
        }

        .footer {
            margin-top: 15px;
            font-size: 0.9rem;
            color: #777;
        }

        .footer a {
            color: #009aa3;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s;
        }

        .footer a:hover {
            color: #005f65;
        }

        .error-message {
            color: red;
            font-size: 0.9rem;
            margin-top: -15px;
            margin-bottom: 15px;
            display: none;
        }

        .strength-message {
            font-size: 0.9rem;
            color: #777;
            margin-top: -10px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="register-container">
        <h1>Buyer Registration</h1>
        <p>Join us to connect with buyers and sell your products easily.</p>
        <form id="registrationForm" action="insertbuyer" method="post">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" placeholder="Enter your username" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Enter your email" required>

            <label for="location">Location</label>
            <input type="text" id="location" name="location" placeholder="Enter your location" required>

            <label for="contactno">Contact Number</label>
            <input type="number" id="contactno" name="contactno" placeholder="Enter your contact number" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Create a password" required>

            <label for="confirmPassword">Confirm Password</label>
            <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm your password" required>

            <div class="strength-message" id="strengthMessage"></div>
            <div class="error-message" id="errorMessage"></div>

            <button type="submit" id="submitButton" disabled>Register</button>
        </form>

        <div class="footer">
            Already have an account? <a href="index.jsp">Login here</a>
        </div>
    </div>

    <script>
        const registrationForm = document.getElementById('registrationForm');
        const submitButton = document.getElementById('submitButton');
        const errorMessage = document.getElementById('errorMessage');
        const strengthMessage = document.getElementById('strengthMessage');
        const passwordField = document.getElementById('password');
        const confirmPasswordField = document.getElementById('confirmPassword');
        const contactField = document.getElementById('contactno');

        function checkPasswordStrength(password) {
            let strength = 0;
            if (password.length >= 8) strength++;
            if (/[A-Z]/.test(password)) strength++;
            if (/[a-z]/.test(password)) strength++;
            if (/[0-9]/.test(password)) strength++;
            if (/[\W_]/.test(password)) strength++;
            
            if (strength === 5) return "Strong";
            if (strength >= 3) return "Moderate";
            return "Weak";
        }

        function validateForm() {
            errorMessage.style.display = 'none';

            // Check if all fields are filled
            if (!registrationForm.username.value || !registrationForm.password.value || 
                !registrationForm.confirmPassword.value || !registrationForm.email.value || 
                !registrationForm.location.value || !registrationForm.contactno.value) {
                errorMessage.textContent = 'Please fill out all fields.';
                errorMessage.style.display = 'block';
                submitButton.disabled = true;
                return;
            }

            // Check contact number length
            if (contactField.value.length !== 10) {
                errorMessage.textContent = 'Contact number must be exactly 10 digits.';
                errorMessage.style.display = 'block';
                submitButton.disabled = true;
                return;
            }

            // Check password strength
            const passwordStrength = checkPasswordStrength(passwordField.value);
            if (passwordStrength === "Weak") {
                strengthMessage.textContent = "Password is weak. Use a mix of uppercase, lowercase, numbers, and special characters.";
                errorMessage.style.display = 'block';
                submitButton.disabled = true;
                return;
            } else if (passwordStrength === "Moderate") {
                strengthMessage.textContent = "Password is moderate. Consider adding more character types.";
            } else {
                strengthMessage.textContent = "Password is strong.";
            }

            // Check if passwords match
            if (passwordField.value !== confirmPasswordField.value) {
                errorMessage.textContent = 'Passwords do not match.';
                errorMessage.style.display = 'block';
                submitButton.disabled = true;
                return;
            }

            // Enable submit button if all validations pass and password is strong
            errorMessage.style.display = 'none';
            submitButton.disabled = false;
        }

        // Add event listeners for validation on input changes
        registrationForm.addEventListener('input', validateForm);
    </script>
</body>
</html>
