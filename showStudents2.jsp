<%@ page import="java.util.*, com.vamsisoft.dao.ClassRoom" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<ClassRoom> classRoomList = (List<ClassRoom>) request.getAttribute("classRoom");
    String message = (String) request.getAttribute("message");
%>
<html>
<head>
    <title>Present Students List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        table {
            margin: auto;
            border-collapse: collapse;
            width: 60%;
        }
        th, td {
            padding: 10px;
            border: 1px solid #999;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        .message {
            text-align: center;
            color: red;
            font-weight: bold;
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
                <tr><th>ID</th><th>Name</th></tr>
            </thead>
            <tbody>
            <%
                for (ClassRoom student : classRoomList) {
            %>
                <tr>
                    <td><%= student.getId() %></td>
                    <td><%= student.getSname() %></td>
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