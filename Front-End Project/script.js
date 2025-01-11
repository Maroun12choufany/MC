document.addEventListener('DOMContentLoaded', () => {
    const form = document.getElementById('reservationForm');
    const inputs = form.querySelectorAll('input');

    const validateInput = (input) => {
        const value = input.value.trim();
        let isValid = true;

        switch (input.id) {
            case 'name':
                isValid = /^[a-zA-Z\s]{2,30}$/.test(value);
                break;
            case 'phone':
                isValid = /^\d{8}$/.test(value);
                break;
            case 'email':
                isValid = /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(value);
                break;
            case 'people':
                isValid = value >= 1 && value <= 10;
                break;
            case 'date':
                const selectedDate = new Date(value);
                const today = new Date();
                isValid = selectedDate >= today;
                break;
            case 'time':
                // Add any specific time validation if needed
                break;
        }

        if (!isValid) {
            input.classList.add('error');
        } else {
            input.classList.remove('error');
        }

        return isValid;
    };

    inputs.forEach(input => {
        input.addEventListener('blur', () => validateInput(input));
        input.addEventListener('input', () => {
            if (input.classList.contains('error')) {
                validateInput(input);
            }
        });
    });

    form.addEventListener('submit', (e) => {
        e.preventDefault();
        let isFormValid = true;

        inputs.forEach(input => {
            if (!validateInput(input)) {
                isFormValid = false;
            }
        });

        if (isFormValid) {
            // Here you would typically send the form data to a server
            alert('Reservation submitted successfully!');
            form.reset();
        } else {
            alert('Please correct the errors in the form.');
        }
    });
});
document.addEventListener('DOMContentLoaded', () => {
    const tables = document.querySelectorAll('.menu-table');
    
    tables.forEach(table => {
        const rows = table.querySelectorAll('tbody tr');
        rows.forEach((row, index) => {
            row.style.animationDelay = `${index * 0.1}s`;
        });
    });
});

// Add hover effect for table rows
const tableRows = document.querySelectorAll('.menu-table tbody tr');
tableRows.forEach(row => {
    row.addEventListener('mouseover', () => {
        row.style.transform = 'scale(1.05)';
        row.style.transition = 'transform 0.3s ease';
    });
    row.addEventListener('mouseout', () => {
        row.style.transform = 'scale(1)';
    });
});

// Add a simple parallax effect to the headings
window.addEventListener('scroll', () => {
    const headings = document.querySelectorAll('h1, h2');
    headings.forEach(heading => {
        const speed = 0.5;
        const yPos = -(window.pageYOffset * speed);
        heading.style.transform = `translateY(${yPos}px)`;
    });
});
document.addEventListener('DOMContentLoaded', () => {
    const form = document.getElementById('contactForm');
    const inputs = form.querySelectorAll('input, textarea');

    // Add floating label effect
    inputs.forEach(input => {
        input.addEventListener('focus', () => {
            input.parentNode.classList.add('focus');
        });

        input.addEventListener('blur', () => {
            if (input.value === '') {
                input.parentNode.classList.remove('focus');
            }
        });
    });

    // Form submission with animation
    form.addEventListener('submit', (e) => {
        e.preventDefault();
        
        // Add your form submission logic here
        
        // Animation for successful submission
        form.style.transition = 'transform 0.5s, opacity 0.5s';
        form.style.transform = 'translateY(-20px)';
        form.style.opacity = '0';
        
        setTimeout(() => {
            form.innerHTML = '<h2>Thank You!</h2><p>We\'ll get back to you soon.</p>';
            form.style.transform = 'translateY(0)';
            form.style.opacity = '1';
        }, 500);
    });

    // Add parallax effect to background
    document.addEventListener('mousemove', (e) => {
        const moveX = (e.clientX - window.innerWidth / 2) * 0.01;
        const moveY = (e.clientY - window.innerHeight / 2) * 0.01;
        
        document.querySelector('.stars').style.transform = `translate(${moveX}px, ${moveY}px)`;
        document.querySelector('.twinkling').style.transform = `translate(${moveX * 2}px, ${moveY * 2}px)`;
        document.querySelector('.clouds').style.transform = `translate(${moveX * 3}px, ${moveY * 3}px)`;
    });
});

// Add 3D tilt effect to form and info sections
const sections = document.querySelectorAll('.contact-form, .contact-info');

sections.forEach(section => {
    section.addEventListener('mousemove', (e) => {
        const rect = section.getBoundingClientRect();
        const x = e.clientX - rect.left;
        const y = e.clientY - rect.top;
        
        const centerX = rect.width / 2;
        const centerY = rect.height / 2;
        
        const moveX = (x - centerX) / 20;
        const moveY = (y - centerY) / 20;
        
        section.style.transform = `perspective(1000px) rotateY(${moveX}deg) rotateX(${-moveY}deg)`;
    });
    
    section.addEventListener('mouseleave', () => {
        section.style.transform = 'perspective(1000px) rotateY(0) rotateX(0)';
    });
});