<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Send Feedback</title>
    
    <script>
        // script.js
function validateForm() {
    // Get the form values
    var name = document.getElementById('name').value;
    var email = document.getElementById('email').value;
    var phone = document.getElementById('phone').value;
    var message = document.getElementById('message').value;

    // Basic form validation
    if (name === "" || email === "" || phone === "" || message === "") {
        alert("Please fill in all fields.");
        return false; // Prevent form submission
    }

    // Simple email validation
    var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    if (!emailPattern.test(email)) {
        alert("Please enter a valid email address.");
        return false;
    }

    // Simple phone number validation (just numbers)
    var phonePattern = /^[0-9]{10}$/;
    if (!phonePattern.test(phone)) {
        alert("Please enter a valid phone number (10 digits).");
        return false;
    }

    return true; // Allow form submission
}
    </script>
    <style>


/* Main Content Area */
main {
    padding: 50px 20px;
    background-color: rgba(255, 255, 255, 0.5); /* White with transparency */
    max-width: 800px;
    margin: 0 auto;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

main h2 {
    font-size: 2.5em;
    color: #00796b;
    text-align: center;
}

main p {
    font-size: 1.1em;
    margin-bottom: 30px;
    text-align: center;
}

/* Form Styling */
form {
    display: flex;
    background-color: rgba(255, 255, 255, 0.5);
    flex-direction: column;
}

.form-group {
    margin-bottom: 20px;
}

.form-group label {
    font-size: 1.1em;
    margin-bottom: 8px;
}

.form-group input,
.form-group textarea {
    width: 100%;
    padding: 10px;
    font-size: 1em;
    border: 1px solid #ddd;
    border-radius: 5px;
    //background-color: rgba(255, 255, 255, 0.9); /* Transparent input fields */
    background-color: rgba(0,0,0,0.1);
}

.form-group input:focus,
.form-group textarea:focus {
    border-color: #00796b;
}

button {
    background-color: #00796b;
    color: white;
    border: none;
    padding: 12px 20px;
    font-size: 1.1em;
    cursor: pointer;
    border-radius: 5px;
}

button:hover {
    background-color: #004d40;
}
    </style>
</head>
<%@include file="Homepage.jsp" %>
<body>
    
    
    <main>
        <div class="container">
            <h2>Send Feedback</h2>
            <p>If you have any questions or need assistance, please feel free to reach out to us. We're here to help!</p>

            <form id="contactForm" action="SendFeedback" method="post" onsubmit="return validateForm()">
                <div class="form-group">
                    <label for="name">Full Name:</label>
                    <input type="text" id="name" name="name" required placeholder="Enter your full name">
                </div>
                <div class="form-group">
                    <label for="email">Email Address:</label>
                    <input type="email" id="email" name="email" required placeholder="Enter your email">
                </div>
                <div class="form-group">
                    <label for="phone">Phone Number:</label>
                    <input type="text" id="phone" name="phone" required placeholder="Enter your phone number">
                </div>
                <div class="form-group">
                    <label for="message">Your Message:</label>
                    <textarea id="message" name="message" required placeholder="Type your message here..." rows="5"></textarea>
                </div>
                <button type="submit">Send Message</button>
            </form>
        </div>
    </main>

</body>

</html>