<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Search</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #e0f7fa, #fce4ec);
        margin: 0;
        padding: 40px;
    }

    h3 {
        text-align: center;
        color: white;
        background: linear-gradient(to right, #2196f3, #21cbf3);
        padding: 15px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        margin-bottom: 30px;
    }

    .container {
        background-color: white;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
        width: 350px;
        padding: 20px;
        border-radius: 12px;
        margin: auto;
    }

    table {
        width: 100%;
    }

    td {
        padding: 10px;
        font-size: 16px;
        color: #333;
    }

    input[type="text"] {
        width: 100%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 14px;
    }

    input[type="submit"] {
        background-color: #4caf50;
        color: white;
        border: none;
        padding: 10px 20px;
        font-size: 16px;
        border-radius: 6px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #388e3c;
    }

    .center {
        text-align: center;
    }
</style>
</head>
<body>

<h3> Student Search Form</h3>
<form method="post" action="search">
    <div class="container">
        <table>
            <tr>
                <td>Student ID</td>
                <td><input type="text" name="Sid" required></td>
            </tr>
            <tr>
                <td colspan="2" class="center">
                    <input type="submit" value="SEARCH">
                </td>
            </tr>
        </table>
    </div>
</form>

</body>
</html>