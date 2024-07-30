<%@page import="com.bean.ProductCartBean"%>
<%@page import="com.bean.EProductBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Cart</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    flex-direction: column;
}

.container {
    background-color: #fff;
    padding: 40px;
    border-radius: 8px;
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
    text-align: center;
    width: 90%;
    max-width: 1200px;
}

h2 {
    color: #333;
    margin-bottom: 20px;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

table, th, td {
    border: 1px solid #ddd;
}

th, td {
    padding: 12px;
    text-align: center;
}

th {
    background-color: #f4f4f4;
    color: #333;
}

tr:nth-child(even) {
    background-color: #f9f9f9;
}

img {
    height: 100px;
    width: 100px;
    border-radius: 8px;
}

.action-links a {
    color: #007bff;
    text-decoration: none;
}

.action-links a:hover {
    text-decoration: underline;
}

.total-price {
    margin-top: 20px;
    font-size: 18px;
    font-weight: bold;
    color: #333;
}

.checkout-link {
    display: inline-block;
    padding: 10px 20px;
    color: #fff;
    background-color: #007bff;
    border-radius: 5px;
    text-decoration: none;
    margin-top: 20px;
    transition: background-color 0.3s;
}

.checkout-link:hover {
    background-color: #0056b3;
}
</style>
</head>
<body>
<div class="container">
    <h2>My Cart</h2>
    <%
    List<ProductCartBean> products = (List<ProductCartBean>) request.getAttribute("products");
    Float price = 0.0f;
    %>
    <table>
        <tr>
            <th>CartId</th>
            <th>ProductId</th>
            <th>ProductName</th>
            <th>Image</th>
            <th>Price</th>
            <th>Qty</th>
            <th>TotalPrice</th>
            <th>Action</th>
        </tr>
        <%
        for (ProductCartBean p : products) {
            out.print("<tr>");
            out.print("<td>" + p.getCartId() + "</td>");
            out.print("<td>" + p.getProductId() + "</td>");
            out.print("<td>" + p.getProductName() + "</td>");
            out.print("<td><img src='" + p.getProductImagePath() + "'/></td>");
            out.print("<td>" + p.getPrice() + "</td>");
            out.print("<td>" + p.getQty() + "</td>");
            out.print("<td>" + p.getQty() * p.getPrice() + "</td>");
            out.print("<td class='action-links'><a href='removecartitem?cartId=" + p.getCartId() + "'>Remove</a></td>");
            out.print("</tr>");
            price += p.getPrice() * p.getQty();
        }
        %>
    </table>
    <div class="total-price">Total Price: <%=price%></div>
    <a class="checkout-link" href="checkout">Checkout</a>
</div>
</body>
</html>
