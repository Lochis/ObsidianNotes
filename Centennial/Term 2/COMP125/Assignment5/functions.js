let form = document.forms[0];

form.addEventListener("submit", function (e) {
    e.preventDefault();

    let errors = document.querySelectorAll(".error");

    // Clear all previous errors messages
    errors.forEach((error) => {
        error.textContent = "";
    });

    // Get form values
    let fullName = form["fullName"];
    let email = form["email"];
    let phone = form["phone"];
    let postalCode = form["postalCode"];
    let workshop = form["workshop"];
    let comments = form["comments"];

    let isValid = true;

    const phoneRegex = /^(\(\d{3}\) \d{3}-\d{4}|\d{3}-\d{3}-\d{4}|\d{10})$/;
    if (!phoneRegex.test(phone.value)) {
        document.getElementById("phoneError").textContent = "Invalid phone number format.";
        isValid = false;
    }

    const postalCodeRegex = /^[A-Za-z]\d[A-Za-z] \d[A-Za-z]\d$/;
    if (!postalCodeRegex.test(postalCode.value)) {
        document.getElementById("postalCodeError").textContent = "Invalid postal code format.";
        isValid = false;
    }


    if (!isValid) {
        return; // don't submit
    }

    fetch("https://jsonplaceholder.typicode.com/gdssdfs", {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify({
            fullName: fullName.value,
            email: email.value,
            phone: phone.value,
            postalCode: postalCode.value,
            workshop: workshop.value,
            experience: document.querySelector('input[name="experience"]:checked').value,
            comments: comments.value,
        }),
    })
        .then((response) => response.json())
        .then((data) => {
            console.log("Response from API:", data);
            alert("Registration successful!");
        })
        .catch((error) => {
            console.error("Error:", error);
            alert("An error occurred. Please try again.");
        });

});
