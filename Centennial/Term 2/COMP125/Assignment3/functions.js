window.onload = function () {
    const form = document.getElementById('jobApplicationForm');


    // enforce the +1 in the phone number input
    const phoneInput = form.phone;
    phoneInput.addEventListener('input', function () {
        if (!phoneInput.value.startsWith('+1 ')) {
            phoneInput.value = '+1 ' + phoneInput.value.replace(/^\+1/, '');
        }
    });


    form.addEventListener('change', function (event) {

        // to change the required status of citizenship inputs and to add or remove red * from the label
        if (event.target.name === 'citizen') {
            const citizenValue = event.target.value;
            if (citizenValue === 'yes') {
                const allowedToWorkRow = document.getElementById('allowedToWorkRow');
                allowedToWorkRow.querySelector('label').classList.remove('required');
                allowedToWorkRow.querySelectorAll('input').forEach(child => {
                    child.required = false;
                });
            } else {
                const allowedToWorkRow = document.getElementById('allowedToWorkRow');
                allowedToWorkRow.querySelector('label').classList.add('required');

                allowedToWorkRow.querySelectorAll('input').forEach(child => {
                    child.required = true;
                });
            }
        }

        // to change the required status of felony explain text area and to add or remove red * from the label
        if (event.target.name == 'felony') {
            const felonyValue = event.target.value;
            if (felonyValue === 'yes') {
                const felonyExplanationRow = document.getElementById('felonyExplanationRow');
                felonyExplanationRow.querySelector('label').classList.add('required');
                felonyExplanationRow.querySelector('textarea').required = true;
            } else {
                const felonyExplanationRow = document.getElementById('felonyExplanationRow');
                felonyExplanationRow.querySelector('label').classList.remove('required');
                felonyExplanationRow.querySelector('textarea').required = false;
            }
        }
    });
};

function validateForm() {
    const form = document.getElementById('jobApplicationForm');
    const emailInput = form.email;
    const phoneInput = form.phone;

    let isValid = true;

    if (emailInput.validity.patternMismatch) {
        alert('That is not a valid email address! Pattern mismatch.');
        isValid = false;
    }

    if (phoneInput.validity.patternMismatch) {
        alert('Phone number must be in Canadian format: +1 123-456-7890');
        phoneInput.focus();
        isValid = false;
    }

    if (isValid){
        alert('Form submitted successfully!');
    }
}