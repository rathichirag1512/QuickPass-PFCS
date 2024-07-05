<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            height: 100vh;
            margin: 0;
        }
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-grow: 1;
        }
        .login-box {
            width: 300px;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .login-box h2 {
            margin-bottom: 20px;
        }
        .login-box label {
            display: block;
            text-align: left;
            margin: 10px 0 5px;
        }
        .login-box input[type="email"],
        .login-box input[type="password"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .login-box input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .login-box input[type="submit"]:hover {
            background-color: #45a049;
        }
        .login-options {
            margin-top: 20px;
        }
        .login-options a {
            display: block;
            margin: 5px 0;
            color: #007BFF;
            text-decoration: none;
        }
        .login-options a:hover {
            text-decoration: underline;
        }
        .error {
            color: red;
            margin-bottom: 10px;
        }
        .input-error {
            border-color: red;
        }
        footer {
            text-align: center;
            padding: 10px;
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="login-box">
            <h2>Login</h2>
            <div class="error">${errorMessage}</div>
            <form action="${pageContext.request.contextPath}/login" method="post">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required 
                    class="${not empty errorMessage ? 'input-error' : ''}">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required 
                    class="${not empty errorMessage ? 'input-error' : ''}">
                <input type="submit" value="Login">
            </form>
            <div class="login-options">
                <a href="${pageContext.request.contextPath}/forgotPassword.jsp">Forgot Password?</a>
                <a href="${pageContext.request.contextPath}/newUser">Don't have an account? Create one</a>
            </div>
        </div>
    </div>
    <footer>
        QuickPass System @ 2024
    </footer>
</body>
</html>
