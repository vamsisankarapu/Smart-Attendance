<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Student Profiles - Vamsi Educational Institution</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #74ebd5, #ACB6E5);
            margin: 0;
            padding: 40px;
            text-align: center;
            animation: fadeIn 1s ease-in-out;
        }

        h2 {
            color: #2c3e50;
            margin-bottom: 40px;
            font-size: 28px;
            text-shadow: 1px 1px 6px rgba(0,0,0,0.15);
        }

        .profile-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 35px;
        }

        .profile-card {
            background: #ffffff;
            border-radius: 12px;
            padding: 15px 20px;
            text-align: center;
            width: 180px;
            transition: all 0.3s ease;
            box-shadow: 0 5px 15px rgba(0,0,0,0.15);
        }

        .profile-card:hover {
            transform: translateY(-8px) scale(1.05);
            box-shadow: 0 10px 25px rgba(0,0,0,0.25);
        }

        .profile-card img {
            border-radius: 50%;
            width: 140px;
            height: 140px;
            object-fit: cover;
            border: 4px solid #3498db;
            transition: border-color 0.3s ease, transform 0.3s ease;
        }

        .profile-card:hover img {
            border-color: #2ecc71;
            transform: rotate(-3deg) scale(1.05);
        }

        .profile-name {
            margin-top: 12px;
            font-weight: bold;
            font-size: 16px;
            color: #34495e;
        }

        .profile-name::after {
            content: " ⭐";
            color: gold;
            font-size: 14px;
        }

        @keyframes fadeIn {
            from {opacity: 0; transform: translateY(-20px);}
            to {opacity: 1; transform: translateY(0);}
        }
    </style>
</head>
<body>
    <h2> Click the images to visit student profiles</h2>

    <div class="profile-container">
        <div class="profile-card">
            <a href="vamsi_End">
                <img src="${pageContext.request.contextPath}/images/vamsi.jpg" alt="Vamsi">
            </a>
            <div class="profile-name">Vamsi</div>
        </div>

        <div class="profile-card">
            <a href="vamsi_End">
                <img src="${pageContext.request.contextPath}/images/vasanth.jpg" alt="Vasanth">
            </a>
            <div class="profile-name">Vasanth</div>
        </div>

        <div class="profile-card">
            <a href="vamsi_End">
                <img src="images/chandini.jpg" alt="Chandini">
            </a>
            <div class="profile-name">Chandini</div>
        </div>

        <div class="profile-card">
            <a href="vamsi_End">
                <img src="images/Gnaneswari.jpg" alt="Gnaneswari">
            </a>
            <div class="profile-name">Gnaneswari</div>
        </div>

        <div class="profile-card">
            <a href="vamsi_End">
                <img src="images/Alisha.jpg" alt="Alisha">
            </a>
            <div class="profile-name">Alisha</div>
        </div>
    </div>
</body>
</html>
