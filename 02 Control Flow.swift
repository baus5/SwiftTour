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

// Optionals, if let
var optionalStrign: String? = "Hello"
print(optionalStrign == nil)  // Prints "false"

var optionalName: String? = "John Smith" // nil
var greeting = "Hello!"

if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "Welcome!"  // if optionalName is nil
}

// Optional values, ?? operator, default values
let nickname: String? = nil
let fullName: String = "John Smith"
let informalGreeting = "Hi \(nickname ?? fullName)"

// Shorter spelling to unwrap a value
if let nickname {
    print("Hey, \(nickname)")
}

// Switch
