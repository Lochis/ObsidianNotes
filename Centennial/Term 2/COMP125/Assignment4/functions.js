
let boxes = document.getElementsByClassName("box");
for (var i = 0; i < boxes.length; i++) {
    boxes[i].addEventListener("dragover", dragoverHandler, false);
    boxes[i].addEventListener("drop", dropHandler, false);
}

let draggableItems = document.querySelectorAll(".box img"); // Assuming the image is inside a box
for (let i = 0; i < draggableItems.length; i++) {
    draggableItems[i].setAttribute("draggable", "true");
    draggableItems[i].addEventListener("dragstart", dragstartHandler, false);
}

function dragstartHandler(ev) {
    console.log("Drag started:", ev.target.id);
    ev.dataTransfer.setData("text/plain", ev.target.id); // Set the id of the dragged element
    
}

function dragoverHandler(ev) {
    ev.preventDefault();
    ev.dataTransfer.dropEffect = "move";
}

function dropHandler(ev) {
    ev.preventDefault();
    const data = ev.dataTransfer.getData("text/plain");
    console.log("Dropped data:", data);
    const draggedElement = document.getElementById(data);
    console.log(draggedElement);

    // Ensure the drop target is a box
    let targetBox = ev.target;
    if (!targetBox.classList.contains("box")) {
        targetBox = targetBox.closest(".box"); // Find the closest parent with the class "box"
    }

    if (draggedElement && targetBox) {
        targetBox.appendChild(draggedElement);
    }
}