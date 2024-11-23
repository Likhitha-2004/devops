<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Search Results</title>
    <style>
        body { font-family: Arial, sans-serif; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
        .container { text-align: center; border: 1px solid #ccc; padding: 20px; border-radius: 8px; max-width: 400px; width: 100%; }
        h1 { color: #333; }
        p { margin: 10px 0; }
        a { text-decoration: none; color: #007bff; }
        a:hover { text-decoration: underline; }
    </style>
</head>
<body>
    <div class="container">
        <h1>Search Results</h1>
        <%
            // Define available flavors with their prices
            Map<String, String> flavors = new HashMap<>();
            flavors.put("Vanilla", "Classic vanilla flavor. Price: $2.50 per scoop");
            flavors.put("Chocolate", "Rich chocolate flavor. Price: $3.00 per scoop");
            flavors.put("Strawberry", "Fresh strawberry flavor. Price: $3.50 per scoop");

            // Get the search term from the query parameter
            String flavorName = request.getParameter("flavorName");
            String flavorDetails = flavors.get(flavorName);

            // Check if the flavor exists and display the result
            if (flavorDetails != null) {
        %>
            <p><strong><%= flavorName %>:</strong> <%= flavorDetails %></p>
        <% } else { %>
            <p>Sorry, the flavor "<%= flavorName %>" is not available.</p>
        <% } %>
        <a href="index.jsp">Back to Home</a>
    </div>
</body>
</html>
