<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
   Employee e= (Employee)session.getAttribute("employee");
   if(e==null)
   {
	   response.sendRedirect("empsessionfailed");
	   return;
   }
   %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Update</title>

    <!-- Add Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(45deg, #FC466B, #3F5EFB);
            height: 100vh;
            font-family: 'Montserrat', sans-serif;
            margin: 0;
        }

        .container {
            position: relative;
            margin-top: 120px; /* Adjust this based on your navbar height */
            left: 50%;
            transform: translateX(-50%);
        }

        .form-container {
            background: rgba(255, 255, 255, 0.3);
            padding: 3em;
            border-radius: 20px;
            border-left: 1px solid rgba(255, 255, 255, 0.3);
            border-top: 1px solid rgba(255, 255, 255, 0.3);
            backdrop-filter: blur(10px);
            box-shadow: 20px 20px 40px -6px rgba(0,0,0,0.2);
            text-align: center;
            position: relative;
            transition: all 0.2s ease-in-out;
        }

        h3 {
            font-weight: bold;
            color: #fff;
            margin-bottom: 30px;
        }

        /* Center align the form and its elements */
        form {
            margin: 0 auto;
            text-align: center;
        }

        table {
            margin: 0 auto;
        }

        td {
            padding: 10px;
            text-align: center;
        }

        /* Exclude radio buttons from this styling */
        input:not([type="radio"]), select {
            background: transparent;
            width: 200px;
            padding: 1em;
            margin-bottom: 2em;
            border: none;
            border-left: 1px solid rgba(255, 255, 255, 0.3);
            border-top: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 5000px;
            backdrop-filter: blur(5px);
            box-shadow: 4px 4px 60px rgba(0,0,0,0.2);
            color: #fff;
            font-family: 'Montserrat', sans-serif;
            font-weight: 500;
            transition: all 0.2s ease-in-out;
        }

        input:hover:not([type="radio"]), select:hover {
            background: rgba(255,255,255,0.1);
            box-shadow: 4px 4px 60px rgba(0,0,0,0.2);
        }

        button {
            display: inline-block;
            margin-top: 10px;
            width: 150px;
            padding: 10px;
            background-color: black;
            color: white;
            border-radius: 5000px;
            border: none;
            transition: background-color .2s ease-in-out;
        }

        button:hover {
            background-color: rgba(255,255,255,0.2);
        }

        ::placeholder {
            color: #fff;
            opacity: 0.7;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.4);
        }

        a {
            text-decoration: none;
            color: #ddd;
            font-size: 12px;
        }

        input:focus, select:focus, textarea:focus, button:hover {
            outline: none;
        }
    </style>
</head>
<body>
    <%@include file="empnavbar.jsp" %>

    <div class="container">
        <div class="form-container">
            <h3><u>Employee Update</u></h3>
            <form method="post" action="updateemp">
                <table>
                    <tr>
                        <td><label for="ename">Enter Name</label></td>
                        <td><input type="text" id="ename" name="ename"  value="<%= e.getName() %>"  required/></td>
                    </tr>
                    <tr>
                        <td><label for="eid">ID:</label></td>
                        <td><input type="text" id="eid" name="eid"  value="<%= e.getId() %>"  required/> </td>
                    </tr>
                    
                    <tr>
                        <td><label>Select Gender</label></td>
                        <td>
                            <input type="radio" id="male" name="egender" value="MALE" required/>
                            <label for="male">Male</label>
                            <input type="radio" id="female" name="egender" value="FEMALE" required/>
                            <label for="female">Female</label>
                            <input type="radio" id="others" name="egender" value="OTHERS" required/>
                            <label for="others">Others</label>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="edob">Enter Date of Birth</label></td>
                        <td><input type="date" id="edob" name="edob" required/></td>
                    </tr>
                    <tr>
                        <td><label for="edept">Select Department</label></td>
                        <td>
                            <select id="edept" name="edept" required>
                                <option value="">---Select---</option>
                                <option value="TECHNICAL">Technical</option>
                                <option value="MARKETING">Marketing</option>
                                <option value="SALES">Sales</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="esalary">Enter Salary</label></td>
                        <td><input type="number" id="esalary" name="esalary" step="0.01" required/></td>
                    </tr>
                    <tr>
                        <td><label for="elocation">Enter Location</label></td>
                        <td><input type="text" id="elocation" name="elocation" required/></td>
                    </tr>
                    <tr>
                        <td><label for="eemail">Enter Email ID</label></td>
                        <td><input type="email" id="eemail" name="eemail" value="<%= e.getEmail() %>"  readonly="readonly"  required/></td>
                    </tr>
                    <tr>
                        <td><label for="epwd">Enter Password</label></td>
                        <td><input type="password" id="epwd" name="epwd" required/></td>
                    </tr>
                    <tr>
                        <td><label for="econtact">Enter Contact</label></td>
                        <td><input type="number" id="econtact" name="econtact" required/></td>
                    </tr>
                    <tr class="button-container">
                        <td colspan="2">
                            <button type="submit">Update</button>
                            <button type="reset">Clear</button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>

    <!-- Add Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>