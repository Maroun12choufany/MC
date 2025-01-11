document.addEventListener('DOMContentLoaded', function() {
    const form = document.getElementById('signupForm');
    const usernameInput = document.getElementById('username');
    const emailInput = document.getElementById('email');
    const passwordInput = document.getElementById('password');

    const usernameError = document.getElementById('username-error');
    const emailError = document.getElementById('email-error');
    const passwordError = document.getElementById('password-error');

    form.addEventListener('submit', function(e) {
        let isValid = true;

        // Username validation
        if (usernameInput.value.length < 3) {
            usernameError.textContent = 'Username must be at least 3 characters long';
            usernameError.style.display = 'block';
            isValid = false;
        } else {
            usernameError.style.display = 'none';
        }

        // Email validation
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(emailInput.value)) {
            emailError.textContent = 'Please enter a valid email address';
            emailError.style.display = 'block';
            isValid = false;
        } else {
            emailError.style.display = 'none';
        }

        // Password validation
        if (passwordInput.value.length < 8) {
            passwordError.textContent = 'Password must be at least 8 characters long';
            passwordError.style.display = 'block';
            isValid = false;
        } else {
            passwordError.style.display = 'none';
        }

        if (!isValid) {
            e.preventDefault();
        }
    });

    // Real-time validation
    usernameInput.addEventListener('input', function() {
        if (this.value.length >= 3) {
            usernameError.style.display = 'none';
        }
    });

    emailInput.addEventListener('input', function() {
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (emailRegex.test(this.value)) {
            emailError.style.display = 'none';
        }
    });

    passwordInput.addEventListener('input', function() {
        if (this.value.length >= 8) {
            passwordError.style.display = 'none';
        }
    });
});