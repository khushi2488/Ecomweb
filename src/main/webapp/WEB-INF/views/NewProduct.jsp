<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Product</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
body {
    background-color: #e0f2f1; /* Light teal background */
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.container {
    background-color: #ffffff;
    padding: 40px;
    border-radius: 15px;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
    width: 100%;
    max-width: 600px;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.container:hover {
    transform: scale(1.02);
    box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
}

h2 {
    color: #004d40; /* Darker teal */
    margin-bottom: 30px;
    animation: fadeIn 1s ease-out;
}

form label {
    font-weight: 600;
    color: #00796b; /* Teal */
}

input[type="submit"] {
    padding: 10px;
    color: #ffffff;
    background-color: #00796b; /* Teal */
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s, transform 0.2s;
}

input[type="submit"]:hover {
      background-color: #2c6b2f;  /* Darker teal */
    transform: scale(1.05);
}

@keyframes fadeIn {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}
</style>
</head>
<body>
<div class="container">
    <h2 class="text-center">Add New Product</h2>
    <form action="saveproduct" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="productName">Product Name</label>
            <input type="text" id="productName" name="productName" class="form-control" required />
        </div>
        
        <div class="form-group">
            <label for="category">Category</label>
            <input type="text" id="category" name="category" class="form-control" required />
        </div>
        
        <div class="form-group">
            <label for="price">Price</label>
            <input type="text" id="price" name="price" class="form-control" required />
        </div>
        
        <div class="form-group">
            <label for="qty">Quantity</label>
            <input type="text" id="qty" name="qty" class="form-control" required />
        </div>
        
        <div class="form-group">
            <label for="masterImage">Master Image</label>
            <input type="file" id="masterImage" name="masterImage" class="form-control-file" required />
        </div>
        
        <button type="submit" class="btn btn-primary btn-block">Add Product</button>
    </form>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
