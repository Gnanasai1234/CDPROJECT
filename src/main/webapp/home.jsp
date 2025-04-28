<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Global Styles */
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(232,114,114,1) 0%, rgba(0,212,255,1) 100%);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }

        .container {
            background-color: #fff;
            padding: 30px;
            max-width: 600px;
            width: 100%;
            border-radius: 10px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
            text-align: center;
        }

        h1 {
            font-size: 30px;
            color: #333;
            margin-bottom: 20px;
            font-weight: 500;
            position: relative;
        }

        h1::after {
            content: "";
            position: absolute;
            left: 50%;
            bottom: -10px;
            width: 50px;
            height: 3px;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
            transform: translateX(-50%);
        }

        ol {
            text-align: left;
            font-size: 18px;
            color: #555;
        }

        ol li {
            margin-bottom: 10px;
            padding: 10px;
            background: #f9f9f9;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        ol li:hover {
            background-color: #eaeaea;
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>

    <div class="container">
        <h1>Home</h1>
        <ol>
            <li>Controller Layer will access Service Layer</li>
            <li>Service Layer will access Repository Layer</li>
            <li>Repository Layer contains Database Logic</li>
        </ol>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
