<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EcomHome</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
body {
    background-color: #f5f5f5;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.container {
    background-color: #ffffff;
    border-radius: 20px;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
    padding: 40px;
    text-align: center;
    width: 100%;
    max-width: 450px;
}

.title {
    font-size: 28px;
    font-weight: 700;
    color: #00796b;
    margin-bottom: 20px;
}

.welcome {
    font-size: 22px;
    color: #00796b;
    margin-bottom: 10px;
}

.description {
    font-size: 16px;
    color: #555555;
    margin-bottom: 20px;
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
</style>
</head>
<body>
<div class="container">
    <h2 class="title">EcomHome</h2>
    <p class="welcome">Welcome, ${user.firstName}</p>
    <p class="description">We are glad to have you here! Explore our wide range of products and enjoy a seamless shopping experience.</p>
    <img class="profile-pic" alt="Profile Picture" src="${user.profilePicPath}" />
    <a class="btn products-link" href="userproducts">Explore Products</a>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
