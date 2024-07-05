<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>QuickPass - Home Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #4CAF50; /* Green color for the header */
            padding: 10px 0;
            display: flex;
            justify-content: space-between; /* Aligns nav items to left and right */
        }
        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            text-align: right; /* Aligns nav items to the right */
            position: relative;
        }
        nav ul li {
            display: inline-block;
            margin: 0 10px;
            position: relative;
        }
        nav ul li a {
            color: white;
            text-decoration: none;
            padding: 10px;
            display: block;
        }
        nav ul li a:hover {
            background-color: #575757;
        }
        .dropdown {
            display: none;
            position: absolute;
            background-color: #4CAF50;
            min-width: 160px;
            z-index: 1;
            left: 0;  /* Aligns the dropdown to the left of the parent */
            top: 40px;  /* Positions dropdown directly below the parent */
            border-radius: 5px;
        }
        .dropdown a {
            color: white;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
            background-color: #4CAF50;
            border-bottom: 1px solid #ddd;
        }
        .dropdown a:hover {
            background-color: #45a049;
        }
        .dropdown a:last-child {
            border-bottom: none;
        }
        .toggle-sign {
            cursor: pointer;
        }
        .container {
            padding: 40px;
            text-align: center;
            background-color: white;
            margin: 20px auto;
            max-width: 800px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #4CAF50;
            font-size: 36px;
            margin-bottom: 20px;
        }
        p {
            color: #333;
            font-size: 18px;
            line-height: 1.6;
        }
        footer {
            text-align: center;
            padding: 10px;
            background-color: #f1f1f1;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <header>
        <span style="color: white; margin-left: 20px;">QUICK PASS</span>
        <nav>
            <ul>
                <li><a href="/register">User Registration</a></li>
                <li>
                    <a href="javascript:void(0);" class="toggle-sign" onclick="toggleDropdown('stopsDropdown', 'stopsToggleSign')">Stops <span id="stopsToggleSign">&#x25BC;</span></a>
                    <div class="dropdown" id="stopsDropdown">
                        <a href="/add-stop">Add Stop</a>
                        <a href="/view-stops">View Stops</a>
                    </div>
                </li>
                <li><a href="/generate-ticket">Generate Ticket</a></li>
                <li><a href="/login">Log Out</a></li>
            </ul>
        </nav>
    </header>

    <div class="container">
        <h1>WELCOME TO QuickPass System</h1>
        <p>
            QuickPass is an efficient and user-friendly system designed to simplify the process of ticket generation and management for public transport. 
            Our system ensures quick registration, easy stop management, and seamless ticket generation, making it convenient for both passengers and conductors.
        </p>
        <p>
            Users can register easily, and conductors can generate tickets effortlessly by scanning QR codes. Our system is designed to provide a hassle-free 
            experience with a focus on speed and reliability. Welcome aboard to a smarter way of managing public transport tickets.
        </p>
    </div>

    <footer>
        QuickPass System @2024
    </footer>

    <script>
        function toggleDropdown(id, signId) {
            var dropdown = document.getElementById(id);
            var toggleSign = document.getElementById(signId);
            if (dropdown.style.display === "block") {
                dropdown.style.display = "none";
                toggleSign.innerHTML = "&#x25BC;"; // Down arrow
            } else {
                dropdown.style.display = "block";
                toggleSign.innerHTML = "&#x25B2;"; // Up arrow
            }
        }
    </script>
</body>
</html>
