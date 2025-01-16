const createTable = (rows, cols) => {
    const table = document.getElementById("dynamic-table");

    // reset table
    table.innerHTML = "";

    const tableElement = document.createElement("table");

    for (let i = 0; i < rows; i++) {
        let row = document.createElement("tr");
        for (let j = 0; j < cols; j++) {
            let cell = document.createElement("td");
            cell.innerHTML = `Row No: ${i + 1} | Col No:${j + 1}`;
            row.append(cell);
        }
        tableElement.append(row);
    }
    table.append(tableElement);
}

function init() {
    // initial table with 4 rows and 5 columns
    createTable(4, 5);
}

document.getElementById('submitBtn').onclick = () => {
    let rows = document.getElementById('rows').value;
    let cols = document.getElementById('cols').value;
    createTable(rows, cols)
};
window.addEventListener("load", init);

