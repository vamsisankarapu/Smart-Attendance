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
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #e0f7fa, #fce4ec);
            margin: 0;
            padding: 40px;
        }

        h2 {
            text-align: center;
            color: white;
            background: linear-gradient(to right, #2196f3, #21cbf3);
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            margin-bottom: 30px;
        }

        table {
            margin: auto;
            border-collapse: collapse;
            width: 70%;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
        }

        th, td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
            text-align: center;
            font-size: 16px;
        }

        th {
            background-color: #00bcd4;
            color: white;
        }

        tbody tr:nth-child(even) {
            background-color: #f1f1f1;
        }

        tbody tr:hover {
            background-color: #e0f7fa;
            cursor: pointer;
        }

        .message {
            text-align: center;
            color: #e53935;
            font-weight: bold;
            font-size: 18px;
            margin-top: 30px;
        }

        .message::before {
            content: "⚠️ ";
        }
        .action-link {
    display: inline-block;
    margin: 30px auto;
    padding: 12px 24px;
    background: linear-gradient(to right, #ff6f61, #ffb74d);
    color: white;
    font-weight: bold;
    font-size: 18px;
    text-decoration: none;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0,0,0,0.2);
    transition: transform 0.2s ease, box-shadow 0.3s ease;
}

.action-link:hover {
    transform: scale(1.05);
    box-shadow: 0 6px 12px rgba(0,0,0,0.3);
    background: linear-gradient(to right, #ff7043, #ffa726);
}
    </style>
</head>
<body>
    <h2>📋 Present Students</h2>

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
   <div style="text-align: center;">
    <a href="absent" class="action-link">✏️ Edit Absent Mark</a>
</div>

</body>
</html>