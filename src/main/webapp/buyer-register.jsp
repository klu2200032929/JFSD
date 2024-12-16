<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buyer Registration</title>
    <style>
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
            font-family: 'Roboto', Arial, sans-serif;
            background: linear-gradient(to bottom, #f9f5ec, #d9e4dd);
            color: #333;
        }

        .register-container {
            width: 90%;
            max-width: 500px;
            padding: 40px;
            background-color: #fff;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
            text-align: center;
        }

        .register-container img {
            width: 100%;
            max-width: 120px;
            margin-bottom: 20px;
            border-radius: 50%;
            border: 3px solid #4a7c59;
        }

        .register-container h1 {
            font-size: 2.2rem;
            font-weight: bold;
            color: #4a7c59;
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
            font-size: 1rem;
            color: #555;
            width: 100%;
            text-align: left;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 12px;
            font-size: 1rem;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 10px;
            transition: border 0.3s ease;
        }

        input:focus {
            border-color: #4a7c59;
            outline: none;
        }

        button {
            width: 100%;
            padding: 14px;
            font-size: 1rem;
            font-weight: bold;
            color: #fff;
            background-color: #4a7c59;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #3d674a;
        }

        .footer {
            margin-top: 20px;
            font-size: 0.9rem;
            color: #777;
        }

        .footer a {
            color: #4a7c59;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s;
        }

        .footer a:hover {
            color: #3d674a;
        }

        .error-message {
            color: red;
            font-size: 0.9rem;
            margin-bottom: 15px;
            display: none;
        }

        .strength-message {
            font-size: 0.9rem;
            color: #4a7c59;
            margin-bottom: 10px;
        }

        .register-container .tagline {
            font-size: 1rem;
            color: #666;
            margin-bottom: 25px;
        }
    </style>
</head>
<body>
    <div class="register-container">
        <img src="buyer-icon.png" alt="Buyer Icon" class="visual-header">
        <h1>Join Our Buyer Community</h1>
        <p class="tagline">Connecting buyers with quality products and empowering the marketplace.</p>
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

            <button type="submit" id="submitButton">Register</button>
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

        function checkPasswordStrength(password) {
            let strength = 0;
            if (password.length >= 8) strength++;
            if (/[A-Z]/.test(password)) strength++;
            if (/[a-z]/.test(password)) strength++;
            if (/[0-9]/.test(password)) strength++;
            if (/[@$!%*?&#]/.test(password)) strength++;

            if (strength === 5) return "Strong";
            if (strength >= 3) return "Moderate";
            return "Weak";
        }

        function validateForm() {
            errorMessage.style.display = 'none';

            const passwordStrength = checkPasswordStrength(passwordField.value);
            if (passwordStrength === "Weak") {
                strengthMessage.textContent = "Password is weak. Add uppercase, lowercase, numbers, and special characters.";
                submitButton.disabled = true;
                return;
            } else {
                strengthMessage.textContent = `Password strength: ${passwordStrength}`;
            }

            if (passwordField.value !== confirmPasswordField.value) {
                errorMessage.textContent = 'Passwords do not match.';
                errorMessage.style.display = 'block';
                submitButton.disabled = true;
                return;
            }

            submitButton.disabled = false;
        }

        registrationForm.addEventListener('input', validateForm);
    </script>
</body>
</html>
