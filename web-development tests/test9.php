<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Manager</title>
    <link rel="stylesheet" href="styles.css">
    <script src="https://kit.fontawesome.com/your-fontawesome-kit.js" crossorigin="anonymous"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap');

:root {
    --primary-color: #3498db;
    --secondary-color: #2ecc71;
    --background-color: #ecf0f1;
    --text-color: #34495e;
    --card-background: #ffffff;
    --animation-duration: 0.3s;
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Poppins', sans-serif;
    background-color: var(--background-color);
    color: var(--text-color);
    line-height: 1.6;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 2rem;
}

header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 2rem;
}

h1 {
    font-size: 2.5rem;
    color: var(--primary-color);
}

.btn-add {
    background-color: var(--secondary-color);
    color: white;
    border: none;
    padding: 0.75rem 1.5rem;
    font-size: 1rem;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color var(--animation-duration) ease;
}

.btn-add:hover {
    background-color: #27ae60;
}

.event-list {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
    gap: 2rem;
}

.event-card {
    background-color: var(--card-background);
    border-radius: 10px;
    padding: 1.5rem;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    transition: transform var(--animation-duration) ease, box-shadow var(--animation-duration) ease;
}

.event-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
}

.event-card h3 {
    font-size: 1.5rem;
    margin-bottom: 0.5rem;
    color: var(--primary-color);
}

.event-card p {
    margin-bottom: 0.5rem;
}

.event-actions {
    display: flex;
    justify-content: flex-end;
    margin-top: 1rem;
}

.btn-edit, .btn-delete {
    background-color: transparent;
    border: none;
    cursor: pointer;
    font-size: 1rem;
    margin-left: 1rem;
    transition: color var(--animation-duration) ease;
}

.btn-edit {
    color: var(--primary-color);
}

.btn-delete {
    color: #e74c3c;
}

.btn-edit:hover, .btn-delete:hover {
    opacity: 0.8;
}

.event-form {
    background-color: var(--card-background);
    border-radius: 10px;
    padding: 2rem;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    max-width: 600px;
    margin: 0 auto;
}

.event-form h2 {
    font-size: 2rem;
    margin-bottom: 1.5rem;
    color: var(--primary-color);
}

.form-group {
    margin-bottom: 1.5rem;
}

.form-group label {
    display: block;
    margin-bottom: 0.5rem;
    font-weight: 500;
}

.form-group input,
.form-group textarea {
    width: 100%;
    padding: 0.75rem;
    font-size: 1rem;
    border: 1px solid #bdc3c7;
    border-radius: 5px;
    transition: border-color var(--animation-duration) ease;
}

.form-group input:focus,
.form-group textarea:focus {
    outline: none;
    border-color: var(--primary-color);
}

.form-actions {
    display: flex;
    justify-content: flex-end;
    gap: 1rem;
}

.btn-save, .btn-cancel {
    padding: 0.75rem 1.5rem;
    font-size: 1rem;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color var(--animation-duration) ease;
}

.btn-save {
    background-color: var(--primary-color);
    color: white;
}

.btn-cancel {
    background-color: #95a5a6;
    color: white;
}

.btn-save:hover {
    background-color: #2980b9;
}

.btn-cancel:hover {
    background-color: #7f8c8d;
}

.hidden {
    display: none;
}

@keyframes fadeIn {
    from { opacity: 0; transform: translateY(20px); }
    to { opacity: 1; transform: translateY(0); }
}

@keyframes fadeOut {
    from { opacity: 1; transform: translateY(0); }
    to { opacity: 0; transform: translateY(20px); }
}

.fade-in {
    animation: fadeIn var(--animation-duration) ease forwards;
}

.fade-out {
    animation: fadeOut var(--animation-duration) ease forwards;
}
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1>Event Manager</h1>
            <button id="addEventBtn" class="btn-add"><i class="fas fa-plus"></i> Add Event</button>
        </header>
        
        <main>
            <section id="eventList" class="event-list">
                <!-- Events will be dynamically added here -->
            </section>
            
            <section id="eventForm" class="event-form hidden">
                <h2 id="formTitle">Add New Event</h2>
                <form id="eventInputForm">
                    <input type="hidden" id="eventId">
                    <div class="form-group">
                        <label for="eventName">Event Name</label>
                        <input type="text" id="eventName" required>
                    </div>
                    <div class="form-group">
                        <label for="eventDate">Date</label>
                        <input type="date" id="eventDate" required>
                    </div>
                    <div class="form-group">
                        <label for="eventLocation">Location</label>
                        <input type="text" id="eventLocation" required>
                    </div>
                    <div class="form-group">
                        <label for="eventDescription">Description</label>
                        <textarea id="eventDescription" required></textarea>
                    </div>
                    <div class="form-actions">
                        <button type="submit" class="btn-save">Save</button>
                        <button type="button" class="btn-cancel">Cancel</button>
                    </div>
                </form>
            </section>
        </main>
    </div>
    <script src="script.js"></script>
</body>
</html>