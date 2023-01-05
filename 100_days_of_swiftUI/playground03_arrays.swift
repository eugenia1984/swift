import Cocoa
// array of Strings
var beatles = ["John", "Paul", "George", "Ringo"]
// array of numbers - integer
var numbers = [4, 8, 15, 16, 23, 42]
// array of numbers - decimal
var temperatures = [25.3, 28.2, 26.4]
// To see the first item
print("First item of the beatles array: \(beatles[0])") // John
// to add a new item, at the end
numbers.append(1)
print(numbers) // [4, 8, 15, 16, 23, 42, 1]
// Initializing an empty array indicating the type of data will be storing
var albums = Array<String>()
// Oher way: var albums = [String]()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")
print("albums: \(albums)") // albums: ["Folklore", "Fearless", "Red"]
// initializing an array of INTEGERS
var scores = Array<Int>()
scores.append(100)
var characters = ["Lana", "Pam", "Ray", "Sterling"]

// .count to read how many items are in an array
print(characters.count) // 4

// .contains() to check whether an array contains a particular item
print(characters.contains("Lana")) // true

// .remove(at: ) to remove one item at a specific index
characters.remove(at:2) // ["Lana", "Pam", "Sterling"]
print(characters)

// .removeAll() to remove all the items
characters.removeAll()
print(characters) // []
let cities = ["London", "Tokyo", "Rome", "Budapest"]

// .sorted() to sorted and array, returns a new array, no changing in the original array
print(cities.sorted()) // ["Budapest", "London", "Rome", "Tokyo"]

// .reverser() to reverse an array
let citiesReversed = cities.reversed()
print(citiesReversed)
