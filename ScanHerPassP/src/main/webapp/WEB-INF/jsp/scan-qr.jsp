<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Scan QR Code</title>
</head>
<body>
    <h1>Scan QR Code</h1>
    <form action="/scan-qr" method="post">
        <input type="text" name="qrCodeData" placeholder="QR Code Data" required>
        <button type="submit">Submit</button>
    </form>
    <c:if test="${not empty error}">
        <p style="color: red;">${error}</p>
    </c:if>
</body>
</html>