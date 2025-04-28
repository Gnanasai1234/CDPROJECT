<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Boot</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        /* Navbar Styling */
        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
background: rgb(2,0,36);
background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(232,114,114,1) 0%, rgba(0,212,255,1) 100%);            padding: 10px 0;
            display: flex;
            justify-content: center;
            z-index: 1000;
            backdrop-filter: blur(5px); /* Optional: adds a blur effect to the background */
        }

        .navbar a {
            color: white; /* Keep text color white for visibility */
            text-decoration: none;
            padding: 14px 20px;
            font-size: 16px;
            transition: all 0.3s ease;
        }

        .navbar a:hover {
            background-color: rgba(87, 87, 87, 0.8); /* Slightly darker on hover */
            border-radius: 5px;
        }

        .navbar a.active {
            background-color: rgba(0, 123, 255, 0.8); /* Slightly transparent blue */
            border-bottom: 2px solid #fff;
            border-radius: 0;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .navbar {
                flex-direction: column;
                align-items: center;
            }

            .navbar a {
                display: block;
                text-align: center;
                width: 100%;
            }
        }

        body {
            margin-top: 70px;
        }
    </style>
</head>
<body>

    <div class="navbar">
        <a href="emphome">Home</a>&nbsp;&nbsp;&nbsp;
        <a href="empprofile">Profile</a>&nbsp;&nbsp;&nbsp;
        <a href="updateemp">Update Employee</a>&nbsp;&nbsp;&nbsp;
        <a href="viewempsbydept">View Employees By Deparment</a>
        <a href="emplogin">Logout</a>&nbsp;&nbsp;&nbsp;
        
    </div>
</body>
</html>
