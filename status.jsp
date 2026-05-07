<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Message</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #74ebd5, #ACB6E5);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .msg-box {
        background: #ffffff;
        padding: 25px 40px;
        border-radius: 12px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        text-align: center;
        animation: fadeIn 0.6s ease-in-out;
    }

    .msg-text {
        font-size: 20px;
        font-weight: bold;
        color: #2c3e50;
    }

    /* Example color styles – apply via EL in your controller */
    .success { color: #27ae60; }   /* Green */
    .error   { color: #e74c3c; }   /* Red */
    .info    { color: #2980b9; }   /* Blue */
    .warning { color: #f39c12; }   /* Orange */

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(-20px); }
        to { opacity: 1; transform: translateY(0); }
    }
</style>
</head>
<body>
    <div class="msg-box">
        <h3 class="msg-text info">${msg}</h3>
    </div>
</body>
</html>
