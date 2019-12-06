/* Part 2 */
console.log('PART 2')

/* Starts counting at 1 and prints output for every iteration until i = 20 (and i < 21) */
for (i=1; i < 21; i++) {
    console.log(i)
}


/* Part 3 */
console.log('PART 3')

const numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

for (i = 0; i < numbers.length; i++){
    /* This statement needs to be the first in order to work as intended */
    /* Gets the value from the array and checks if it is divisible by 3 and 5 */
    if (numbers[i] % 3 === 0 && numbers[i] % 5 === 0){
        console.log('eplekake')
    }
    /* Checks if the vaule is disible by 3 */
    else if (numbers[i] % 3 === 0){
        console.log('eple')
    }
    else if (numbers[i] % 5 === 0){
        console.log('kake')
    }
    /* Prints the numbers that are not divisble by 3 or 5 in the console */
    else{
        console.log(numbers[i])
    }

}
/* Part 4 */
/* Gets the id "title" from the HTML file and adds a string to the empty h1 tag */
document.getElementById("title").innerText = "Hello, JavaScript!"

/* Part 5 */
/* Removes the #magic box, leaving no placeholder/block */
function changeDisplay () {
    document.getElementById("magic").style.display = "none"
}

/* Hides the #magic box, but white space still occupies the #magic spot  */
function changeVisibility () {
    document.getElementById("magic").style.visibility = "hidden"
    document.getElementById("magic").style.display = "block"
}

function reset () {
    document.getElementById("magic").style.visibility = "visible"
    document.getElementById("magic").style.display = "block"
}

/* Part 6 */
const technologies = [
    'HTML5',
    'CSS3',
    'JavaScript',
    'Python',
    'Java',
    'AJAX',
    'JSON',
    'React',
    'Angular',
    'Bootstrap',
    'Node.js'
];

for (i = 0; i < technologies.length; i++){
    /* Declaring the li element that we use in HTML lists. */
    var node = document.createElement("LI")
    /* Declaring a variable containing the n'th (or i'th, i guess) string from the array */
    var textnode = document.createTextNode(technologies[i])
    /* adds a new child node to an element */
    node.appendChild(textnode)
    /* adds that child to the list in the HTML doument */
    document.getElementById("tech").appendChild(node)
}