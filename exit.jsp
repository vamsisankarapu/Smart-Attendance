<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Course Selection - Vachagniya Educational Institution</title>
    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            background: linear-gradient(135deg, #6dd5ed, #2193b0);
            margin: 0;
            padding: 0;
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: #fff;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            animation: fadeIn 0.8s ease-in-out;
        }

        h3 {
            color: #2c3e50;
            font-size: 30px;
            margin-bottom: 30px;
            text-shadow: 1px 1px 4px rgba(0,0,0,0.1);
        }

        .course-list {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .course-list a {
            display: block;
            background: linear-gradient(90deg, #3498db, #2ecc71);
            color: white;
            text-decoration: none;
            padding: 14px 25px;
            border-radius: 8px;
            font-weight: bold;
            font-size: 16px;
            text-align: center;
            transition: all 0.3s ease;
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }

        .course-list a:hover {
            background: linear-gradient(90deg, #2ecc71, #3498db);
            transform: translateY(-3px);
            box-shadow: 0 6px 18px rgba(0,0,0,0.25);
        }

        @keyframes fadeIn {
            from {opacity: 0; transform: translateY(-20px);}
            to {opacity: 1; transform: translateY(0);}
        }
    </style>
</head>
<body>
    <div class="container">
        <h3> Welcome to Vachagniya Educational Institution</h3>
        <div class="course-list">
            <a href="1stMCAend">1st MCA</a>
            <a href="2ndMCAend">2nd MCA</a>
            <a href="1stBScend">1st BSc</a>
            <a href="2ndBScend">2nd BSc</a>
            <a href="3rdBScend">3rd BSc</a>
        </div>
    </div>
</body>
</html>
