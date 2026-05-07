<%@ page import="java.util.*, com.vamsisoft.dao.ClassRoom" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<ClassRoom> classRoomList = (List<ClassRoom>) request.getAttribute("classRoomList");
    String message = (String) request.getAttribute("message");
%>
<html>
<head>
    <title>Present Students List</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f9f9f9;
            margin: 40px;
        }
        h2 {
            text-align: center;
            color: #2c3e50;
            background: linear-gradient(to right, #6dd5fa, #2980b9);
            padding: 15px;
            border-radius: 8px;
            color: white;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }
        table {
            margin: 30px auto;
            border-collapse: collapse;
            width: 80%;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        th, td {
            padding: 12px;
            border: 1px solid #ccc;
            text-align: center;
        }
        th {
            background-color: #3498db;
            color: white;
        }
        tbody tr:nth-child(even) {
            background-color: #ecf0f1;
        }
        tbody tr:hover {
            background-color: #d6eaf8;
            cursor: pointer;
        }
        .message {
            text-align: center;
            color: #e74c3c;
            font-weight: bold;
            font-size: 18px;
            margin-top: 30px;
        }
        .message::before {
            content: "⚠️ ";
        }
    </style>
</head>
<body>
    <h2>Present Students</h2>

    <%
        if (classRoomList != null && !classRoomList.isEmpty()) {
    %>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Date</th>
                    <th>Check-in</th>
                    <th>Check-out</th>
                </tr>
            </thead>
            <tbody>
            <%
                for (ClassRoom student : classRoomList) {
            %>
                <tr>
                    <td><%= student.getId() %></td>
                    <td><%= student.getDate() %></td>
                    <td><%= student.getCheckin() %></td>
                    <td><%= student.getCheckout() %></td>
                </tr>
            <%
                }
            %>
            </tbody>
        </table>
    <%
        } else {
    %>
        <p class="message"><%= message != null ? message : "No students found with status 'present'." %></p>
    <%
        }
    %>
</body>
</html>