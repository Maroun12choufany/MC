<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<form id="create-form">
        <h2>Create Event</h2>
        <label for="event-name">Event Name</label>
        <p>
        <input type="text" id="event-name" name="event-name" required>
</p>
        <label for="event-date">Event Date</label>
        <p>
        <input type="date" id="event-date" name="event-date" required>
</p>
        <label for="event-location">Event Location</label>
        <p>
        <input type="text" id="event-location" name="event-location" required>
</p>
        <button type="submit">Create Event</button>
    </form>

    <!-- Form for updating an existing event -->
    <form id="update-form">
        <h2>Update Event</h2>
        <label for="update-event-id">Event ID</label>
        <p>
        <input type="text" id="update-event-id" name="update-event-id" required>
</p>
        <label for="update-event-name">New Event Name</label>
        <p>
        <input type="text" id="update-event-name" name="update-event-name">
</p>
        <label for="update-event-date">New Event Date</label>
        <p>
        <input type="date" id="update-event-date" name="update-event-date">
</p>
        <label for="update-event-location">New Event Location</label>
        <p>
        <input type="text" id="update-event-location" name="update-event-location">
</p>
        <button type="submit">Update Event</button>
    </form>

    <!-- Form for deleting an existing event -->
    <form id="delete-form">
        <h2>Delete Event</h2>
        <label for="delete-event-id">Event ID</label>
        <p>
        <input type="text" id="delete-event-id" name="delete-event-id" required>
</p>
        <button type="submit">Delete Event</button>
    </form>

    <script src="main.js"></script>
    <div id="event-list-container">
        <h2>Events</h2>
        <ul class="event-list" id="event-list">
            <!-- Events will be dynamically added here -->
    
</body>
</html>