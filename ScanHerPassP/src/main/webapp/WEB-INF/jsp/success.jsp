<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Success</title>
    <style>
        .message {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            background-color: #d4edda;
            border: 1px solid #c3e6cb;
            color: #155724;
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <div class="message">
        <h2>Success</h2>
        <p>${message}</p>
    </div>
</body>
</html>
