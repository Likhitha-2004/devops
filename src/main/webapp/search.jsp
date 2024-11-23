<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Search Results</title>
    <style>
        /* Updated styles for body */
        body { 
            font-family: 'Roboto', sans-serif; /* Updated font style */
            display: flex; 
            justify-content: center; 
            align-items: center; 
            height: 100vh; 
            margin: 0; 
            background-color: #eef2f3; /* Light blue-gray background */
        }

        /* Updated styles for container */
        .container { 
            text-align: center; 
            border: 1px solid #ccc; 
            padding: 20px; 
            border-radius: 8px; 
            max-width: 300px; 
            width: 100%; 
            background-color: #ffffff; /* White container */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        }

        /* Styling for the heading */
        h1 { 
            color: #333; 
            font-family: 'Open Sans', sans-serif; /* Updated heading font */
            font-weight: bold; 
        }

        /* Flavor info styling */
        .flavor-info { 
            margin-top: 20px; 
            font-size: 16px; 
            color: #555; 
        }

        .flavor-info p { 
            margin: 10px 0; 
        }

        /* Link styling */
        a { 
            color: #007bff; 
            text-decoration: none; 
            font-weight: bold; 
        }

        a:hover { 
            text-decoration: underline; 
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Search Results</h1>
        <%
            // Get the search query
            String flavorName = request.getParameter("flavorName");
            String flavorInfo = "";
            double price = 0.0;

            // Check the flavor name and assign information
            if (flavorName != null) {
                switch (flavorName.toLowerCase()) {
                    case "vanilla":
                        flavorInfo = "Classic vanilla flavor";
                        price = 2.50;
                        break;
                    case "chocolate":
                        flavorInfo = "Rich chocolate flavor";
                        price = 3.00;
                        break;
                    case "strawberry":
                        flavorInfo = "Fresh strawberry flavor";
                        price = 3.50;
                        break;
                    default:
                        flavorInfo = "Flavor not found. Please search for Vanilla, Chocolate, or Strawberry.";
                }
            } else {
                flavorInfo = "Please enter a flavor name to search.";
            }
        %>
        
        <% if (price > 0.0) { %>
            <div class="flavor-info">
                <p><strong>Flavor:</strong> <%= flavorName %></p>
                <p><strong>Description:</strong> <%= flavorInfo %></p>
                <p><strong>Price:</strong> $<%= String.format("%.2f", price) %> per scoop</p>
            </div>
        <% } else { %>
            <p class="flavor-info"><%= flavorInfo %></p>
        <% } %>

        <a href="index.jsp">Back to Home</a>
    </div>
</body>
</html>
