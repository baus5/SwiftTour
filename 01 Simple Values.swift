//
//  01 Simple Values.swift
//  
//
//  Created by baus on 29.11.2022.
//

// Prints "Hello, world!"
print("Hello, world!")

// Variables and Constants - var, let
var myVariable = 42
myVariable = 50

let myConstant = 42

// Implicit & Explicit Types
let implicitInteger = 70
let implicitDouble = 70.0  // Swift always chooses Double
let explicitDouble: Double = 70
let explicitFloat: Float = 4

type(of: implicitDouble)

// Values are never implicitly converted to another type.
let label = "The width is "
let width = 94
let widthLabel = label + String(width)

// Values in strings
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) piece of fruit."

let pi: Double = 3.1415926535
let digitsOfPi = "The first 11 digits of pi are \(pi)"

let name: String = "Mars"
let greeting = "Hello, \(name)!"

// Multiple Lines
let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""

// Arrays and Dictionaries
var fruits = ["strawberries", "limes", "tangerines"]
fruits[1] = "grapes"

fruits.append("blueberries")
print(fruits)

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"

// An Empty array and dictionary - initializer syntax
let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]

// If type information can be inferred, you can write an empty array as
fruits = []
occupations = [:]
