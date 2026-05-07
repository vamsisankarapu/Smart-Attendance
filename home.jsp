<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Course Selection - Vamsi Educational Institution</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #74ebd5, #ACB6E5);
            margin: 0;
            padding: 0;
            text-align: center;
            color: #2c3e50;
        }

        h3 {
            font-size: 32px;
            margin: 50px 0 30px;
            color: #fff;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }

        .course-list {
            display: inline-block;
            text-align: left;
            background: rgba(255, 255, 255, 0.85);
            padding: 30px 40px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        }

        .course-list a {
            display: block;
            background: linear-gradient(90deg, #3498db, #6dd5fa, #2980b9);
            color: white;
            text-decoration: none;
            padding: 14px 25px;
            margin: 12px 0;
            border-radius: 8px;
            font-size: 18px;
            font-weight: 500;
            box-shadow: 0 4px 10px rgba(0,0,0,0.15);
            transition: all 0.3s ease;
        }

        .course-list a:hover {
            background: linear-gradient(90deg, #ff9966, #ff5e62);
            transform: translateY(-3px);
            box-shadow: 0 8px 18px rgba(0,0,0,0.25);
        }
    </style>
</head>
<body>
    <h3>Welcome to Vachagniya Educational Institution</h3>
    <div class="course-list">
        <a href="1stMCA">1st MCA</a>
        <a href="2ndMCA">2nd MCA</a>
        <a href="BSc">BSc</a>
        <a href="BCA">BCA</a>
    </div>
</body>
</html>
