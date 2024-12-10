<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page with Quotes</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #e9f5f8;
            color: #333;
        }
        nav {
            text-align: center;
            background-color: #004080;
            padding: 10px 0;
        }
        nav a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-weight: bold;
        }
        nav a:hover {
            text-decoration: underline;
        }
        section {
            padding: 20px;
            text-align: center;
        }
        .quote-box {
            margin: 20px auto;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 50%;
        }
        .quote-box1 {
            margin: 20px auto;
            padding: 20px;
            background: #fff;
            
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 25%;
        }
        
    </style>
</head>
<%@include file="Homepage.jsp" %>
<body>
    <section>
        <h2  class="quote-box1" >Your Daily Dose of Motivation</h2>
        <div class="quote-box">
            <%
                // Array of quotes
                String[] quotes = {
                    "The best way to predict the future is to create it. - Peter Drucker",
                    "Success usually comes to those who are too busy to be looking for it. - Henry David Thoreau",
                    "Don’t be afraid to give up the good to go for the great. - John D. Rockefeller",
                    "I find that the harder I work, the more luck I seem to have. - Thomas Jefferson",
                    "Success is not the key to happiness. Happiness is the key to success. - Albert Schweitzer"
                };

                // Generate a random quote
                int randomIndex = (int) (Math.random() * quotes.length);
                String quoteOfTheDay = quotes[randomIndex];
            %>
            <p><em><%= quoteOfTheDay %></em></p>
        </div>
        <p style="color: maroon;">Refresh the page to see a new quote!</p>
    </section>
</body>
</html>
