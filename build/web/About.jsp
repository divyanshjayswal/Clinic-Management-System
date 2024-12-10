<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <style>

/* Apply a background image to the entire page */
body {
    font-family: 'Arial', sans-serif;
    background-image: url('Homepage.jpg');  /* Replace with your background image URL */
    background-size: cover; /* Ensures the image covers the entire page */
    background-position: center center;
    color: #333;
    line-height: 1.6;
    background-attachment: fixed; /* Keeps the background fixed while scrolling */
}

/* Apply transparency to the main content */
main {
    padding: 50px 20px;
    background-color: rgba(255, 255, 255, 0.8); /* White background with transparency */
    max-width: 800px;
    margin: 0 auto;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

/* Section Styling */
section {
    margin-bottom: 30px;
}

section h3 {
    font-size: 1.8em;
    color: #00796b;
    margin-bottom: 10px;
}

section p {
    font-size: 1.1em;
    margin-bottom: 15px;
}

ul {
    list-style-type: none;
}

ul li {
    font-size: 1.1em;
    margin-bottom: 10px;
}

/* Button Styling */
button.more-info {
    background-color: #00796b;
    color: white;
    border: none;
    padding: 10px 20px;
    font-size: 1.1em;
    cursor: pointer;
    border-radius: 5px;
}

button.more-info:hover {
    background-color: #004d40;
}


    </style>
    <script>
function toggleInfo() {
    var extraInfo = document.getElementById('extraInfo');
    var button = document.querySelector('.more-info');

    if (extraInfo.style.display === 'none') {
        extraInfo.style.display = 'block';
        button.textContent = 'Read Less';
    } else {
        extraInfo.style.display = 'none';
        button.textContent = 'Read More';
    }
}
    </script>
</head>
<%@include file="Homepage.jsp" %>
<body>
        <!-- Main Content -->
    <main>
        <div class="container">
            <h2>About Us</h2>
            <p>Welcome to the <strong>Hospital Management System</strong>. We are dedicated to providing exceptional healthcare services with an emphasis on patient care, professionalism, and cutting-edge technology.</p>

            <section>
                <h3>Our Mission</h3>
                <p>Our mission is to provide accessible, high-quality healthcare to all patients while maintaining an environment of trust, respect, and compassion. We aim to deliver the best outcomes by using advanced medical technologies and exceptional care standards.</p>
            </section>

            <section>
                <h3>Our Vision</h3>
                <p>To be a leader in healthcare services, providing a comprehensive range of medical services in a patient-centric environment. We strive to improve the health and well-being of our community through continuous innovation and compassionate care.</p>
            </section>

            <section>
                <h3>Meet Our Team</h3>
                <p>Our hospital is driven by a team of highly qualified doctors, nurses, and medical professionals who are committed to providing the best healthcare services.</p>
                <ul class="team">
                    <li><strong>Dr. Divyansh Jayswal</strong> - Chief Medical Officer</li>
                    <li><strong>Dr. Dheeraj Jaat</strong> - Head of Surgery</li>
                    <li><strong>Hemant Shelkar</strong> - Lead Nurse</li>
                    <li><strong>Dr. Brajesh Sullere</strong> - Pediatric Specialist</li>
                </ul>
            </section>

            <section>
                <h3>Hospital Facilities</h3>
                <p>We provide state-of-the-art facilities that are designed to cater to all types of medical needs.</p>
                <ul>
                    <li>Emergency Care</li>
                    <li>ICU & Critical Care</li>
                    <li>Laboratory & Diagnostics</li>
                    <li>Advanced Surgical Suites</li>
                    <li>Patient Recovery & Rehabilitation</li>
                </ul>
            </section>

            <button class="more-info" onclick="toggleInfo()">Read More</button>
            <div class="extra-info" id="extraInfo" style="display:none;">
                <p>Our hospital has been providing excellent care for over 20 years. We pride ourselves on being a leader in medical care and a trusted partner to patients and their families. Our approach integrates cutting-edge technology, compassionate care, and the latest research to provide holistic treatment options.</p>
            </div>
        </div>
    </main>
</body>

</html>