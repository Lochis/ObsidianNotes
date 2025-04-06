// Define the correct order of pieces
const correctOrder = ["piece1", "piece2", "piece3", "piece4", "piece5", "piece6", "piece7"];

const puzzlesCompleted = document.getElementById("puzzlesCompleted");
let numPuzzlesCompleted = 0;

const currentImage = new Image();
// Set the initial image source
currentImage.src = './img/cuteOtter.webp';

// To hold all the images
const images = [];

// The set of images
const imageFiles = [
    './img/cuteOtter.webp',
    './img/kingBugs.jpg',
    './img/sandDog.jpg',
    './img/cuteFox.jpg'
];

// for each image, make an image object and push it to the images array
imageFiles.forEach((imgSrc) => {
    const img = new Image();
    img.src = imgSrc;
    images.push(img);
});

// append complete text
const completeText = document.createElement("div");
const wrapContainer = document.getElementById("wrapContainer");
completeText.className = "completeText";
completeText.innerHTML = "";
wrapContainer.appendChild(completeText);

let draggedPiece = null;

// Get all boxes
const boxes = document.querySelectorAll(".box");
const boxContainer = document.getElementById("boxContainer");

//set first image which will set boxes
newImage(currentImage.src);

// Randomize the order of pieces
let shuffledOrder = [...correctOrder].sort(() => Math.random() - 0.5);
while (shuffledOrder === correctOrder) {
    shuffledOrder = [...correctOrder].sort(() => Math.random() - 0.5);
}

function setBoxes() {

    // Get the container dimensions
    const containerWidth = boxContainer.offsetWidth;
    const containerHeight = boxContainer.offsetHeight;

    // Get the original image dimensions
    let imgWidth = currentImage.width;
    let imgHeight = currentImage.height;

    // Scale the image to fit within the container while maintaining aspect ratio
    const widthRatio = containerWidth / imgWidth;
    const heightRatio = containerHeight / imgHeight;
    const scaleRatio = Math.min(widthRatio, heightRatio);

    imgWidth = imgWidth * scaleRatio;
    imgHeight = imgHeight * scaleRatio;

    // Assign pieces to boxes
    for (let i = 0; i < boxes.length; i++) {
        boxes[i].style.backgroundImage = `url(${currentImage.src})`;
        boxes[i].style.backgroundSize = `${imgWidth}px ${imgHeight}px`;
        boxes[i].style.width = `${imgWidth}px`;
        // since there are only 7 pieces can hard code this and divide by 7
        boxes[i].style.height = `${imgHeight / 7}px`;

        // get the position of this piece and set it to the box
        boxes[i].style.backgroundPosition = getBackgroundPosition(shuffledOrder[i], imgWidth, imgHeight);

        // set the data-piece attribute to the piece name so that we can use it to check if the game is complete
        boxes[i].setAttribute("data-piece", shuffledOrder[i]);

        // add the event listener to drag and drop the pieces
        boxes[i].addEventListener("dragstart", (ev) => {
            draggedPiece = ev.target;
            ev.dataTransfer.setData("text/plain", ev.target.getAttribute("data-piece"));
        });
        boxes[i].addEventListener("dragover", dragoverHandler);
        boxes[i].addEventListener("drop", dropHandler);
    }
}

// Helper function to calculate background position
function getBackgroundPosition(piece, width, height) {
    let pieceHeight = height / 7.0; // again, this there are only 7 pieces, can hard code this
    let pieceWidth = width;

    // multiply each piece to decrement down the height of the image
    const positions = {
        piece1: `${pieceWidth}px 0px`,
        piece2: `${pieceWidth}px -${pieceHeight}px`,
        piece3: `${pieceWidth}px -${pieceHeight * 2.0}px`,
        piece4: `${pieceWidth}px -${pieceHeight * 3.0}px`,
        piece5: `${pieceWidth}px -${pieceHeight * 4.0}px`,
        piece6: `${pieceWidth}px -${pieceHeight * 5.0}px`,
        piece7: `${pieceWidth}px -${pieceHeight * 6.0}px`,
    };
    return positions[piece];
}


function dragoverHandler(ev) {
    ev.preventDefault();
}

function dropHandler(ev) {
    ev.preventDefault();
    const targetPiece = ev.target.getAttribute("data-piece");
    const draggedPieceData = draggedPiece.getAttribute("data-piece");

    // Swap pieces
    const draggedBackground = draggedPiece.style.backgroundPosition;
    draggedPiece.style.backgroundPosition = ev.target.style.backgroundPosition;
    ev.target.style.backgroundPosition = draggedBackground;

    // Swap data attributes
    draggedPiece.setAttribute("data-piece", targetPiece);
    ev.target.setAttribute("data-piece", draggedPieceData);

    // Check if the game is complete
    checkCompletion();
}

function checkCompletion() {
    // Check if the current order of pieces matches the correct order
    const currentOrder = Array.from(boxes).map(box => box.getAttribute("data-piece"));
    console.log("Current Order: ", currentOrder);
    console.log("Correct Order: ", correctOrder);

    if (JSON.stringify(currentOrder) === JSON.stringify(correctOrder)) {

        // remove gap
        boxContainer.style.gap = "0px";
        // remove border radius
        boxes.forEach(box => {
            box.style.borderRadius = "0px";
        });  

        completeText.innerHTML = "Congratulations! You completed the puzzle!";
        numPuzzlesCompleted++;
        puzzlesCompleted.innerHTML = `Puzzles Completed: ${numPuzzlesCompleted}`;
    }
}

function handleImageUpload(ev) {
    const file = ev.target.files[0];
    file.src = URL.createObjectURL(file);

    currentImage.src = file.src;
    completeText.innerHTML = "";
    boxContainer.style.gap = "10px";

    boxes.forEach(box => {
        box.style.borderRadius = "10px";
    });
}

function newImage(givenImage) {
    // Reset the game with a new image and revert styles
    boxContainer.style.gap = "10px";
    
    boxes.forEach(box => {
        box.style.borderRadius = "10px";
    });

    // remove complete text
    completeText.innerHTML = "";
    
   

    if (givenImage && currentImage.src !== givenImage) {
        currentImage.src = givenImage;
    } else {
        // set image to random index
        let filteredImages = images.filter((img) => img.src != currentImage.src);

        // make sure the next image is a random image that is not the last one
        let randomIndex = Math.floor(Math.random() * (filteredImages.length));
        
        currentImage.src = filteredImages[randomIndex].src;
    }

    currentImage.onload =() => {
        shuffledOrder = [...correctOrder].sort(() => Math.random() - 0.5);
        while (shuffledOrder === correctOrder) {
            shuffledOrder = [...correctOrder].sort(() => Math.random() - 0.5);
        }
        setBoxes();
    }
    
}