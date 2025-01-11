// test9.php
document.addEventListener('DOMContentLoaded', () => {
    const eventList = document.getElementById('eventList');
    const eventForm = document.getElementById('eventForm');
    const addEventBtn = document.getElementById('addEventBtn');
    const eventInputForm = document.getElementById('eventInputForm');
    const formTitle = document.getElementById('formTitle');

    let events = JSON.parse(localStorage.getItem('events')) || [];

    function saveEvents() {
        localStorage.setItem('events', JSON.stringify(events));
    }

    function renderEvents() {
        eventList.innerHTML = '';
        events.forEach((event, index) => {
            const eventCard = document.createElement('div');
            eventCard.classList.add('event-card');
            eventCard.innerHTML = `
                <h3>${event.name}</h3>
                <p><strong>Date:</strong> ${event.date}</p>
                <p><strong>Location:</strong> ${event.location}</p>
                <p>${event.description}</p>
                <div class="event-actions">
                    <button class="btn-edit" data-index="${index}"><i class="fas fa-edit"></i> Edit</button>
                    <button class="btn-delete" data-index="${index}"><i class="fas fa-trash-alt"></i> Delete</button>
                </div>
            `;
            eventList.appendChild(eventCard);
            eventCard.classList.add('fade-in');
        });
    }

    function showEventForm(event = null) {
        formTitle.textContent = event ? 'Edit Event' : 'Add New Event';
        eventInputForm.reset();
        if (event) {
            document.getElementById('eventId').value = event.id;
            document.getElementById('eventName').value = event.name;
            document.getElementById('eventDate').value = event.date;
            document.getElementById('eventLocation').value = event.location;
            document.getElementById('eventDescription').value = event.description;
        }
        eventList.classList.add('fade-out');
        setTimeout(() => {
            eventList.classList.add('hidden');
            eventForm.classList.remove('hidden');
            eventForm.classList.add('fade-in');
        }, 300);
    }

    function hideEventForm() {
        eventForm.classList.add('fade-out');
        setTimeout(() => {
            eventForm.classList.add('hidden');
            eventList.classList.remove('hidden');
            eventList.classList.add('fade-in');
        }, 300);
    }

    addEventBtn.addEventListener('click', () => showEventForm());

    eventInputForm.addEventListener('submit', (e) => {
        e.preventDefault();
        const eventId = document.getElementById('eventId').value;
        const newEvent = {
            id: eventId || Date.now(),
            name: document.getElementById('eventName').value,
            date: document.getElementById('eventDate').value,
            location: document.getElementById('eventLocation').value,
            description: document.getElementById('eventDescription').value
        };

        if (eventId) {
            const index = events.findIndex(event => event.id === parseInt(eventId));
            events[index] = newEvent;
        } else {
            events.push(newEvent);
        }

        saveEvents();
        renderEvents();
        hideEventForm();
    });

    eventList.addEventListener('click', (e) => {
        if (e.target.classList.contains('btn-edit') || e.target.parentElement.classList.contains('btn-edit')) {
            const index = e.target.closest('.btn-edit').dataset.index;
            showEventForm(events[index]);
        } else if (e.target.classList.contains('btn-delete') || e.target.parentElement.classList.contains('btn-delete')) {
            const index = e.target.closest('.btn-delete').dataset.index;
            if (confirm('Are you sure you want to delete this event?')) {
                events.splice(index, 1);
                saveEvents();
                renderEvents();
            }
        }
    });

    document.querySelector('.btn-cancel').addEventListener('click', hideEventForm);

    renderEvents();
});

//test10.php//
document.addEventListener('DOMContentLoaded', function() {
    const form = document.getElementById('advancedForm');
    const inputs = form.querySelectorAll('input');

    const validations = {
        name: {
            regex: /^[a-zA-Z\s]{2,30}$/,
            error: 'Name must be 2-30 characters long and contain only letters.'
        },
        email: {
            regex: /^[^\s@]+@[^\s@]+\.[^\s@]+$/,
            error: 'Please enter a valid email address.'
        },
        password: {
            regex: /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$/,
            error: 'Password must be at least 8 characters long and include uppercase, lowercase, and numbers.'
        },
        phone: {
            regex: /^\d{8}$/,
            error: 'Please enter a valid  phone number.'
        }
    };

    inputs.forEach(input => {
        input.addEventListener('input', function() {
            validateInput(this);
        });

        input.addEventListener('blur', function() {
            validateInput(this);
        });
    });

    form.addEventListener('submit', function(e) {
        e.preventDefault();
        let isValid = true;

        inputs.forEach(input => {
            if (!validateInput(input)) {
                isValid = false;
                input.classList.add('shake');
                setTimeout(() => {
                    input.classList.remove('shake');
                }, 500);
            }
        });

        if (isValid) {
            alert('Form submitted successfully!');
            form.reset();
        }
    });

    function validateInput(input) {
        const validation = validations[input.name];
        const errorElement = document.getElementById(`${input.name}Error`);

        if (!validation.regex.test(input.value)) {
            errorElement.textContent = validation.error;
            errorElement.style.opacity = '1';
            return false;
        } else {
            errorElement.textContent = '';
            errorElement.style.opacity = '0';
            return true;
        }
    }
});
