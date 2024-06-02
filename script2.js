document.getElementById('submitBtn').addEventListener('click', function() {
    const form = document.getElementById('form');

    // Check if all required fields are filled
    let isValid = true;
    form.querySelectorAll('[required]').forEach(function(input) {
        if (!input.value.trim()) {
            isValid = false;
            input.classList.add('error');
        } else {
            input.classList.remove('error');
        }
    });

    if (isValid) {
        // Submit the form data via AJAX
        const formData = new FormData(form);
        const xhr = new XMLHttpRequest();
        xhr.open('POST', form.getAttribute('action'), true);
        xhr.onload = function() {
            if (xhr.status >= 200 && xhr.status < 300) {
                // Handle success
                console.log(xhr.responseText);
                alert('Form submitted successfully!');
                // You can redirect or perform any other action upon successful submission
            } else {
                // Handle error
                alert('Error: ' + xhr.statusText);
            }
        };
        xhr.onerror = function() {
            // Handle connection error
            alert('Connection error!');
        };
        xhr.send(formData);
    }
});