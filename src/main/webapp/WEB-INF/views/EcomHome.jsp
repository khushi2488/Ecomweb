<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ShopEase</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
<style>
body {
    background-color: #f8f9fa;
    margin: 0;
    font-family: 'Arial', sans-serif;
    height: 100vh;
}

.container {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    height: 100vh;
    padding: 20px;
}

.title {
    font-size: 48px;
    font-weight: 700;
    color: #00796b;
    margin-bottom: 10px;
    text-transform: uppercase;
}

.subtitle {
    font-size: 24px;
    color: #004d40;
    margin-bottom: 20px;
}

.welcome {
    font-size: 28px;
    color: #00796b;
    margin-bottom: 10px;
}

.description {
    font-size: 18px;
    color: #555555;
    margin-bottom: 20px;
    max-width: 600px;
}

.profile-pic {
    height: 150px;
    width: 150px;
    border-radius: 50%;
    border: 5px solid #00796b;
    margin-bottom: 20px;
    object-fit: cover;
}

.products-link {
    display: inline-block;
    padding: 14px 28px;
    color: #ffffff;
    background-color: #00796b;
    border-radius: 8px;
    text-decoration: none;
    font-size: 18px;
    font-weight: 500;
    transition: background-color 0.3s, transform 0.2s;
}

.products-link:hover {
    background-color: #004d40;
    transform: scale(1.05);
}

.footer {
    font-size: 16px;
    color: #555555;
    margin-top: 20px;
}

.footer a {
    color: #00796b;
    text-decoration: none;
}

.footer a:hover {
    text-decoration: underline;
}

.footer i {
    margin-right: 5px;
}
</style>
</head>
<body>
<div class="container">
    <h2 class="title">ShopEase <i class="fas fa-shopping-bag"></i></h2>
    <p class="subtitle"><i class="fas fa-store"></i> Your One-Stop Shop for Everything!</p>
    <p class="welcome">Welcome, ${user.firstName} <i class="fas fa-smile"></i></p>
    <p class="description"><i class="fas fa-info-circle"></i> We are thrilled to have you here! Discover our vast collection of products tailored just for you. Enjoy a seamless shopping experience with amazing offers and fast delivery.</p>
    <img class="profile-pic" alt="Profile Picture" src="${user.profilePicPath}" />
    <a class="btn products-link" href="userproducts"><i class="fas fa-box-open"></i> Explore Products</a>
    
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
