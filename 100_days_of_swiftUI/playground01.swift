import Cocoa

// Variable
var greeting = "Hello, playground"
// Reasigning value to a variable
var firstName = "Ted"
firstName = "Rebecca"
firstName = "Keely"
// constant
let character = "Daphne"

// Strings
let actor = "Denzel Washington"
// Add "" inside a string with backslash
let quote = "Then he trapped a sign saying \"Believe\" and walked away."
print(quote)
// Multi line string
let movie = """
A day in
the life of an
Apple engineer
"""
print(movie)
let actorLenght = actor.count // to know the length of a string
print(actorLenght)
print(actor.uppercased())
print(actor.lowercased())
print(movie.hasPrefix("A day"))

// Numbers: Integer
let score = 10
print("score: ", score)
let bignumber = 100_000_000 // underscore to break long numbers and make easier to read
print("bignumber: ", bignumber)
let lowerScore = score - 2
print("lowerScore: ", lowerScore)
let higherScore = score + 6
print("higherScore: ", higherScore )
let doubleScore = score * 2
print("doubleScore: ", doubleScore)
let helvedScore = score / 2
// compound assignment operators
var counter = 5
print(counter)
counter += 5
print(counter)
let number = 120
print(number.isMultiple(of:3))  // true

// Decimals - floating point numbers
let numberDecimal = 0.1 + 0.2
print(numberDecimal) // 0.30000000000000004
let a = 1
let b = 0.2
let c = a + Int(b)
print(c)
let d = Double(a) + b
print(d)
var rating = 5.0
rating += 2
print(rating)
