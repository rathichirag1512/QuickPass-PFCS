<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Registration</title>
    <style>
        /* Add your CSS styling here */
        .container {
            width: 50%;
            margin: 0 auto;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
        }
        button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
        .return-button {
            text-align: center;
            margin-top: 20px;
        }
        
        .return-button a {
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
        }
        .return-button a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>User Registration</h1>
        <form action="/register" method="post">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="address">Address</label>
                <input type="text" id="address" name="address" required>
            </div>
            <div class="form-group">
                <label for="dob">Date of Birth</label>
                <input type="date" id="dob" name="dob" required>
            </div>
            <div class="form-group">
                <label for="mobileNumber">Mobile Number</label>
                <input type="text" id="mobileNumber" name="mobileNumber" required>
            </div>
            <div class="form-group">
                <label for="gender">Gender</label>
                <input type="text" id="gender" name="gender" required>
            </div>
            <button type="submit">Register</button>
        </form>
        
        
    <div class="return-button">
        <a href="/homepage">Return to Homepage</a>
    </div>
    </div>
</body>
</html>
    