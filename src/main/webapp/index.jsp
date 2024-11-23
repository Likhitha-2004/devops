<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Ice Cream Order App</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f8f9fa; /* Light gray background */
        }
        .container {
            text-align: center;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 8px;
            max-width: 400px;
            width: 100%;
            background-color: #ffffff; /* White card-like container */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        }
        h1 {
            color: #333;
        }
        .flavor-details {
            text-align: left;
            margin: 20px 0;
        }
        .flavor-details p {
            margin: 5px 0;
        }
        input[type="text"], button {
            padding: 8px;
            width: 100%;
            margin-top: 10px;
        }
        button {
            background-color: #007bff; /* Blue button */
            color: white;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Ice Cream Order App</h1>

        <div class="flavor-details">
            <h2>Available Flavors</h2>
            <p><strong>Vanilla</strong>: Classic vanilla flavor. Price: $2.50 per scoop</p>
            <p><strong>Chocolate</strong>: Rich chocolate flavor. Price: $3.00 per scoop</p>
            <p><strong>Strawberry</strong>: Fresh strawberry flavor. Price: $3.50 per scoop</p>
        </div>

        <form action="search.jsp" method="get">
            <label for="search">Search for a Flavor:</label>
            <input type="text" id="search" name="flavorName" placeholder="Enter flavor name" required>
            <button type="submit">Search</button>
        </form>
    </div>
</body>
</html>
