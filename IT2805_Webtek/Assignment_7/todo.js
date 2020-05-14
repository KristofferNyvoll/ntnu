var task = [];
var tasksAdded = 0;
var completed = 0;

function addDate(){
    // Records the date and time for the change
    var date = new Date;
    let hours = date.getHours();
    let minutes = date.getMinutes();
    let seconds = date.getSeconds();
    document.getElementById("date").innerHTML = "Last task was added: " + hours + ":" + minutes + ":" + seconds;
}

function progress(){
    let total = task.length;
    completed = document.querySelectorAll("input:checked").length;
    document.getElementById("outputBox").value = completed + " of " + total + " completed.";
}

function addTask() {
    tasksAdded ++; 
    event.preventDefault();
    // I want to add every new item to the start of my list
    var item = document.getElementById("inputItem").value;
    task.unshift(item);

    /* Declaring the li, label and input elements that we use in HTML lists. */
    var listElement = document.createElement("LI");
    var labelElement = document.createElement("LABEL");
    var inputElement = document.createElement("INPUT");

    // Assign checkbox attribute
    inputElement.setAttribute("type", "checkbox");
    inputElement.className = "checkBoxes";
    inputElement.onclick = function() {progress()};
    
    /* Declaring a variable containing the string from the [0] index of the array */
    var thisTask = document.createTextNode(task[0]);
    /* adds a new child node to an element */
    listElement.appendChild(inputElement);
    listElement.appendChild(labelElement);
    labelElement.appendChild(thisTask);
    /* adds that child to the list in the HTML doument */
    //document.getElementById("todolist").appendChild(listElement);
    document.getElementById("todolist").prepend(listElement);
    //Resets the input field
    document.getElementById("inputItem").value = "";

    addDate();
    progress();
}