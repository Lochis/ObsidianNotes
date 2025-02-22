
window.addEventListener('resize', adjustTextareaCols);
window.addEventListener('load', adjustTextareaCols);

function validateForm() {
   let email = document.getElementById("email");
   if (email.validity.patternMismatch){
         console.log("Please enter a valid email address");
   }
}

function adjustTextareaCols() {
    const textarea = document.getElementById("message");
    const windowWidth = window.innerWidth;
    if (windowWidth < 600) {
        textarea.cols = 30;
        textarea.rows = 10;
    } else if (windowWidth < 900) {
        textarea.cols = 50;
        textarea.rows = 5;
    } else {
        textarea.cols = 70;
        textarea.rows = 5;
    }
}