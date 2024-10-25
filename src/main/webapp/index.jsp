<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Order Summary</title>
    <style>
        body { font-family: Arial, sans-serif; display: flex; justify-content: center; align-items: center; height: 100vh; }
        .container { text-align: center; border: 1px solid #ccc; padding: 20px; border-radius: 8px; max-width: 300px; width: 100%; }
        h1 { color: #333; }
        p { font-size: 16px; color: #555; }
    </style>
</head>
<body>
    <div class="container">
        <h1>Order Summary</h1>
        <%
            // Retrieve form data
            String flavor = request.getParameter("flavor");
            String quantityStr = request.getParameter("quantity");

            int quantity = Integer.parseInt(quantityStr);

            // Define prices for each flavor
            double pricePerScoop;
            switch (flavor) {
                case "Vanilla":
                    pricePerScoop = 2.50;
                    break;
                case "Chocolate":
                    pricePerScoop = 3.00;
                    break;
                case "Strawberry":
                    pricePerScoop = 3.50;
                    break;
                default:
                    pricePerScoop = 0.0;
            }

            // Calculate total cost
            double totalCost = pricePerScoop * quantity;

            // Display the order summary
        %>
        <p><strong>Flavor:</strong> <%= flavor %></p>
        <p><strong>Quantity:</strong> <%= quantity %> scoop(s)</p>
        <p><strong>Total Price:</strong> $<%= String.format("%.2f", totalCost) %></p>

        <form action="index.jsp" method="get">
            <button type="submit">Place New Order</button>
        </form>
    </div>
</body>
</html>
