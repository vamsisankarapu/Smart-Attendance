<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mark Absent</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #e0f7fa, #fce4ec);
        margin: 0;
        padding: 40px;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .form-card {
        background-color: white;
        padding: 30px 40px;
        border-radius: 12px;
        box-shadow: 0 8px 16px rgba(0,0,0,0.2);
        width: 350px;
        text-align: center;
    }

    h2 {
        margin-bottom: 20px;
        color: #4a148c;
        font-size: 24px;
        background: linear-gradient(to right, #7b1fa2, #ba68c8);
        color: white;
        padding: 10px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }

    label {
        display: block;
        margin-bottom: 10px;
        font-weight: bold;
        color: #333;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 16px;
        margin-bottom: 20px;
    }

    input[type="submit"] {
        background-color: #f44336;
        color: white;
        border: none;
        padding: 12px 24px;
        font-size: 16px;
        border-radius: 6px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }

    input[type="submit"]:hover {
        background-color: #d32f2f;
        transform: scale(1.05);
    }
</style>
</head>
<body>

<div class="form-card">
    <h2> Mark Student Absent</h2>
    <form method="post" action="absent">
        <label for="Sid">Student ID</label>
        <input type="text" name="Sid" id="Sid" required>
        <input type="submit" value="ABSENT">
    </form>
</div>

</body>
</html>