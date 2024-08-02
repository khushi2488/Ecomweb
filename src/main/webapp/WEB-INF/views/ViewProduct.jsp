<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Product</title>
<link rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
    crossorigin="anonymous">
<style>
    body {
        font-family: 'Poppins', sans-serif;
        background-color: #f8f9fa;
        color: #444444;
        padding: 20px;
    }
    .product-view {
        background: #ffffff;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 30px;
        max-width: 600px;
        margin: 0 auto;
    }
    .product-view h2 {
        margin-bottom: 20px;
    }
    .product-view .product-info {
        font-size: 1.2rem;
        margin-bottom: 10px;
    }
</style>
</head>
<body>

<div class="container mt-5">
    <div class="product-view">
        <h2 class="text-center">View Product</h2>
        <div class="product-info">
            <strong>Product Name:</strong> ${product.productName }
        </div>
        <div class="product-info">
            <strong>Price:</strong> ${product.price }
        </div>
        <div class="product-info">
            <strong>Category:</strong> ${product.category }
        </div>
        <div class="product-info">
            <strong>Qty:</strong> ${product.qty }
        </div>
    </div>
</div>

</body>
</html>
