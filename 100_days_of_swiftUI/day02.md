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

Swift gives us two ways to combine strings together: joining them using +, and a special technique called string interpolation that can place variables of any type directly inside strings.

Let’s start with the easier option first, which is using + to join strings together: when you have two strings, you can join them together into a new string just by using +, like this:


```Swift
let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart
```


You can do this many times if you need to:

```Swift
let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)
```

When that runs it will print “Haters gonna hate” – yes, I’m a big fan of Taylor Swift, and I think her lyrics make a natural fit for a tutorial about Swift programming!

Notice how we’re using + to join two strings, but when we used Int and Double it added numbers together? This is called operator overloading – the ability for one operator such as + to mean different things depending on how it’s used. For strings, it also applies to +=, which adds one string directly to another.

This technique works great for small things, but you wouldn’t want to do it too much. You see, each time Swift sees two strings being joined together using + it has to make a new string out of them before continuing, and if you have lots of things being joined it’s quite wasteful.

Think about this for example:

```Swift
let luggageCode = "1" + "2" + "3" + "4" + "5"
```

Swift can’t join all those strings in one go. Instead, it will join the first two to make “12”, then join “12” and “3” to make “123”, then join “123” and “4” to make “1234”, and finally join “1234” and “5” to make “12345” – it makes temporary strings to hold “12”, “123”, and “1234” even though they aren’t ultimately used when the code finishes.

Swift has a better solution called string interpolation, and it lets us efficiently create strings from other strings, but also from integers, decimal numbers, and more.

If you remember, earlier I said that you can include double quotes inside strings as long as they have a backslash before them so Swift knows to treat them specially:

```Swift
let quote = "Then he tapped a sign saying \"Believe\" and walked away."
```

Something very similar is used with string interpolation: you write a backslash inside your string, then place the name of a variable or constant inside parentheses.

For example, we could create one string constant and one integer constant, then combine them into a new string:

```Swift
let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)
```

When that code runs, it will print “Hello, my name is Taylor and I’m 26 years old.”

String interpolation is much more efficient than using + to join strings one by one, but there’s another important benefit too: you can pull in integers, decimals, and more with no extra work.

You see, using + lets us add strings to strings, integers to integers, and decimals to decimals, but doesn’t let us add integers to strings. So, this kind of code is not allowed:

```Swift
let number = 11
let missionMessage = "Apollo " + number + " landed on the moon."
```


You could ask Swift to treat the number like a string if you wanted, like this:


```Swift
let missionMessage = "Apollo " + String(number) + " landed on the moon."
```


It is still both faster and easier to read to use string interpolation:

```Swift
let missionMessage = "Apollo \(number) landed on the moon."
```

Tip: You can put calculations inside string interpolation if you want to. For example, this will print “5 x 5 is 25”:

```Swift
print("5 x 5 is \(5 * 5)")
```

## Optional: Why does Swift have string interpolation?


## Test: String interpolation

---

## :star: 3 - Summary: Simple data

---

## :star: Checkpoint

---

---
