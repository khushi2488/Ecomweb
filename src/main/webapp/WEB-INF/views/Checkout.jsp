<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
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
}

.container {
    background-color: #fff;
    padding: 40px;
    border-radius: 8px;
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
    text-align: center;
    width: 350px;
}

h2 {
    color: #333;
    margin-bottom: 20px;
}

label {
    display: block;
    font-size: 16px;
    color: #333;
    text-align: left;
    margin-bottom: 8px;
}

input[type="text"] {
    width: calc(100% - 22px);
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}

input[type="submit"] {
    padding: 12px 20px;
    color: #fff;
    background-color: #007bff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}
</style>
</head>
<body>
<div class="container">
    <h2>Pay</h2>
    <form action="payment" method="post">
        <label for="creditCardNum">Credit Card:</label>
        <input type="text" id="creditCardNum" name="creditCardNum" required />

        <label for="expiredDate">Expired Date:</label>
        <input type="text" id="expiredDate" name="expiredDate" placeholder="MM/YY" required />

        <label for="cvv">CVV:</label>
        <input type="text" id="cvv" name="cvv" required />

        <input type="submit" value="Pay" />
    </form>
</div>
</body>
</html>
