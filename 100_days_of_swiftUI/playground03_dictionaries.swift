import Cocoa
// distionaries
let employe = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]
print(employe["name"]) // Optional("Taylor Swift")
print(employe["job", default: "Unknowun"]) // Singer
print(employe["location"]) // Optional("Nashville")

// dictionary with BOOLEANS values
let hasGraduated = [
    "Eric": true,
    "John": false,
    "Ann": true
]
// dictionary with key of Integers
let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2020: "Tokyo"
]
print(olympics[2012, default: "Unknown"])

// create an empty dctionary
// STRING key , INTEGER value
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neil"] = 216
heights["LeBron James"] = 206

// create an empty dctionary
// STRING value and STRING key
var archEnemies = [String:String]()
archEnemies["Batman"] = "The Joker"
print(archEnemies["Batman", default: "Unknown"])
archEnemies["Batman"] = "Penguin" // I'm overriding the value
print(archEnemies["Batman", default: "Unknown"])
