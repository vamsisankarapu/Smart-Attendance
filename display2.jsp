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
            background-color: #f4f6f8;
            margin: 0;
            padding: 40px;
            text-align: center;
        }
        h2 {
            color: #2c3e50;
            margin-bottom: 30px;
        }
        .profile-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 30px;
        }
        .profile-card {
            text-align: center;
            transition: transform 0.3s ease;
        }
        .profile-card:hover {
            transform: scale(1.05);
        }
        .profile-card img {
            border-radius: 10px;
            width: 150px;
            height: 150px;
            object-fit: cover;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        .profile-name {
            margin-top: 10px;
            font-weight: bold;
            color: #34495e;
        }
        .show-link {
            display: inline-block;
            margin-top: 40px;
            padding: 12px 20px;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
        }
        .show-link:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <h2>Click the images to visit student profiles</h2>

    <div class="profile-container">
        <div class="profile-card">
            <a href="vasanth">
                <img src="${pageContext.request.contextPath}/images/vamsi.jpg" alt="Vamsi">
            </a>
            <div class="profile-name">Vamsi</div>
        </div>

        <div class="profile-card">
            <a href="vasanth">
                <img src="${pageContext.request.contextPath}/images/vasanth.jpg" alt="Vasanth">
            </a>
            <div class="profile-name">Vasanth</div>
        </div>
        

        <div class="profile-card">
            <a href="vasanth">
                <img src="images/chandini.jpg" alt="Chandini">
            </a>
            <div class="profile-name">Chandini</div>
        </div>
        <div class="profile-card">
            <a href="vasanth">
                <img src="images/Gnaneswari.jpg" alt="Gnaneswari">
            </a>
            <div class="profile-name">Gnaneswari</div>
        </div>
        <div class="profile-card">
            <a href="vasanth">
                <img src="images/Alisha.jpg" alt="Alisha">
            </a>
            <div class="profile-name">Alisha</div>
        </div>
    </div>

    <a class="show-link" href="show2">Show All Students</a>
</body>
</html>