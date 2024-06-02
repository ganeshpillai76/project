let slideIndex = 0;
let slides = document.getElementsByClassName("banner");
let dots = document.getElementsByClassName("dot");
showSlides();

function showSlides() {
    for (let i = 0; i < slides.length; i++) {
        slides[i].style.opacity = "0";
    }
    slideIndex++;
    if (slideIndex > slides.length) { slideIndex = 1; }

    for (let i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }

    slides[slideIndex - 1].style.display = "block";
    setTimeout(() => {
        slides[slideIndex - 1].style.opacity = "1";
    }, 10); // Small delay to trigger transition
    dots[slideIndex - 1].className += " active";
    setTimeout(showSlides, 10000); // Change image every 5 seconds
}

function currentSlide(n) {
    slideIndex = n - 1;
    showSlides();
}
document.getElementById('form').addEventListener('submit', function(event) {
    const form = event.target;

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

    if (!isValid) {
        event.preventDefault(); // Prevent form submission if validation fails
    }
});
