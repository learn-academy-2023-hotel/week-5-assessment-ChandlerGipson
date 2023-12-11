// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

// const { describe } = require("yargs")

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.

const secretCodeWord1 = "Lackadaisical"
// Expected output: "L4ck4d41s1c4l"
const secretCodeWord2 = "Gobbledygook"
// Expected output: "G0bbl3dyg00k"
const secretCodeWord3 = "Eccentric"
// Expected output: "3cc3ntr1c"

describe("strings", () =>{
    it("takes in a string and returns a string with a coded message The coded message converts a to 4, e to 3, i to 1, and o to 0", => {
    expect((secretCodeWord1)).toEqual("L4ck4d41s1c4l")
    expect((secretCodeWord2)).toEqual("G0bbl3dyg00k")
    expect((secretCodeWord3)).toEqual("3cc3ntr1c")
})
})
// b) Create the function that makes the test pass.
const secretCode = (inputString) => {
    const letterMap = {
        'a': '4',
        'e': '3',
        'i': '1',
        'o': '0',
    }
    const codedMessageArray = inputString.split('').map(letter => {
        return wordMap[letter] || letter
    })
    return codedMessageArray.join('')
}
console.log(secretCode(secretCodeWord1))
console.log(secretCode(secretCodeWord2))
console.log(secretCode(secretCodeWord3))
// // Pseudo code:
// 1. created a function that takes on an string as a arguemnt 
// 2. split input string into array and use .map for each letter or number
// 3. wordMap is used to to find if the letter is not in the map it will return the letter back
// 4. using the join method we join the array back into a string 
// 5. (i UNderstand how this code works bu this is a nother one i got a lot of help on and im not sure if i could explain it myself)

// --------------------2) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.

const hand1 = [5, 5, 5, 3, 3]
// Expected output: true
const hand2 = [5, 5, 3, 3, 4]
// Expected output: false
const hand3 = [5, 5, 5, 5, 4]
// Expected output: false
const hand4 = [7, 2, 7, 2, 7]
// Expected output: true

describe("fullHouse", () =>{
    it("takes in an array of 5 numbers and determines whether or not the array is a full house", () => {
    expect(fullHouse(hand1)).toEqual(true)
    expect(fullHouse(hand2)).toEqual(false)
    expect(fullHouse(hand3)).toEqual(false)
    expect(fullHouse(hand4)).toEqual(true)
    })
})
// b) Create the function that makes the test pass.
const fullHouse = (array) => {
    const counts = {} 
    for (const num of array) {
        counts[num] = (counts[num] || 0) + 1
    }
    const values = Object.values(counts)
    return values.includes(2) && values.includes(3)
}

// // Pseudo code:
// 1.convert into an array fullhouse created a const counts that = empty array as an argument
// 2. counts which will store the count of each number in the input array
// 3. using a for loop that will iterate each element in the array
// 4. counts[num] = (counts[num] || 0) + 1 which intializes it with 0  before counting
// 5. return values.includes(2) && values.includes(3) which check for pairs and a group of 3. if both are true the function will return true if not it will return false.
// 6. Jean and i worked on this one together