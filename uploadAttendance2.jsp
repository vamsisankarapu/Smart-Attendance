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
    <title>Student Check-In Portal</title>
    <style>
        .container {
            margin-top: 50px;
            border-collapse: collapse;
        }
        td {
            padding: 10px;
        }
        input[type="text"], input[type="password"] {
            width: 200px;
        }
    </style>
</head>
<body>
    <form method="post" action="update2" class="checkin-form">
        <table align="center" class="container">
            <tr>
                <td><label for="date">Date</label></td>
                <td>
                    <%= currentDate %>
                    <input type="hidden" name="date" value="<%= currentDate %>">
                </td>
            </tr>
            <tr>
                <td><label for="Sid">Student ID</label></td>
                <td><input type="text" name="Sid" id="Sid" required></td>
            </tr>
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
</body>
</html>