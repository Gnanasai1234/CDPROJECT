<%@ taglib uri="jakarta.tags.core" prefix="c" %>
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
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Employees By Department	</title>
    <style>
        /* Global Styles */
        body {
            font-family: 'Arial', sans-serif;
           background: rgb(2,0,36);
background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(232,114,114,1) 0%, rgba(0,212,255,1) 100%);
            margin: 0;
            padding: 20px;
            color: #333; /* Default text color */
        }

        /* Header Styles */
        h3 {
            text-align: center;
            font-size: 2rem;
            font-weight: bold;
            padding: 10px;
            margin-bottom: 20px;
background: rgb(2,0,36);
background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(232,114,114,1) 0%, rgba(0,212,255,1) 67%);            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2); 
        }

        /* Table Wrapper */
        .table-wrapper {
            overflow-x: auto; /* Enable horizontal scrolling on smaller screens */
            max-width: 100%; /* Ensure it adapts to the container */
        }

        /* Table Styles */
        table {
            width: 100%; /* Full width */
            border-collapse: collapse; 
 background: rgb(2,0,36);
background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(232,114,114,1) 0%, rgba(0,212,255,1) 67%);
            border-radius: 10px; 
        }

        /* Borders */
        table, th, td {
            border: 1px solid rgba(221, 221, 221, 0.8); /* Light border with transparency for table */
        }

        /* Header Styles */
        th {
            background-color: rgba(0, 123, 255, 0.8); /* Slightly transparent background for headers */
            color: white; /* Text color for headers */
            font-size: 1.1rem; /* Larger font size for headers */
            padding: 10px 15px; /* Padding for headers */
            text-align: center; /* Center align headers */
        }

        /* Cell Styles */
        td {
            padding: 10px 15px; /* Padding for cells */
            text-align: center; /* Center align text */
            font-size: 0.95rem; /* Consistent font size for cells */
x`        }

        /* Alternating Row Colors */
        tr:nth-child(even) {
            background-color: rgba(249, 249, 249, 0.8); /* Light gray for even rows with transparency */
        }

        tr:nth-child(odd) {
            background-color: rgba(255, 255, 255, 0.6); /* White for odd rows with transparency */
        }

        /* Row Hover Effects */
        tr:hover {
background: rgb(2,0,36);
background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(232,114,114,1) 0%, rgba(0,212,255,1) 67%);            cursor: pointer; /* Pointer cursor on hover */
            transition: background-color 0.3s; /* Smooth transition */
        }
        

        /* Responsive Design */
        @media (max-width: 768px) {
            h3 {
                font-size: 1.5rem; /* Smaller header on mobile */
            }

            th, td {
                padding: 8px; /* Reduced padding for smaller screens */
                font-size: 0.9rem; /* Smaller font size */
            }
        }
    </style>
</head>
<body>
  <%@include file="empnavbar.jsp" %>
	<div class="view">
    <h3><u>View All Employees By Department	</u></h3>
    </div>
    <div class="table-wrapper">
        <table>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>GENDER</th>
                <th>DATE OF BIRTH</th>
                <th>DEPARTMENT</th>
                <th>SALARY</th>
                <th>LOCATION</th>
                <th>EMAIL</th>
                <th>CONTACT</th>
                <th>STATUS</th>
            </tr>
            <c:forEach items="${emplist}" var="emp">
                <tr>
                    <td><c:out value="${emp.id}"/></td>
                    <td><c:out value="${emp.name}"/></td>
                    <td><c:out value="${emp.gender}"/></td>
                    <td><c:out value="${emp.dateofbirth}"/></td>
                    <td><c:out value="${emp.department}"/></td>
                    <td><c:out value="${emp.salary}"/></td>
                    <td><c:out value="${emp.location}"/></td>
                    <td><c:out value="${emp.email}"/></td>
                    <td><c:out value="${emp.contact}"/></td>
                    <td><c:out value="${emp.status}"/></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
