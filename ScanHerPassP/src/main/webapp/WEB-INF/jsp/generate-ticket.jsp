<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Generate Ticket</title>
    <style>
        form {
            max-width: 500px;
            margin: 20px auto;
            padding: 20px;
            background-color: #f0f0f0;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"], select {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        button[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
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
    <h1>Generate Ticket</h1>
    
    <form id="ticket-form" method="post" action="/generate-ticket">
        <label for="userId">User ID:</label>
        <input type="text" id="userId" name="userId" required>

        <label for="fromStop">From Stop:</label>
        <select id="fromStop" name="fromStop" required>
            <option value="">Select From Stop</option>
            <c:forEach var="stop" items="${stops}">
                <option value="${stop.id}">${stop.name}</option>
            </c:forEach>
        </select>
        
        <label for="toStop">To Stop:</label>
        <select id="toStop" name="toStop" required>
            <option value="">Select To Stop</option>
            <c:forEach var="stop" items="${stops}">
                <option value="${stop.id}">${stop.name}</option>
            </c:forEach>
        </select>
        
        <label for="gender">Gender:</label>
        <select id="gender" name="gender" required>
            <option value="male">Male</option>
            <option value="female">Female</option>
        </select>
        
        <label for="amount">Amount:</label>
        <input type="text" id="amount" name="amount">

        <c:if test="${not empty error}">
            <p style="color:red;">${error}</p>
        </c:if>

        <c:if test="${not empty message}">
            <p style="color:green;">${message}</p>
        </c:if>

        <button type="submit">Generate Ticket</button>
    </form>
    
    <div class="return-button">
        <a href="/homepage">Return to Homepage</a>
    </div>
    
    <script>
        document.getElementById('gender').addEventListener('change', function() {
            const gender = this.value;
            if (gender === 'female') {
                document.getElementById('amount').value = '0';
                document.getElementById('amount').readOnly = true;
            } else {
                document.getElementById('amount').value = '';
                document.getElementById('amount').readOnly = false;
            }
        });
    </script>
</body>
</html>
