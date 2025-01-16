


const createTable = (rows, cols) => {
    let table = document.getElementById("dynamic-table");
    // reset table
    table.innerHTML = "";

    for (let i = 0; i < rows; i++) {
        let row = table.insertRow(i);
        for (let j = 0; j < cols; j++) {
            let cell = row.insertCell(j);
            cell.innerHTML = `${i + 1}, ${j + 1}`;
        }
    }
}

function init() {
    // initial table with 4 rows and 5 columns
    createTable(4,5);
}

document.querySelector('button').onclick = () => {
    let rows = document.getElementById('rows').value;
    let cols = document.getElementById('cols').value;
    createTable(rows, cols)};
window.addEventListener("load", init);

