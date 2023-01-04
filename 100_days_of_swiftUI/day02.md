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

<img width="809" alt="boolean" src="https://user-images.githubusercontent.com/72580574/210639956-9c8bdfa0-7c9c-4ca6-8e01-b08e0a45e857.png">





## <img src="https://img.icons8.com/ios/40/null/test-results.png"/> Test: Doubles and Booleans

1.

![image](https://user-images.githubusercontent.com/72580574/210641054-9345ee65-0eaf-469b-ae38-84c51a6d2407.png)


2.

![image](https://user-images.githubusercontent.com/72580574/210641125-5f975df9-33dd-45b6-8e9c-a4f55c5532e6.png)

3.

![image](https://user-images.githubusercontent.com/72580574/210641180-c5f00440-6100-47af-a087-04ae59ff407f.png)

4.

![image](https://user-images.githubusercontent.com/72580574/210641251-7f687fbc-1450-4e77-adb5-32f4e2fca92e.png)

5.

![image](https://user-images.githubusercontent.com/72580574/210641308-99ec80c5-127e-4db9-a709-a5591c053d12.png)

6.

![image](https://user-images.githubusercontent.com/72580574/210641359-7123aa4d-18ff-4b83-8d42-ba2d93202d43.png)



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

<img width="582" alt="joining_strings" src="https://user-images.githubusercontent.com/72580574/210644208-8abad951-71f1-41c9-8303-9fd1232b0be2.png">




## Optional: Why does Swift have string interpolation?

When it comes time to showing information to your user – whether that’s messages being printed out, text on buttons, or whatever fits your app idea – you will usually rely heavily on strings.

Of course, we don’t just want static strings, because we want to show the user some sort of relevant data they can use. So, Swift gives us string interpolation as a way of injecting custom data into strings at runtime: it replaces one or more parts of a string with data provided by us.

For example:

```Swift
var city = "Cardiff"
var message = "Welcome to \(city)!"
```

Of course, in that trivial example we could have just written our city name directly into the string – “Welcome to Cardiff!” – but in real apps having this inserted dynamically is important because it lets us show real-world user data rather than things we typed ourselves.

Swift is capable of placing any kind of data inside string interpolation. The result might not always be useful, but for all of Swift’s basic types – strings, integers, Booleans, etc – the results are great.

Tip: String interpolation is extremely powerful in Swift. If you’re keen to see just what it can do, check out this more advanced blog post from me: [https://www.hackingwithswift.com/articles/178/super-powered-string-interpolation-in-swift-5-0](https://www.hackingwithswift.com/articles/178/super-powered-string-interpolation-in-swift-5-0)


### The basics

We’re used to basic string interpolation like this:


```Swift
let age = 38
print("You are \(age)")
```

We take it for granted these days, but it was a huge quality of life improvement over the syntax we had previously:

[NSString stringWithFormat:@"%ld", (long)unreadCount];

But it’s also an important performance improvement, because the alternative was to write string joining code like this:

```Swift
let all = s1 + s2 + s3 + s4
```
Yes, it achieves the same end result, but Swift would have to add s1 to s2 to make s5, add s5 to s3 to make s6, and add s6 to s4 to make s7, before assigning that to all.

String interpolation hasn’t changed much since Swift 1.0, with the only real change coming in Swift 2.1 where we gained the ability to use string literals in interpolations, like this:

```Swift
print("Hi, \(user ?? "Anonymous")")
```
Now, as you know Swift Evolution drives Swift forward constantly using ideas from the community. They get discussed, they develop, and they either get accepted or rejected. And this isn't just a once-a-year thing, either. In Swift 4.2 alone, a ton of features were introduced – this was no minor release!

As for Swift 5.0, it's fair to say that ABI stability is the star of the show – it's what developers are most keen to see. But there's so much more, not least raw strings, Result, and ```isMultiple(of:)```.

Well, after five years of hard service, Swift Evolution has finally come for string interpolation: in Swift 5.0 it gains new super powers that give us substantially more control over how it works.

To try it out, let’s dive into some code.

If we make a new age integer like this:

```Swift
let age = 38
```

Then it feels pretty obvious that I can use that with string interpolation:

```Swift
print("Hi, I'm \(age).")
```
But what if we decided we wanted to format that differently?

Using the new string interpolation system in Swift 5.0 we can extend String.StringInterpolation to add our own custom interpolations, like this:

```Swift
extension String.StringInterpolation {
    mutating func appendInterpolation(_ value: Int) {
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut

        if let result = formatter.string(from: value as NSNumber) {
            appendLiteral(result)
        }
    }
}
```
Now the code will print out the integer as text: “Hi, I’m thirty-eight.”

We could use the same technique to adjust date formatting, because by default dates in strings don’t look great. Try writing this:

```Swift
print("Today's date is \(Date()).")
```

You’ll see that Swift prints the date as something like “2019-02-21 23:30:21 +0000”. We can smarter than up with a custom date interpolation:

```Swift
mutating func appendInterpolation(_ value: Date) {
    let formatter = DateFormatter()
    formatter.dateStyle = .full

    let dateString = formatter.string(from: value)
    appendLiteral(dateString)
}
```
That looks much better – you’ll see something like “February 21, 2019 23:30:21” instead.

This kind of customization possibility is at the heart of this new string interpolation system – we have much more control over how it works.

Note: to avoid confusing your colleagues, you probably shouldn’t override Swift’s defaults. So, name your parameters as needed to avoid confusion:

```Swift
mutating func appendInterpolation(format value: Int) {
```

Now we call that using a format parameter name, like this:

```Swift
print("Hi, I'm \(format: age).")
```
With that change it’s clear we’re triggering custom behavior now.

### Interpolation with parameters

That small change shows how we have complete control over the way string interpolation handles parameters. You see, appendInterpolation() so that we can handle various different data types in unique ways.

For example, we could write some code to handle Twitter handles, looking specifically for the twitter parameter name like this:

```Swift
mutating func appendInterpolation(twitter: String) {
    appendLiteral("<a href=\"https://twitter.com/\(twitter)\">@\(twitter)</a>")
}
```

Now we can use that in string interpolation:

```Swift
print("You should follow me on Twitter: \(twitter: "twostraws").")
```
But why stop at one parameter? For our number formatting example, there’s no reason to force folks to use spell out style – we can change the method to add a second parameter:

```Swift
mutating func appendInterpolation(format value: Int, using style: NumberFormatter.Style) {
```

We could use that inside the method rather than forcing spell out style:

```Swift
mutating func appendInterpolation(format value: Int, using style: NumberFormatter.Style) {
    let formatter = NumberFormatter()
    formatter.numberStyle = style

    if let result = formatter.string(from: value as NSNumber) {
        appendLiteral(result)
    }
}
```

And use it in our call site:

```Swift
print("Hi, I'm \(format: age, using: .spellOut).")
```

You can have as many of these parameters as you want, and they can be whatever you want too.

An example I like to give folks is using autoclosures with a default value, like this:

```Swift
extension String.StringInterpolation {
    mutating func appendInterpolation(_ values: [String], empty defaultValue: @autoclosure () -> String) {
        if values.count == 0 {
            appendLiteral(defaultValue())
        } else {
            appendLiteral(values.joined(separator: ", "))
        }
    }
}
```

```Swift
let names = ["Malcolm", "Jayne", "Kaylee"]
print("Crew: \(names, empty: "No one").")
```

Using @autoclosure means that we can use simple values or call complex functions for the default value.

Now you’re probably thinking that we could rewrite this code without using the string interpolation system, something like this:


```Swift
extension Array where Element == String {
    func formatted(empty defaultValue: @autoclosure () -> String) -> String {
        if count == 0 {
            return defaultValue()
        } else {
            return self.joined(separator: ", ")
        }
    }
}

print("Crew: \(names.formatted(empty: "No one")).")
```
But now we’re just cluttering our call site – we’re obviously trying to format something, because that’s the point of string interpolation. Remember the Swift style guide: omit unnecessary words.

Erica Sadun gave a really short and sweet example of how this can help clean up your code:

```Swift
extension String.StringInterpolation {
    mutating func appendInterpolation(if condition: @autoclosure () -> Bool, _ literal: StringLiteralType) {
        guard condition() else { return }
        appendLiteral(literal)
    }
}

let doesSwiftRock = true
print("Swift rocks: \(if: doesSwiftRock, "(*)")")
print("Swift rocks \(doesSwiftRock ? "(*)" : "")")
```

### Adding interpolations for custom types

You can add interpolations for your own custom types too:

```Swift
struct Person {
    var type: String
    var action: String
}

extension String.StringInterpolation {
    mutating func appendInterpolation(_ person: Person) {
        appendLiteral("I'm a \(person.type) and I'm gonna \(person.action).")
    }
}

let hater = Person(type: "hater", action: "hate")
print("Status check: \(hater)")
```


The nice thing about using string interpolation here is that we don’t touch the object’s debug description. So, if we view this thing in a debugger, or we try to print it out directly, we get the original, untouched data that we got previously:

```Swift
print(hater)
```

We can even combine that custom type with the multiple parameters from earlier:

```Swift
extension String.StringInterpolation {
    mutating func appendInterpolation(_ person: Person, count: Int) {
        let action = String(repeating: "\(person.action) ", count: count)
        appendLiteral("\n\(person.type.capitalized)s gonna \(action)")
    }
}

let player = Person(type: "player", action: "play")
let heartBreaker = Person(type: "heart-breaker", action: "break")
let faker = Person(type: "faker", action: "fake")

print("Let's sing: \(player, count: 5) \(hater, count: 5) \(heartBreaker, count: 5) \(faker, count: 5)")
```


If you hadn’t already guessed, that’s the lyrics to Taylor Swift’s Shake it Off using string interpolation – sorry not sorry.

You can of course use the full range of Swift’s language features to craft your custom interpolations. For example, we could write a simple debug interpolation that accepts any kind of Encodable object and prints it as JSON:

```Swift
mutating func appendInterpolation<T: Encodable>(debug value: T) {
    let encoder = JSONEncoder()
    encoder.outputFormatting = .prettyPrinted

    if let result = try? encoder.encode(value) {
        let str = String(decoding: result, as: UTF8.self)
        appendLiteral(str)
    }
}
```

If we then make Person conform to Encodable we can print it out like this:

```Swift
print("Here's some data: \(debug: faker)")
```

You can also use things like variadic parameters, and even mark your interpolations as throwing. For example, our Encodable generic interpolation does nothing if an encoding error happens, but if we wanted to we could use error propagation to make it bubble upwards:


```Swift
mutating func appendInterpolation<T: Encodable>(debug value: T) throws {
    let encoder = JSONEncoder()
    encoder.outputFormatting = .prettyPrinted

    let result = try encoder.encode(value)
    let str = String(decoding: result, as: UTF8.self)
    appendLiteral(str)
}

print(try "Status check: \(debug: hater)")
```

Everything we’ve looked at so far is just modifying the way strings do interpolation.

### Building types with interpolation

As you’ve seen, this is really about controlling the way data is formatted in our apps in a really clean way, but we can also use this to build our own types using interpolation.

To demonstrate this we’re going to design a new type that can be instantiated from a string using interpolation. So, we’re going to make a type that creates attributed strings in various colors, all using string interpolation:

```Swift
struct ColoredString: ExpressibleByStringInterpolation {
    // this nested struct is our scratch pad that assembles an attributed string from various interpolations
    struct StringInterpolation: StringInterpolationProtocol {
        // this is where we store the attributed string as we're building it
        var output = NSMutableAttributedString()

        // some default attribute to use for text
        var baseAttributes: [NSAttributedString.Key: Any] = [.font: UIFont(name: "Georgia-Italic", size: 64) ?? .systemFont(ofSize: 64), .foregroundColor: UIColor.black]

        // this initializer is required, and can be used as a performance optimization
        init(literalCapacity: Int, interpolationCount: Int) { }

        // called when we need to append some raw text
        mutating func appendLiteral(_ literal: String) {
            // print it out so you can see how it's called at runtime
            print("Appending \(literal)")

            // give it our base styling
            let attributedString = NSAttributedString(string: literal, attributes: baseAttributes)

            // add it to our scratchpad string
            output.append(attributedString)
        }

        // called when we need to append a colored message to our string
        mutating func appendInterpolation(message: String, color: UIColor) {
            // print it out again
            print("Appending \(message)")

            // take a copy of our base attributes and apply the color
            var coloredAttributes = baseAttributes
            coloredAttributes[.foregroundColor] = color

            // wrap it in a new attributed string and add it to our scratchpad
            let attributedString = NSAttributedString(string: message, attributes: coloredAttributes)
            output.append(attributedString)
        }
    }

    // the final attributed string, once all interpolations have finished    
    let value: NSAttributedString

    // create an instance from a literal string
    init(stringLiteral value: String) {
        self.value = NSAttributedString(string: value)
    }

    // create an instance from an interpolated string
    init(stringInterpolation: StringInterpolation) {
        self.value = stringInterpolation.output
    }
}

// now try it out!
let str: ColoredString = "\(message: "Red", color: .red), \(message: "White", color: .white), \(message: "Blue", color: .blue)"
Behind the scenes, this is really just massive amounts of syntactic sugar. We could do that last part entirely by hand if we wanted:

var interpolation = ColoredString.StringInterpolation(literalCapacity: 10, interpolationCount: 1)

interpolation.appendLiteral("Hello")
interpolation.appendInterpolation(message: "Hello", color: .red)
interpolation.appendLiteral("Hello")

let valentine = ColoredString(stringInterpolation: interpolation)
```


##  <img src="https://img.icons8.com/ios/50/null/test-results.png"/> Test: String interpolation

1.

![image](https://user-images.githubusercontent.com/72580574/210650053-4f8f2b06-268b-43e7-b747-0e8e0bb9ff22.png)

2.

![image](https://user-images.githubusercontent.com/72580574/210650111-987f634e-98bd-4ae0-892a-22cef4e6fdb6.png)

3.

![image](https://user-images.githubusercontent.com/72580574/210650179-d9c52b43-d21e-4634-b894-e97931c9703c.png)


4.

![image](https://user-images.githubusercontent.com/72580574/210650223-4e01e2c5-2c17-4b3a-ba17-b03624809703.png)


5.

![image](https://user-images.githubusercontent.com/72580574/210650280-e564e73e-685d-4088-8aef-a34466201be6.png)


6.

![image](https://user-images.githubusercontent.com/72580574/210650309-73fd186a-1709-4317-8cdf-6497305ce13d.png)


---

## :star: 3 - Summary: Simple data


We’ve covered a lot about the basics of data in the previous chapters, so let’s recap:

- Swift **lets** us create constants using let, and variables using **var**.

- If you don’t intend to change a value, make sure you use **let** so that Swift can help you avoid mistakes.

- Swift’s strings contain text, from short strings up to whole novels. They work great with emoji and any world language, and have helpful functionality such as **count** and **uppercased()**.

- You create strings by using double quotes at the start and end, but if you want your string to go over several lines you need to use three double quotes at the start and end.

- Swift calls its whole numbers integers, and they can be positive or negative. They also have helpful functionality, such as **isMultiple(of:)**.

- In Swift decimal numbers are called **Double**, short for double-length floating-point number. That means they can hold very large numbers if needed, but they also aren’t 100% accurate – you shouldn’t use them when 100% precision is required, such as when dealing with money.

- There are lots of built-in arithmetic operators, such as +, -, *, and /, along with the special compound assignment operators such as += that modify variables directly.

- You can represent a simple true or false state using a Boolean, which can be flipped using the **!** operator or by calling **toggle()**.

- String interpolation lets us place constants and variables into our strings in a streamlined, efficient way.

It’s a lot, right? And that’s okay – you’ll be using everything from that list time and time again as you build apps, until eventually you’ll understand it all without needing to refer back here.

---

## :star: Checkpoint



---
