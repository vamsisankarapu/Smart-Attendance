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
        }

        h2 {
            color: #fff;
            margin-bottom: 40px;
            font-size: 28px;
            text-shadow: 2px 2px 6px rgba(0,0,0,0.3);
        }

        .profile-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 30px;
        }

        .profile-card {
            background: #ffffff;
            border-radius: 15px;
            padding: 20px 25px;
            text-align: center;
            width: 180px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .profile-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 12px 25px rgba(0,0,0,0.25);
        }

        .profile-card img {
            border-radius: 50%;
            width: 130px;
            height: 130px;
            object-fit: cover;
            border: 4px solid #3498db;
            box-shadow: 0 4px 10px rgba(0,0,0,0.2);
            transition: 0.3s ease;
        }

        .profile-card img:hover {
            border-color: #ff5e62;
        }

        .profile-name {
            margin-top: 15px;
            font-weight: bold;
            font-size: 16px;
            color: #2c3e50;
        }

        .link-container {
            margin-top: 50px;
        }

        .show-link {
            display: inline-block;
            margin: 10px 15px;
            padding: 12px 22px;
            text-decoration: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            transition: all 0.3s ease;
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }

        .show-link:first-of-type {
            background: linear-gradient(90deg, #3498db, #2980b9);
            color: white;
        }

        .show-link:first-of-type:hover {
            background: linear-gradient(90deg, #1abc9c, #16a085);
            transform: translateY(-3px);
        }

        .show-link:last-of-type {
            background: linear-gradient(90deg, #ff9966, #ff5e62);
            color: white;
        }

        .show-link:last-of-type:hover {
            background: linear-gradient(90deg, #e67e22, #d35400);
            transform: translateY(-3px);
        }
    </style>
</head>
<body>
    <h2> Click a student to view their profile </h2>

    <div class="profile-container">
        <div class="profile-card">
            <a href="vamsi">
                <img src="${pageContext.request.contextPath}/images/vamsi.jpg" alt="Vamsi">
            </a>
            <div class="profile-name">Vamsi</div>
        </div>

        <div class="profile-card">
            <a href="vamsi">
                <img src="${pageContext.request.contextPath}/images/vasanth.jpg" alt="Vasanth">
            </a>
            <div class="profile-name">Vasanth</div>
        </div>

        <div class="profile-card">
            <a href="vamsi">
                <img src="images/chandini.jpg" alt="Chandini">
            </a>
            <div class="profile-name">Chandini</div>
        </div>

        <div class="profile-card">
            <a href="vamsi">
                <img src="images/Gnaneswari.jpg" alt="Gnaneswari">
            </a>
            <div class="profile-name">Gnaneswari</div>
        </div>

        <div class="profile-card">
            <a href="vamsi">
                <img src="images/Alisha.jpg" alt="Alisha">
            </a>
            <div class="profile-name">Alisha</div>
        </div>
    </div>

    <div class="link-container">
        <a class="show-link" href="show">Show All Students</a>
        <a class="show-link" href="search">Search Student</a>
    </div>
</body>
</html>
