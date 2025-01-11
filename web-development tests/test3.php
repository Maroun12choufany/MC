<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
  /* Basic styling for cards */
  .card {
    width: 300px;
    border: 1px solid #ccc;
    border-radius: 8px;
    padding: 16px;
    margin: 16px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    background-color: #fff;
  }
  
  /* Styling for card titles */
  .card h2 {
    font-size: 1.5rem;
    margin-bottom: 8px;
  }
  
  /* Styling for card content */
  .card p {
    font-size: 1rem;
    line-height: 1.5;
  }
  .card-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center; /* Centers cards horizontally */
    gap: 20px; /* Adds space between cards */
    padding: 20px; /* Adds padding around the container */
    background-color: #f0f0f0; /* Background color for the container */
  }
</style>
</head>
<body>
<div class="card-container">
    <!-- Example card 1 -->
    <div class="card">
      <h2>Wedding Planning</h2>
      <p>Full-service wedding planning including venue selection, catering, decor, and more.</p>
    </div>

    <!-- Example card 2 -->
    <div class="card">
      <h2>Corporate Events</h2>
      <p>Plan and organize corporate events such as conferences, seminars, and team-building activities.</p>
    </div>

    <!-- Example card 3 -->
    <div class="card">
      <h2>Birthday Parties</h2>
      <p>Customized birthday party planning including themes, entertainment, and logistics.</p>
    </div>

    <!-- Add more cards as needed -->
     <div class="card">
    <section class="services">
        <h2>Event Planning</h2>
        <p>Comprehensive event planning services tailored to your needs, ensuring every detail is meticulously handled from inception to execution.</p>
    </section></div>
<div class="card">
    <section class="service">
        <h2>Venue Selection</h2>
        <p>We help you choose the perfect venue that fits your event's theme, size, and budget, ensuring a memorable setting for your guests.</p>
    </section></div>
    <div class="card">
    <section class="service">
        <h2>Vendor Management</h2>
        <p>Coordination with trusted vendors including caterers, decorators, entertainers, and more, to ensure seamless integration and exceptional service delivery.</p>
    </section></div>
    <div class="card">
    <section class="service">
        <h2>Event Design</h2>
        <p>Creative event design services covering theme development, décor, lighting, and floral arrangements to create a captivating atmosphere.</p>
    </section></div>
    <div class="card">
    <section class="service">
        <h2>Entertainment</h2>
        <p>Booking of talented performers, DJs, live bands, or unique entertainment options to keep your guests engaged and entertained throughout the event.</p>
    </section></div>
    <div class="card">
    <footer>
        <p>For inquiries or to request a quote, please contact us <a href="contact.php">Contact</a>.</p>
    </footer>
  </div>
</body>
</html>