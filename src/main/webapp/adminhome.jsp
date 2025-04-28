<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
    /* Global Styles */
    body {
        font-family: 'Arial', sans-serif;
        background: rgb(2, 0, 36);
        background: linear-gradient(90deg, rgba(2, 0, 36, 1) 0%, rgba(232, 114, 114, 1) 0%, rgba(0, 212, 255, 1) 100%);
        margin: 0;
        padding: 20px;
        color: white; /* Text color for better readability */
    }

    h3 {
        text-align: center;
        font-size: 2rem;
        font-weight: bold;
        padding: 15px;
        background: rgba(0, 123, 255, 0.8); 
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2); 
        margin-bottom: 30px;
    }

    /* Adding a subtle hover effect on the header */
    h3:hover {
        background: rgba(0, 123, 255, 1); /* Darker shade on hover */
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    /* Wrapper for page content */
    .content-wrapper {
        text-align: center;
        margin-top: 20px;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        h3 {
            font-size: 1.5rem; /* Smaller header on mobile */
        }
    }
</style>
</head>
<body>
<%@include file="adminnavbar.jsp" %>
<div class="content-wrapper">
    <h3>Welcome to the Home Page</h3>
    <!-- Add any additional content for the home page here -->
</div>
</body>
</html>
