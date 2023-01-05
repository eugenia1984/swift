import Cocoa
// sets
// to initialized empty
// var actors = Set<String>()
var actors = Set([
    "Denzel Washington",
    "Tom Cruise",
    "Nicolas Cage",
    "Samuel L Jackson"
])
print(actors)
// adding items with .insert()
actors.insert("Julia Roberts")
print(actors)
// not storing duplicates
// to know the total of items: .count
print(actors.count)
// sorted() return a sorted array containing the set's items
print(actors.sorted())
