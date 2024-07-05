<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Signup</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .signup-box {
            width: 320px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
        .signup-box h2 {
            margin-bottom: 20px;
            text-align: center;
        }
        .signup-box label {
            display: block;
            margin-bottom: 5px;
        }
        .signup-box input[type="text"],
        .signup-box input[type="password"],
        .signup-box input[type="email"],
        .signup-box select {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box; /* Ensures padding is included in the total width */
        }
        .signup-box input[type="text"]:invalid,
        .signup-box input[type="password"]:invalid,
        .signup-box input[type="email"]:invalid {
            
        }
        .show-password {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
            font-size: 14px;
        }
        .show-password input {
            margin-right: 5px;
        }
        .signup-box input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .signup-box input[type="submit"]:hover {
            background-color: #45a049;
        }
        .error {
            color: red;
            margin-bottom: 10px;
        }
        footer {
            text-align: center;
            padding: 10px;
            background-color: #f1f1f1;
            width: 100%;
            position: fixed;
            bottom: 0;
        }
    </style>
    <script>
        function togglePasswordVisibility() {
            var passwordField = document.getElementById('password');
            var confirmPasswordField = document.getElementById('confirmPassword');
            var showPasswordCheckbox = document.getElementById('showPassword');
            
            if (showPasswordCheckbox.checked) {
                passwordField.type = 'text';
                confirmPasswordField.type = 'text';
            } else {
                passwordField.type = 'password';
                confirmPasswordField.type = 'password';
            }
        }

        function validatePassword() {
            var password = document.getElementById('password').value;
            var confirmPassword = document.getElementById('confirmPassword').value;
            var errorMessage = document.getElementById('error-message');
            
            var passwordPattern = /^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{5,}$/;
            
            if (!passwordPattern.test(password)) {
                errorMessage.textContent = 'Password must be at least 5 characters long, contain one uppercase letter, one special character, and one numeric character.';
                return false;
            }
            
            if (password !== confirmPassword) {
                errorMessage.textContent = 'Password and Confirm Password do not match.';
                return false;
            }
            
            errorMessage.textContent = '';
            return true;
        }
    </script>
</head>
<body>
    <div class="container">
        <div class="signup-box">
            <h2>SignUp</h2>
            <div id="error-message" class="error">${errorMessage}</div>
            <form action="newUser" method="post" onsubmit="return validatePassword()">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
                <label for="confirmPassword">Confirm Password:</label>
                <input type="password" id="confirmPassword" name="confirmPassword" required>
                <label for="userType">User Type:</label>
                <select id="userType" name="userType" required>
                    <option value="Customer">User</option>
                    <option value="Admin">Admin</option>
                </select>
                <div class="show-password">
                    <input type="checkbox" id="showPassword" onclick="togglePasswordVisibility()">
                    <label for="showPassword">Show Password</label>
                </div>
                <input type="submit" value="Register">
            </form>
        </div>
    </div>
    <footer>
        QuickPass System @ 2024
    </footer>
</body>
</html>
