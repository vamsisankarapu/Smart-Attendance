<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Attendance Portal</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #e0f7fa, #fce4ec);
            margin: 0;
            padding: 40px;
            text-align: center;
        }

        h1 {
            color: #4a148c;
            margin-bottom: 30px;
            font-size: 36px;
            text-shadow: 1px 1px 2px #ccc;
        }

        .button-container {
            display: flex;
            justify-content: center;
            gap: 40px;
            margin-bottom: 30px;
        }

        a.button {
            display: inline-block;
            padding: 15px 30px;
            font-size: 18px;
            font-weight: bold;
            text-decoration: none;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s ease, box-shadow 0.3s ease;
        }

        a.button:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }

        a.button.checkin {
            background-color: #4caf50;
            color: white;
        }

        a.button.checkin:hover {
            background-color: #388e3c;
        }

        a.button.checkout {
            background-color: #f44336;
            color: white;
        }

        a.button.checkout:hover {
            background-color: #d32f2f;
        }

        /* Special styling for Search Student */
        .search-button {
            background: linear-gradient(to right, #ff6f61, #ffb74d);
            color: white;
            font-size: 20px;
            padding: 16px 36px;
            margin-top: 10px;
            animation: fadeIn 1s ease-in-out;
        }

        .search-button:hover {
            box-shadow: 0 0 15px rgba(255, 111, 97, 0.6);
            background: linear-gradient(to right, #ff7043, #ffa726);
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        
        /* Unique styling for Show All Students */
.show-button {
    background: linear-gradient(to right, #64b5f6, #81c784); /* blue to green gradient */
    font-size: 20px;
    padding: 16px 36px;
    margin-top: 10px;
    animation: fadeIn 1s ease-in-out;
}

.show-button:hover {
    box-shadow: 0 0 15px rgba(100, 181, 246, 0.6);
    background: linear-gradient(to right, #42a5f5, #66bb6a);
}
    </style>
</head>
<body>
    <h1>🎓 Welcome to the Attendance Portal</h1>

    <div class="button-container">
        <a href="home" class="button checkin">✅ CHECK IN</a>
        <a href="exit" class="button checkout">🚪 CHECK OUT</a>
    </div>

    
    <a href="search" class="button search-button">🔍 Search Student</a>
   <a href="show" class="button search-button show-button">📋 Show All Students</a>

</body>
</html>