//
//  03 Functions.swift
//  
//
//  Created by baus on 3.12.2022.
//


// Declare a function - func
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(person: "Bob", day: "Sunday")


// Custom argument label, "_" for no argument label
func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("John", on: "Saturday")


// Use a tuple to make a compound value
// for example, to return multiple values from a function.
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics)

// The elements of a tuple can be referred to either by name or by number.
print(statistics.sum)
// Prints "120"
print(statistics.2)
// Prints "120"


// Nested Functions

