<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    Employee e = (Employee) session.getAttribute("employee");
    if (e == null) {
        response.sendRedirect("empsessionfailed");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Home</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Global Styles */
        body {
            font-family: 'Poppins', sans-serif;
ackground: rgb(2,0,36);
background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(232,114,114,1) 0%, rgba(0,212,255,1) 100%);     
	        margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #fff;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            max-width: 600px;
            width: 100%;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        h1 {
            font-size: 26px;
            color: #333;
            margin-bottom: 20px;
            font-weight: 600;
        }

        .welcome-message {
            font-size: 20px;
            color: #444;
            margin-top: 20px;
            font-weight: 500;
        }

        .welcome-message span {
            color: #f12711;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <%@include file="empnavbar.jsp" %>

    <div class="container">
        <h1>Employee Home</h1>
        <p class="welcome-message">Welcome, <span><%= e.getName() %></span>!</p>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
