<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
   Employee e= (Employee)session.getAttribute("employee");
   if(e==null)
   {
       response.sendRedirect("empsessionfail");
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
        html, body {
            margin: 0;
            padding: 0;
            height: 100%;
        }

        body {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            background: rgb(2,0,36);
            background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(232,114,114,1) 0%, rgba(0,212,255,1) 100%);
            backdrop-filter: blur(5px);
            font-family: 'Arial', sans-serif;
        }

        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 900px;
        }

        h1 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #333;
        }

        .employee-details {
            margin-bottom: 20px;
            font-size: 18px;
            line-height: 1.8;
        }

        .employee-details b {
            color: #f12711;
        }

        .employee-details span {
            color: #444;
        }

        .employee-details .detail-item {
            margin-bottom: 10px;
        }

        .employee-details .detail-item span {
            font-weight: bold;
        }

        .navbar {
            margin: 0;
            padding: 0;
        }

        /* Resetting All Elements' Margin and Padding */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
    </style>
</head>
<body>

    <%@ include file="empnavbar.jsp" %>

    <div class="container">
        <h1>Employee Home</h1>
        <div class="employee-details">
            <div class="detail-item"><span>ID:</span> <%= e.getId() %></div>
            <div class="detail-item"><span>Name:</span> <%= e.getName() %></div>
            <div class="detail-item"><span>Gender:</span> <%= e.getGender() %></div>
            <div class="detail-item"><span>DOB:</span> <%= e.getDateofbirth() %></div>
            <div class="detail-item"><span>Department:</span> <%= e.getDepartment() %></div>
            <div class="detail-item"><span>Salary:</span> <%= e.getSalary() %></div>
            <div class="detail-item"><span>Email:</span> <%= e.getEmail() %></div>
            <div class="detail-item"><span>Location:</span> <%= e.getLocation() %></div>
            <div class="detail-item"><span>Contact:</span> <%= e.getContact() %></div>
            <div class="detail-item"><span>Status:</span> <%= e.getStatus() %></div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
