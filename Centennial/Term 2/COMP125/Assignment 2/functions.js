function showPreviousCourses() {
    
        // Select the unordered list in the courses section
        const coursesSection = document.querySelector('#courses > ul');
        // Initialize and Assign the courses to an array
        let courseStrings = ["MATH175 - Functions & Number Systems", "GNED137 - A Wellness Approach", "COMP213 - Web Interface Design", "COMP120 - Software Engineering Fundamentals", "COMP100 - Programming 1", "COMM170 - College Communications 2"];

        // Add each course to the list
        courseStrings.forEach((course) => {
            let li = document.createElement('li');
            li.textContent = course;
            coursesSection.appendChild(li);
        });

    // disable the button
    const button = document.getElementById('previousCourseBtn');
    button.disabled = true;

}

function changeTextColor() {
    const missionText = document.getElementById('missionText');
    missionText.style.color = 'red';

    // disable the button
    const button = document.getElementById('changeTextColorBtn');
    button.disabled = true;
}

function addReactSkill() {
    const skillsList = document.getElementById('skillsList');
    const reactSkill = document.createElement('li');
    reactSkill.textContent = 'React';
    skillsList.insertBefore(reactSkill, skillsList.firstChild);

    // disable the button
    const button = document.getElementById('addReactBtn');
    button.disabled = true;
}

window.onload = function () {
    let userName = prompt("Please enter your name:");
    if (userName) {
        alert("Welcome, " + userName + "!");
    } else {
        alert("You did not enter a name!");
    }
};