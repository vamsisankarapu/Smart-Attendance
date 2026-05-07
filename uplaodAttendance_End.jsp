<%@ page import="com.vamsisoft.dao.ClassRoom" %>
<%@ page import="java.time.LocalDate" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%! ClassRoom classRoom = null; %>
<%
    classRoom = (ClassRoom) request.getAttribute("classRoom");
    LocalDate currentDate = LocalDate.now();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Student Check-Out Portal</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(-45deg, #74ebd5, #9face6, #fbc2eb, #a6c1ee);
            background-size: 400% 400%;
            animation: gradientBG 12s ease infinite;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background: #ffffff;
            padding: 35px 45px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
            width: 420px;
            animation: fadeIn 0.8s ease-in-out;
            transition: transform 0.3s;
        }

        .form-container:hover {
            transform: scale(1.02);
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #2c3e50;
            font-size: 26px;
            font-weight: bold;
            text-shadow: 1px 1px 6px rgba(0,0,0,0.1);
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

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 15px;
            background-color: #fdfdfd;
            transition: 0.3s ease;
        }

        input[type="text"]:focus, 
        input[type="password"]:focus {
            border-color: #ff6f61;
            background: #fff;
            outline: none;
            box-shadow: 0 0 10px rgba(255, 111, 97, 0.4);
        }

        input[type="submit"] {
            background: linear-gradient(90deg, #ff6f61, #ff4757, #ff7f50);
            color: white;
            padding: 14px 20px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-weight: bold;
            font-size: 16px;
            width: 70%;
            transition: all 0.3s ease;
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }

        input[type="submit"]:hover {
            background: linear-gradient(90deg, #ff7f50, #ff4757, #e74c3c);
            transform: translateY(-3px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.3);
        }

        @keyframes fadeIn {
            from {opacity: 0; transform: translateY(-20px);}
            to {opacity: 1; transform: translateY(0);}
        }

        @keyframes gradientBG {
            0% {background-position: 0% 50%;}
            50% {background-position: 100% 50%;}
            100% {background-position: 0% 50%;}
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2> Student Check-Out</h2>
        <form method="post" action="update_End" class="checkout-form">
            <table>
                <tr>
                    <td><label for="date"> Date</label></td>
                    <td>
                        <%= currentDate %>
                        <input type="hidden" name="date" value="<%= currentDate %>">
                    </td>
                </tr>
               <!-- <tr>
                    <td><label for="Sid"> Student ID</label></td>
                    <td><input type="text" name="Sid" id="Sid" required></td>
                </tr>-->
                <tr>
                    <td><label for="Spwd"> Password</label></td>
                    <td><input type="password" name="Spwd" id="Spwd" required></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="CHECK OUT">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
