function showPreviousCourses() {
    
        // Select the unordered list in the courses section
        const coursesSection = document.querySelector('#courses > ul');
        // Initialize and Assign the courses to an array
        let courseStrings = [
            "MATH175 - Functions & Number Systems", 
            "GNED137 - A Wellness Approach", 
            "COMP213 - Web Interface Design", 
            "COMP120 - Software Engineering Fundamentals", 
            "COMP100 - Programming 1", 
            "COMM170 - College Communications 2"
        ];

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
        const welcomeSection = document.getElementById('welcome');
        let welcomeH1 = document.createElement('h1');
        welcomeH1.style.textAlign = 'center';
        welcomeH1.style.margin = 'auto';
        welcomeH1.style.border = '2px solid #74a0d3';
        welcomeH1.style.borderRadius = '10px';
        welcomeH1.style.width = '500px';
        welcomeH1.style.padding = '5px';

        let welcomeName = document.createElement('span');
        welcomeName.style.color = 'green';
        welcomeName.innerHTML = userName + "!";

        welcomeH1.innerHTML = `Welcome, `;
        welcomeH1.appendChild(welcomeName);
        welcomeSection.appendChild(welcomeH1);
    } else {
        alert("You did not enter a name!");
    }
};