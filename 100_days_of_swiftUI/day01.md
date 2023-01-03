# <img src="https://img.icons8.com/color/48/null/swift.png"/> 100 Days of SwiftUI!

---
## <img src="https://img.icons8.com/color/38/null/swift.png"/> Day 01

---

## First steps in Swift

SwiftUI is a **powerful framework** for **building user-interactive apps** for **iOS**, **macOS**, **tvOS**, and even **watchOS**. But you can’t build software without having a **programming language**, so behind SwiftUI lies **Swift** itself: a powerful, flexible, and modern programming language that you’ll use for all your SwiftUI apps.

As Mark Twain once said, “the secret to getting ahead is getting started.” Well, you’re starting now, so we’re going to dive in and learn about **variables**, **constants**, and **simple data** types in Swift.

Today you have seven tutorials to complete. If you want to dive deeper into each topic there is optional further reading, but you don’t need to read that unless you want to and have the time. Regardless, there are a number of short tests to help make sure you’ve understood key concepts.

I know, I know: the temptation is strong to continue on to watch more videos and take more tests beyond those linked below, but remember: don’t rush ahead! It’s much better to do one hour a day every day than do chunks with large gaps between.

1. [Introduction: Why Swift?](https://www.hackingwithswift.com/quick-start/beginners/why-swift)

2. [Introduction: About this course](https://www.hackingwithswift.com/quick-start/beginners/about-this-course)

3. [Introduction: How to follow along](https://www.hackingwithswift.com/quick-start/beginners/how-to-follow-along)

4. [How to create variables and constants](https://www.hackingwithswift.com/quick-start/beginners/how-to-create-variables-and-constants)

Optional: [Why does Swift have variables?](https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-variables)

Optional: [Why does Swift have constants as well as variables?](https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-constants-as-well-as-variables)

Test: [Variables](https://www.hackingwithswift.com/review/variables)

Test: [Constants](https://www.hackingwithswift.com/review/constants)

5. [How to create strings](https://www.hackingwithswift.com/quick-start/beginners/how-to-create-strings)

Optional: [Why does Swift need multi-line strings?](https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-need-multi-line-strings)

Test: [Multi-line strings](https://www.hackingwithswift.com/review/multi-line-strings)

6. [How to store whole numbers](https://www.hackingwithswift.com/quick-start/beginners/how-to-store-whole-numbers)

Test: [Strings and integers](https://www.hackingwithswift.com/review/strings-and-integers)

7. [How to store decimal numbers](https://www.hackingwithswift.com/quick-start/beginners/how-to-store-decimal-numbers)

Optional: [Why does Swift need both Doubles and Integers?](https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-need-both-doubles-and-integers)

Optional: [Why is Swift a type-safe language?](https://www.hackingwithswift.com/quick-start/understanding-swift/why-is-swift-a-type-safe-language)

When you’re finished, don’t forget to tell other people about your progress. Yes, this is only day one, but the more motivation you get now the more you’ll be able to power through when things get tougher!

**Reminder**: I have a free iOS app that helps you practice Swift right on your iPhone and iPad. It contains alternative lessons that might help these new concepts sink in, plus lots more bonus activities. And did I mention it was free? [Download it here](https://itunes.apple.com/app/id1440611372).

### Tips

You can download Xcode from the Mac App Store by [clicking here](https://apps.apple.com/gb/app/xcode/id497799835?mt=12).

As you progress in these early days you’ll build up lots of code from each day. You can keep it in different playgrounds if you want, or you can delete it – it’s down to you.

---

## 1 -  Why Swift?

There are lots of programming languages out there, but I think you’re going to really enjoy learning Swift. This is partly for practical reasons – you can make a lot of money on the App Store! – but there are lots of technical reasons too.

You see, Swift **is a relatively young language**, having launched only in **2014**. This means **it doesn’t have a lot of the language cruft that old languages can suffer from, and usually means there is only one way to solve a particular problem**.

At the same time, being such a new programming language **means that Swift leverages all sorts of new ideas built upon the successes – and sometimes mistakes – of older languages**. For example, it makes it hard to accidentally write unsafe code, it makes it very easy to write code that is clear and understandable, and it supports all the world languages so you’ll never see those strange character errors that plague other languages.

Swift itself is just the language, and isn’t designed to draw anything on the screen. When it comes to building software with Swift, you’ll be using **SwiftUI**: Apple’s powerful framework that creates text, buttons, images, user interaction, and much more. As the name suggests, **SwiftUI was built for Swift** – it’s literally designed to leverage the power and safety offered by the language, which makes it remarkably quick to build really powerful apps.

So, you should learn Swift because you can make a lot of money with it, but also because it does so many things really well. No cruft, no confusion, just lots of power at your fingertips. What’s not to like?

---

## 2 - About this course

I’ve been teaching folks to write Swift since 2014, the same year Swift launched, and at this point Hacking with Swift is the world’s largest site dedicated to teaching Swift.

Along the way I learned a huge amount about what topics matter the most, how to structure topics into a smooth and consistent flow, and most importantly how to help learners remember topics they’ve learned. This course is the product of all that learning.

Unlike my previous work this does not strive to teach you every aspect of Swift, but instead **it spends more time on the subset of features that matter the most – the ones you’ll use in every app you build, time and time again**. Yes, there are some advanced language features covered, but I’ve cherrypicked them based on usefulness. When you’ve finished the book you might want to carry on learning some of the more advanced features, but I suspect you’d much rather get busy learning how to use SwiftUI.

Each chapter of this book is available as both text and video, but they cover exactly the same material so you’re welcome to learn whichever way suits you best. If you’re using the videos you’ll notice that I sometimes introduce topics using slides and sometimes demonstrate them in Xcode. It might feel repetitive, but it’s intentional – there’s a lot of things to learn, and if you saw each one only once it just wouldn’t stay in your memory!

There’s one last thing: you might notice how many chapters start with “How to…”, and that’s intentional – this book is here to show you how to do things in a hands-on way, as opposed to delving into theory. Theory is important, and you’ll come across a lot of it as you can continue to learn, but here the focus is relentlessly practical because I believe the best way to learn something new is to try it yourself.

Programming is an art: don't spend all your time sharpening your pencil when you should be drawing.

---

## 3 - How to follow along


There’s a lot of code shown off in this book, and I really want to encourage you to try it all yourself – type the code into your computer, run it and see the output, then experiment a little to make sure you understand it.

To run the code in this book you should have installed **Xcode 13.0 or later from the Mac App Store**. It’s free, and includes everything you need to follow along.

We’ll be using a **Swift Playground** for all the code in this book. You can create one by launching Xcode, then going to the File menu and choosing ````New > Playground````. When you’re asked what kind of playground to create, choose **Blank** from the **macOS tab**, then save it somewhere you can get to easily.

**Playgrounds are like little sandboxes where you can try out Swift code easily, seeing the result of your work side by side with the code**. You can use one playground for all the work you’ll be doing, or create new a playground for each chapter – do whatever works best for you.

Tip: The first time you run code in a playground it might take a few seconds to start, but subsequent runs will be fast.

---

## 4 - How to create variables and constants

Whenever you build programs, you’re going to want to store some **data**. Maybe it’s the user’s name they just typed in, maybe it’s some news stories you downloaded from the internet, or maybe it’s the result of a complex calculation you just performed.

Swift gives us **two ways of storing data**, depending on whether you want the data to change over time. The first option is **automatically used when you create a new playground**, because it will contain this line:

```var greeting = "Hello, playground"```

That creates a new **variable** called **greeting**, and because it’s a variable **its value can vary** – **it can change as our program runs**.

Tip: The other line in a macOS playground is ```import Cocoa```, which **brings in a huge collection of code provided by Apple to make app building easier**. This includes lots of important functionality, so please don’t delete it.

There are really four pieces of syntax in there:

- The **var ++keyword means **“create a new variable”**; it saves a little typing.

- We’re calling our variable **greeting**. You can call your variable anything you want, but most of the time **you’ll want to make it descriptive**.

- The **equals sign assigns a value to our variable**. You don’t need to have those spaces on either side of the equals sign if you don’t want to, but it’s the most common style.

- **The value we’re assigning** is the **text** “Hello, playground”. Notice that text is **written inside double quotes**, so that Swift can see where the text starts and where it ends.

If you’ve used other languages, you might have noticed that **our code doesn’t need a semicolon at the end of the line**. **Swift does allow semicolons, but they are very rare** – you’ll only ever need them if you want to write two pieces of code on the same line for some reason.

When you make a variable, you can change it over time:

```Swift
var name = "Ted"
name = "Rebecca"
name = "Keeley"
```

That creates a new variable called **name**, and gives it the value “Ted”. It then gets changed twice, first to “Rebecca” and then to “Keeley” – we don’t use **var** again because **we are modifying an existing variable rather than creating a new one**. You can change variables as much as you need to, and the old value is discarded each time.

(You’re welcome to put different text in your variables, but I’m a big fan of the TV show Ted Lasso so I went with Ted. And yes, you can expect other Ted Lasso references and more in the following chapters.)

If you don’t ever want to change a value, you need to use a constant instead. Creating a constant works almost identically to creating a variable, except we use **let** rather than var, like this:

```Swift
let character = "Daphne"
```

Now, **when we use let we make a constant, which is a value that can’t change**. Swift literally won’t let us, and will show a big error if we try.

Don’t believe me? Try putting this into Xcode:

```Swift
let character = "Daphne"
character = "Eloise"
character = "Francesca"
```

Again, there are no let keywords in those second and third lines because we aren’t creating new constants, we’re just trying to change the one we already have. However, like I said that won’t work – you can’t change a constant, otherwise it wouldn’t be constant!

If you were curious, “let” comes from the mathematics world, where they say things like “let x be equal to 5.”

**Important**: Please delete the two lines of code that are showing errors – you really can’t change constants!

When you’re learning Swift, you can ask Xcode to print out the value of any variable. You won’t use this much in real apps because users can’t see what’s printed, but it’s really helpful as a simple way of seeing what’s inside your data.

For example, we could print out the value of a variable each time it’s set – try entering this into your playground:

```Swift
var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)
```

**Tip**: You can run code in your Xcode playground by clicking the blue play icon to the left of it. If you move up or down along that blue strip, you’ll see the play icon moves too – this lets you run the code up to a certain point if you want, but most of the time here you’ll want to run up to the last line.

You might have noticed that I named my variable **playerName**, and not playername, player_name, or some other alternative. This is a choice: Swift doesn’t really care what you name your constants and variables, as long as you refer to them the same way everywhere. So, I can’t use playerName first then playername later – Swift sees those two as being different names.

Although Swift doesn’t care how we name our data, the naming style I’m using is the standard among Swift developers – what we call a convention. If you’re curious, the style is called “camel case”, because the second and subsequent words in a name start with a little bump for the capital letter:

```Swift
let managerName = "Michael Scott"
let dogBreed = "Samoyed"
let meaningOfLife = "How many roads must a man walk down?"
```

If you can, prefer to use constants rather than variables – not only does it give Swift the chance to optimize your code a little better, but it also allows Swift to make sure you never change a constant’s value by accident.

---


<img width="651" alt="Screen Shot 2023-01-03 at 12 17 29" src="https://user-images.githubusercontent.com/72580574/210386399-d75550c5-e25a-4b3a-9373-5781ed0b96ea.png">


