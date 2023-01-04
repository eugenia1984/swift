// Boolean
let fileName = "paris.jpg"
print(fileName.hasSuffix(".jpg")) // true
let goodDogs = true

var gameOver = false
print("gameover: ", gameOver)
gameOver.toggle()
print("gameover with toggle(): ", gameOver)

let isMultiple = 120.isMultiple(of:3)
// ! not
var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)

// Joining Strings together
let firstPart = "Hello, "
let lastPart = "world!"
// with +
let greetingJoin = firstPart + lastPart
print(greetingJoin)
let apolloNumber = 11
let message = "Apolo \(apolloNumber) landed on the Moon"
print(message)
// I can also cast Integet to String with
// let message = "Apolo" + String(apolloNumber) + "landed on the Moon"
