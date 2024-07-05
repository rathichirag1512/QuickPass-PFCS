<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Stop</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        h1 {
            color: #4CAF50;
            text-align: center;
            margin-top: 20px;
        }
        form {
            max-width: 400px;
            margin: 20px auto;
            padding: 20px;
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }
        input[type="text"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-top: 10px;
            border-radius: 5px;
            cursor: pointer;
        }
        button[type="submit"]:hover {
            background-color: #45a049;
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
    <h1>Add Stop</h1>
    <form action="/add-stop" method="post">
        <label for="name">Stop Name:</label>
        <input type="text" id="name" name="name" required>
        <button type="submit">Add Stop</button>
    </form>
    
    <div class="return-button">
        <a href="/homepage">Return to Homepage</a>
    </div>
</body>
</html>
