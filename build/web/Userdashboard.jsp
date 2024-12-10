<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f7f7f7;
        }
       
        nav {
            background-color: #555;
            overflow: hidden;
            padding: 10px 0;
        }
        nav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 10px 20px;
            text-decoration: none;
        }
        nav a:hover {
            background-color: #444;
        }
        section {
            padding: 20px;
        }
        .actions {
            display: flex;
            justify-content: space-around;
            margin: 20px 0;
        }
        
        .quote-box {
            margin: 20px auto;
            padding: 20px;
            background: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 600px;
            border-left: 5px solid #0066cc;
        }
       
    </style>
</head>
<%@include file="Usermenu.jsp" %>
<body>
    
    <section>
        <%
            // Get admin name from session
            String userName = (String) session.getAttribute("userName");
            if (userName != null) {
        %>
        <!--<h2>Hello, <%= userName %>!</h2>-->
        <p>Here's a motivational quote for you:</p>
        <%
            } else {
        %>
        <h2>Welcome, User!</h2>
        <%
            }

            // Array of admin leadership quotes
            String[] quotes = {
                "Leadership is not about being in charge. It is about taking care of those in your charge. - Simon Sinek",
                "The art of leadership is saying no, not saying yes. It is very easy to say yes. - Tony Blair",
                "Management is doing things right; leadership is doing the right things. - Peter Drucker",
                "A leader is one who knows the way, goes the way, and shows the way. - John C. Maxwell",
                "The best way to predict your future is to create it. - Abraham Lincoln"
            };

            // Randomly select a quote
            int randomIndex = (int) (Math.random() * quotes.length);
            String randomQuote = quotes[randomIndex];
        %>
        <div class="quote-box">
            <p><em><%= randomQuote %></em></p>
        </div>
        
    </section>
    
</body>
</html>
