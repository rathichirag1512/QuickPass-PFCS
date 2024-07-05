<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Stops</title>
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
        ul {
            list-style-type: none;
            padding: 0;
            text-align: center;
        }
        li {
            background-color: white;
            padding: 10px;
            margin: 10px auto;
            max-width: 400px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            font-size: 16px;
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
    <h1>Stops</h1>
    <ul>
        <c:forEach var="stop" items="${stops}">
            <li>${stop.name}</li>
        </c:forEach>
    </ul>
    
    <div class="return-button">
        <a href="/homepage">Return to Homepage</a>
    </div>
</body>
</html>
