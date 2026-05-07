<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Class Logout - Vachagniya Educational Institution</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(-45deg, #ff9a9e, #fad0c4, #fbc2eb, #a6c1ee);
            background-size: 400% 400%;
            animation: gradientBG 12s ease infinite;
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-container {
            background: #ffffff;
            padding: 35px 40px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            width: 380px;
            animation: fadeIn 0.8s ease-in-out;
            transition: transform 0.3s ease;
        }

        .login-container:hover {
            transform: scale(1.03);
        }

        h2 {
            text-align: center;
            color: #c0392b;
            margin-bottom: 25px;
            font-size: 26px;
            text-shadow: 1px 1px 6px rgba(0,0,0,0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #2c3e50;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 15px;
            background-color: #fdfdfd;
            transition: 0.3s;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #e74c3c;
            box-shadow: 0 0 8px rgba(231, 76, 60, 0.4);
            outline: none;
        }

        input[type="submit"] {
            width: 100%;
            padding: 14px;
            background: linear-gradient(90deg, #e74c3c, #ff4757);
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 6px 18px rgba(0,0,0,0.2);
        }

        input[type="submit"]:hover {
            background: linear-gradient(90deg, #ff6f61, #e84118);
            transform: translateY(-3px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.3);
        }

        @keyframes gradientBG {
            0% {background-position: 0% 50%;}
            50% {background-position: 100% 50%;}
            100% {background-position: 0% 50%;}
        }

        @keyframes fadeIn {
            from {opacity: 0; transform: translateY(-20px);}
            to {opacity: 1; transform: translateY(0);}
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2> Class Logout</h2>
        <form action="submitLogin_End" method="post">
            <label for="classid"> Class ID</label>
            <input type="text" id="classid" name="classid" required>

            <label for="pwd"> Password</label>
            <input type="password" id="pwd" name="pwd" required>

            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>
