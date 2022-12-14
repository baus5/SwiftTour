//
//  02 Control Flow.swift
//  
//
//  Created by baus on 30.11.2022.
//

// Use if and switch to make conditionals, and
// use for-in, while, and repeat-while to make loops.

// if statement, for-in loop
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0

for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

// Optionals, if and let together
var optionalStrign: String? = "Hello"
print(optionalStrign == nil)
// Prints "false"

var optionalName: String? = "John Smith" // change to nil
var greeting = "Hello!"

if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "Welcome!"  // if optionalName is nil
}

// Optionals, Nil-Coalescing Operator (??)
let nickname: String? = nil
let fullName: String = "John Smith"
let informalGreeting = "Hi \(nickname ?? fullName)"

// Shorter spelling to unwrap a value
if let nickname {
    print("Hey, \(nickname)")
}

// Switch
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ant on a log")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}

// for-in to iterate over items in a dictionary by
// providing a pair of names to use for each key-value pair.
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest = 0
var largestType: String?

// (!) change id to "_" if you dont need to track of key.
for (id, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largestType = id
        }
    }
}
print(largest, largestType!)

// while loop
var n = 2
while n < 100 {
    n *= 2
}
print(n)
// Prints "128"

var m = 2  // (!) change to "200"
repeat {
    m *= 2  // the loop is run at least once.
} while m < 100
print(m)
// Prints "128"

// for-in range
// use ... to make a range that includes both values.
var total = 0
for i in 0...5 {
    total += i
}
print(total)

// ..< to make a range that omits its upper value.
total = 0
for i in 0..<5 {
    total += i
}
print(total)
