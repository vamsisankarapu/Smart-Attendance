<%@ page import="com.vamsisoft.dao.ClassRoom" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%! List<ClassRoom> studentList = null; %>
<%
    studentList = (List<ClassRoom>) request.getAttribute("studentList"); // You must set this in your controller
    LocalDate currentDate = LocalDate.now();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Student Check-In Portal</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #74ebd5, #ACB6E5);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background: #ffffff;
            padding: 35px 40px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            border-radius: 15px;
            width: 500px;
            animation: fadeIn 0.8s ease-in-out;
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 25px;
            font-size: 26px;
            text-shadow: 1px 1px 4px rgba(0,0,0,0.1);
        }

        table {
            width: 100%;
        }

        td {
            padding: 12px;
        }

        label {
            font-weight: bold;
            color: #34495e;
        }

        input[type="text"], input[type="password"], select {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 8px;
            background-color: #f9f9f9;
            font-size: 15px;
            transition: 0.3s;
        }

        input[type="text"]:focus, 
        input[type="password"]:focus, 
        select:focus {
            border-color: #3498db;
            background-color: #ffffff;
            outline: none;
            box-shadow: 0 0 8px rgba(52, 152, 219, 0.3);
        }

        input[type="submit"] {
            background: linear-gradient(90deg, #3498db, #2980b9);
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-weight: bold;
            font-size: 16px;
            width: 60%;
            transition: all 0.3s ease;
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }

        input[type="submit"]:hover {
            background: linear-gradient(90deg, #ff9966, #ff5e62);
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.3);
        }

        @keyframes fadeIn {
            from {opacity: 0; transform: translateY(-20px);}
            to {opacity: 1; transform: translateY(0);}
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2> Student Check-In</h2>
        <form method="post" action="update" class="checkin-form">
            <table>
                <tr>
                    <td><label for="date">Date</label></td>
                    <td>
                        <%= currentDate %>
                        <input type="hidden" name="date" value="<%= currentDate %>">
                    </td>
                </tr>
               <!--   <tr>
                    <td><label for="Sname">Student Name</label></td>
                    <td>
                        <select name="Sname" id="Sname" required>
                            <option value="">-- Select Student --</option>
                            <option value="Vamsi">Vamsi</option>
                            <option value="Vasanth">Vasanth</option>
                            <option value="Chandini">Chandini</option>
                            <option value="Gnaneswari">Gnaneswari</option>
                            <option value="Alisha">Alisha</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="Sid">Student ID</label></td>
                    <td><input type="text" name="Sid" id="Sid" required></td>
                </tr>-->
                <tr>
                    <td><label for="Spwd">Password</label></td>
                    <td><input type="password" name="Spwd" id="Spwd" required></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="CHECK IN">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
