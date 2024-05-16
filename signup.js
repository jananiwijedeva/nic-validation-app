

function validateForm() {
    var email = document.getElementById('email').value;
    var password = document.getElementById('password').value;
    var emailMessage = document.getElementById('emailMessage');
    var passwordMessage = document.getElementById('passwordMessage');

    // Check email
    if (email.includes('@') && email.endsWith('gmail.com')) {
        emailMessage.innerHTML = 'Email is valid.';
        emailMessage.style.color = 'green';
    } else {
        emailMessage.innerHTML = 'Email is not valid. Please include "@" symbol or check if the email ends with "gmail.com".';
        emailMessage.style.color = 'red';
        return false; // Stop form submission  email is not valid
    }

    // Check password
    if (password.length < 6) {
        passwordMessage.innerHTML = 'Password should be at least 6 characters.';
        passwordMessage.style.color = 'red';
        return false; // Stop form submission  password is not valid
    } else {
        var hasLetter = /[a-zA-Z]/.test(password);
        var hasNumber = /\d/.test(password);
        var hasSpecialChar = /[!@#$%^&*(),.?":{}|<>]/.test(password);

        if (hasLetter && hasNumber && hasSpecialChar) {
            passwordMessage.innerHTML = 'Password is valid.';
            passwordMessage.style.color = 'green';
            return true; // Proceed with form submission
        } else {
            passwordMessage.innerHTML = 'Password should contain at least one letter, one number, and one special character.';
            passwordMessage.style.color = 'red';
            return false; // Stop form submission  password is not valid
        }
    }
}
