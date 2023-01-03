# <img src="https://img.icons8.com/color/48/null/swift.png"/> 100 Days of SwiftUI!

---

## <img src="https://img.icons8.com/color/38/null/swift.png"/> Day 02

---


### Lynch’s Law says “when the going gets tough, everyone leaves.” Anyone can complete the first day of a course, but it takes diligence to come back for day 2 – well done for sticking with it!

Yesterday we began looking at simple data types – things that hold one value, like a single number or a single string of letters. Today we’re continuing that as we explore storing truth with Booleans, and building up strings with interpolation. At various points you might think “do I really need to know this?” And the answer is yes – if it’s here in this course, you absolutely need to know it!

But today something important happens, because you’re also going to have your first checkpoint. This is where we’re going to pause so you can write some code of your own, to make sure you’ve fully understood what was presented. Starting with a blank canvas is going to be hard at first, but you should have lots of time and I’ll be providing hints too.

**Today you have two new tutorials to follow, plus a summary and a checkpoint to complete**. As before, if you want to dive deeper into each topic there is some optional further reading, but you don’t need to read that unless you want to.

1. [**How to store truth with Booleans**](https://www.hackingwithswift.com/quick-start/beginners/how-to-store-truth-with-booleans)

-Test: [**Doubles and Booleans**]((https://www.hackingwithswift.com/review/sixty/doubles-and-booleans))

2. [**How to join strings together**](https://www.hackingwithswift.com/quick-start/beginners/how-to-join-strings-together)

-Optional: [**Why does Swift have string interpolation?**](https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-string-interpolation)

-Test: [**String interpolation**](https://www.hackingwithswift.com/review/sixty/string-interpolation)

3. [**Summary: Simple data**](https://www.hackingwithswift.com/quick-start/beginners/summary-simple-data)

When you’re ready, please proceed onto the checkpoint:

- [**Checkpoint 1**](https://www.hackingwithswift.com/quick-start/beginners/checkpoint-1)

---

## :star: 1 - How to store truth with Booleans


So far we’ve looked at strings, integers, and decimals, but there’s a fourth type of data that snuck in at the same time: a very simple type called a Boolean, which stores either true or false. If you were curious, Booleans were named after George Boole, an English mathematician who spent a great deal of time researching and writing about logic.

I say that Booleans snuck in because you’ve seen them a couple of times already:

```Swift
let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))
```

```Swift
let number = 120
print(number.isMultiple(of: 3))
```

Both hasSuffix() and isMultiple(of:) return a new value based on their check: either the string has the suffix or it doesn’t, and either 120 is a multiple of 3 or it isn’t. In both places there’s always a simple true or false answer, which is where Booleans come in – they store just that, and nothing else.

Making a Boolean is just like making the other data types, except you should assign an initial value of either true or false, like this:

let goodDogs = true
let gameOver = false
You can also assign a Boolean’s initial value from some other code, as long as ultimately it’s either true or false:

```Swift
let isMultiple = 120.isMultiple(of: 3)
```

Unlike the other types of data, Booleans don’t have arithmetic operators such as + and - – after all, what would true + true equal? However, Booleans do have one special operator, !, which means “not”. This flips a Boolean’s value from true to false, or false to true.

For example, we could flip a Boolean’s value like this:

```Swift
var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)
```

That will print “true” then “false” when it runs, because isAuthenticated started as false, and we set it to not false, which is true, then flip it again so it’s back to false.

Booleans do have a little extra functionality that can be useful. In particular, if you call toggle() on a Boolean it will flip a true value to false, and a false value to true. To try this out, try making gameOver a variable and modifying it like this:

```Swift
var gameOver = false
print(gameOver)
```

```Swift
gameOver.toggle()
print(gameOver)
```

That will print false first, then after calling toggle() will print true. Yes, that’s the same as using ! just in slightly less code, but it’s surprisingly useful when you’re dealing with complex code!

## Test: Doubles and Booleans

---

## :star: 2 - How to join strings together


## Optional: Why does Swift have string interpolation?


## Test: String interpolation

---

## :star: 3 - Summary: Simple data

---

## :star: Checkpoint

---

---
