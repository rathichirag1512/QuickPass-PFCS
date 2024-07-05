<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registration Success</title>
</head>
<body>
    <h1>Registration Successful</h1>
    <p>User registered successfully with the following details:</p>
    <p>Name: ${savedUser.name}</p>
    <p>Address: ${savedUser.address}</p>
    <p>Date of Birth: ${savedUser.dob}</p>
    <p>Mobile Number: ${savedUser.mobileNumber}</p>
    <p>Gender: ${savedUser.gender}</p>
    <p>QR Code:</p>
    <img src="data:image/png;base64,${qrCodeImageBase64}" alt="QR Code">
</body>
</html>
