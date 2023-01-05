# <img src="https://img.icons8.com/color/48/null/swift.png"/> 100 Days of SwiftUI!

---

## <img src="https://img.icons8.com/color/38/null/swift.png"/> Day 04

---


## Complex data types, part 2


Today we’re going to finish our look at data types by examining type annotation, which is Swift’s way of letting us dictate exactly what data type each variable and constant should be. Once that’s done we’ll summarize what’s covered, then try another checkpoint so you can evaluate what you’ve learned so far.

I know, you’re probably sick of data types at this point, but as Eric Raymond said, “good data structures and bad code works a lot better than the other way around.”

++Today you’ll learn about type annotation, then go through the summary and checkpoint**. There’s some optional extra reading that I recommend you read, along with a short test to help make sure you’ve understood what was taught.

Today ought to take you a lot less than an hour to complete, but that’s okay – day 13 will probably take more than an hour, so it all balances out!

1. [How to use type annotations](https://www.hackingwithswift.com/quick-start/beginners/how-to-use-type-annotations)

-Optional: Why does Swift have type annotations?

-Optional: Why would you want to create an empty collection?

-Test: Type annotations

2. [Summary: Complex data](https://www.hackingwithswift.com/quick-start/beginners/summary-complex-data)

3. Checkpoint 2

Tip: Even though the checkpoint doesn’t ask much, don’t be surprised if you spend some time kind of staring at the screen wondering what to do. That isn’t a bad sign – in fact, I’d say it’s a good sign. I firmly believe there is no learning without struggle, so don’t be afraid to fight for it!ç


---

## :star: 1. How to use type annotations

Swift is able to figure out what type of data a constant or variable holds based on what we assign to it. However, sometimes we don’t want to assign a value immediately, or sometimes we want to override Swift’s choice of type, and that’s where type annotations come in.

So far we’ve been making constants and variables like this:


```Swift
let surname = "Lasso"
var score = 0
```

This uses type inference: Swift infers that surname is a string because we’re assigning text to it, and then infers that score is an integer because we’re assigning a whole number to it.

Type annotations let us be explicit about what data types we want, and look like this:

```Swift
let surname: String = "Lasso"
var score: Int = 0
```

Now we’re being explicit: surname must be a string, and score must be an integer. That’s exactly what Swift’s type inference would have done anyway, but sometimes it isn’t – sometimes you will want to choose a different type.

For example, maybe score is a decimal because the user can get half points, so you’d write this:

```Swift
var score: Double = 0
```

Without the **: Double** part Swift would infer that to be an integer, but we’re overriding that and saying it’s definitely a decimal number.

We’ve looked at a few types of data so far, and it’s important you know their names so you can use the right type annotation when needed.

**String** holds text:

```Swift
let playerName: String = "Roy"
```

**Int** holds whole numbers:

```Swift
var luckyNumber: Int = 13
```

**Double** holds decimal numbers:

```Swift
let pi: Double = 3.141
```

**Bool** holds either true or false:

```Swift
var isAuthenticated: Bool = true
```

**Array** holds lots of different values, all in the order you add them. This must be specialized, such as **[String]**:

```Swift
var albums: [String] = ["Red", "Fearless"]
```

**Dictionary** holds lots of different values, where you get to decide how data should be accessed. This must be specialized, such as **[String: Int]**:

```Swift
var user: [String: String] = ["id": "@twostraws"]
```

**Set** holds lots of different values, but stores them in an order that’s optimized for checking what it contains. This must be specialized, such as **Set<String>**:

```Swift
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])
```

Knowing all these types is important for times when you don’t want to provide initial values. For example, this creates an array of strings:

```Swift
var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]
```

Type annotation isn’t needed there, because Swift can see you’re assigning an array of strings. However, if you wanted to create an empty array of strings, you’d need to know the type:

```Swift
var teams: [String] = [String]()
```

Again, the type annotation isn’t required, but you still need to know that an array of strings is written as **[String]** so that you can make the thing. Remember, you need to add the open and close parentheses when making empty arrays, dictionaries, and sets, because it’s where Swift allows us to customize the way they are created.

Some people prefer to use type annotation, then assign an empty array to it like this:

```Swift
var cities: [String] = []
```

I prefer to use type inference as much as possible, so I’d write this:

```Swift
var clues = [String]()
```

As well as all those, there are enums. Enums are a little different from the others because they let us create new types of our own, such as an enum containing days of the week, an enum containing which UI theme the user wants, or even an enum containing which screen is currently showing in our app.

Values of an enum have the same type as the enum itself, so we could write something like this:

```Swift
enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light
```

This is what allows Swift to remove the enum name for future assignments, so we can write **style = .dark** – it knows any new value for **style** must be some kind **UIStyle**

Now, there’s a very good chance you’ll be asking when you should use type annotations, so it might be helpful for you to know that I prefer to use type inference as much as possible, meaning that I assign a value to a constant or variable and Swift chooses the correct type automatically. Sometimes this means using something like **var score = 0.0** so that I get a **Double**.

The most common exception to this is with constants I don’t have a value for yet. You see, Swift is really clever: you can create a constant that doesn’t have a value just yet, later on provide that value, and Swift will ensure we don’t accidentally use it until a value is present. It will also ensure that you only ever set the value once, so that it remains constant.

For example:

```Swift
let username: String
// lots of complex logic
username = "@twostraws"
// lots more complex logic
print(username)
```


That code is legal: we’re saying **username** will contain a string at some point, and we provide a value before using it. If the assignment line – **username = "@twostraws"** – was missing, then Swift would refuse to build our code because **username** wouldn’t have a value, and similarly if we tried to set a value to **username** a second time Swift would also complain.

This kind of code requires a type annotation, because without an initial value being assigned Swift doesn’t know what kind of data **username** will contain.

Regardless of whether you use type inference or type annotation, there is one golden rule: Swift must at all times know what data types your constants and variables contain. This is at the core of being a type-safe language, and stops us doing nonsense things like **5 + true** or similar.

Important: Although type annotation can let us override Swift’s type inference to a degree, our finished code must still be possible. For example, this is not allowed:

```Swift
let score: Int = "Zero"
```

Swift just can’t convert “Zero” to an integer for us, even with a type annotation requesting it, so the code just won’t build.



## Optional: Why does Swift have type annotations?


A common question folks ask when learning Swift is “why does Swift have type annotations?”, which is usually followed by “when should I use type annotations in Swift?”

The answer to the first question is primarily one of three reasons:

1. Swift can’t figure out what type should be used.

2. You want Swift to use a different type from its default.

3. You don’t want to assign a value just yet.

The first of those will usually happen only in more advanced code. For example, if you were loading some data from the internet that you know happens to be the name of your local politician, Swift can’t know that ahead of time so you’ll need to tell it.

The second scenario is quite common as you learn more in Swift, but right now a simple example is trying to create a double variable without having to constantly write “.0” everywhere:

```Swift
var percentage: Double = 99
```

That makes **percentage** a double with the value of 99.0. Yes, we have assigned an integer to it, but our type annotation makes it clear that the actual data type we want is double.

The third option happens when you want to tell Swift that a variable is going to exist, but you don’t want to set its value just yet. This happens in lots of places in Swift, and looks like this:

```Swift
var name: String
```

You can then assign a string to name later on, but you can’t assign a different type because Swift knows it would be invalid.

Of course, the second question here is “when should I use type annotations in Swift?” This is much more subjective, because the answer usually depends on your personal style.

In my own code, I prefer to use type inference as much as possible. That means I leave off the type annotations, and let Swift figure out the type of things based on what data I store in them. My reasons for this are:

1. It makes my code shorter and easier to read.

2. It allows me to change the type of something just by changing whatever is its initial value.

Some other folks prefer to always use explicit type annotation, and that works fine too – it really is a question of style.

## Optional: Why would you want to create an empty collection?


When you’re just learning Swift, it’s common to see examples such as this one:


```Swift
let names = ["Eleanor", "Chidi", "Tahani", "Jianyu", "Michael", "Janet"]
```

That’s a constant array of six strings, and because it’s constant it means we can’t add more things to the array – we know all our items when the array is created, so the rest of our program is just using that fixed data.

But sometimes you don’t know all your data up front, and in those cases it’s more common to create an empty collection then add things as you calculate your data.

For example, we have our fixed names array above, and if we wanted to figure out which names started with J then we would:

1. Creating an empty string array called something like jNames

2. Go over every name in the original names array and check whether it starts with “J”

3. If it does, add it to the jNames array.

When we’ve gone over all the names, we’ll end up with two strings in jNames: Jianyu and Janet. Of course, if our check was which names started with “X” then we’d end up with no names in the array – and that’s OK. It started as empty and ended as empty.

Later on in this book we’ll be looking at the Swift code needed to make all this work for real.

## Test: Type annotations

---

## :star: 2. Summary: Complex data

We’ve gone beyond simple data types now, and started looking at ways to group them together and even create our own using enums. So, let’s recap:

- Arrays let us store lots of values in one place, then read them out using integer indices. Arrays must always be specialized so they contain one specific type, and they have helpful functionality such as count, append(), and contains().

- Dictionaries also let us store lots of values in one place, but let us read them out using keys we specify. They must be specialized to have one specific type for key and another for the value, and have similar functionality to arrays, such as contains() and count.

- Sets are a third way of storing lots of values in one place, but we don’t get to choose the order in which they store those items. Sets are really efficient at finding whether they contain a specific item.

- Enums let us create our own simple types in Swift so that we can specify a range of acceptable values such as a list of actions the user can perform, the types of files we are able to write, or the types of notification to send to the user.

Swift must always know the type of data inside a constant or variable, and mostly uses type inference to figure that out based on the data we assign. However, it’s also possible to use type annotation to force a particular type.

Out of arrays, dictionaries, and sets, it’s safe to say that you’ll use arrays by far the most. After that comes dictionaries, and sets come a distant third. That doesn’t mean sets aren’t useful, but you’ll know when you need them!


---

##:star: 3. Checkpoint 2

Now that you’ve met arrays, dictionaries, and sets, I want to pause for a moment to give you chance to solve a small coding challenge. It’s not designed to trip you up, but instead to encourage you to stop for a while and think about what you’ve learned.

This time the challenge is to create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.

I’ll provide some hints below, but please take the time to think about a solution before you read them. Trust me: forgetting what you’ve learned then re-learning it actually makes it sink in deeper!

Some hints:

1. You should start by creating an array of strings, using something like let albums = ["Red", "Fearless"]

2. You can read the number of items in your array using albums.count.

3.count also exists for sets.

4. Sets can be made from arrays using Set(someArray)

5. Sets never include duplicates.


---