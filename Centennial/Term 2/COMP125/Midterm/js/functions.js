function changeMissionTextColor() {
    let missionText = document.getElementById("missionText");
    missionText.style.color ="#d34444";
}

let watchCards =[{
    name: "Rolex",
    price: 10000,
    condition: "Heavily Used",
    discontinued: false,
    src: "./img/rolex.webp"
},
{
    name: "Omega",
    price: 8000,
    condition: "New",
    discontinued: false,
    src: "./img/omega.jpg"
},
{
    name: "Tag Heuer",
    price: 6000,
    condition: "Used",
    discontinued: false,
    src: "./img/tagheuer.jpg"
},
{
    name: "Breitling",
    price: 7000,
    condition: "New",
    discontinued: false,
    src: "./img/breitling.webp"
}
];

window.onload = function () {
  loadWatchCards();

        let inputName = prompt("Please enter your name");

        if (!inputName) {
            window.alert("You didn't enter a name. Please refresh the page and try again.");
        } else {
            let welcomeText = document.getElementById("welcomeMessage");
            welcomeText.style.color = "#b3356a";
            welcomeText.style.border = "1px solid #b3356a";
            welcomeText.style.padding = "10px";
            welcomeText.style.backgroundColor = "#1b1c1d";
            welcomeText.style.borderRadius = "25px";
            welcomeText.style.textAlign = "center";
            welcomeText.style.display = "block";
            welcomeText.innerHTML = `Welcome ${inputName}`;
        }
}


function showDiscontinuedWatches() {
    watchCards = [...watchCards, 
        {
            name: "Seiko",
            price: 500,
            condition: "New",
            discontinued: true,
            src: "./img/seiko.jpg"
        },
        {
            name: "Fossil",
            price: 129.50,
            condition: "New",
            discontinued: true,
            src: "./img/fossil.webp"
        },
        {
            name: "Citizen",
            price: 300,
            condition: "Used",
            discontinued: true,
            src: "./img/citizen.jpg"
}];
    document.getElementById("productsGrid").innerHTML = "";
    loadWatchCards();
    document.getElementById("discontinuedWatchesBtn").style.display = "none";
}

function loadWatchCards() {
    watchCards.forEach(watch => {
        let card = document.createElement("div");
        card.classList.add("productCard");
        card.innerHTML = `
        <img src="${watch.src}" alt="${watch.name}" width="200">
        <h3>${watch.name}${watch.discontinued ? " (Discontinued)": ""}</h3>
        <p>Price: <span style="color: ${watch.discontinued ? "red; text-decoration: line-through;": "#1dc973"}">${watch.price.toLocaleString("en-US", { style: "currency", currency: "USD" })}</span></p>
        <p>Condition: ${watch.condition}</p>
        `;
        document.getElementById("productsGrid").appendChild(card);
    });
}