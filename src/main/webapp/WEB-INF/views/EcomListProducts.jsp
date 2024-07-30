<%@page import="com.bean.EProductBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    body {
        background-color: #e0f2f1;
        padding-top: 20px;
    }
    .container {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
    }
    .action-links a {
        margin: 0 5px;
    }
    .btn-custom {
        background-color: #007bff; 
        border-color: #007bff; /
        color: #fff;
    }
    .btn-custom:hover {
        background-color: #0056b3;
        border-color: #0056b3;
    }
</style>
</head>
<body>
<div class="container">
    <h2 class="text-center mb-4">Product List</h2>
    <a href="/newproduct" class="btn btn-custom mb-3">New Product</a>
    <%
    List<EProductBean> products = (List<EProductBean>) request.getAttribute("products");
    if (products != null && !products.isEmpty()) {
    %>
    <table class="table table-bordered table-striped">
        <thead>
            <tr>
                <th>ProductId</th>
                <th>ProductName</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <%
            for (EProductBean p : products) {
                out.print("<tr>");
                out.print("<td>" + p.getProductId() + "</td><td>" + p.getProductName() + "</td>");
                out.print("<td class='action-links'><a href='deleteproduct?productId=" + p.getProductId() + "' class='btn btn-danger btn-sm'>Delete</a> <a href='viewproduct?productId=" + p.getProductId() + "' class='btn btn-info btn-sm'>View</a></td>");
                out.print("</tr>");
            }
            %>
        </tbody>
    </table>
    <%
    } else {
    %>
    <p class="text-center">No products found.</p>
    <%
    }
    %>
</div>
<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
