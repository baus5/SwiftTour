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
// Nested functions have access to variables
// that were declared in the outer function
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()  // 15


// Functions are a first-class type
// This means that a function can return another function as its value.
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)


// Function as argument
// A function can take another function as one of its arguments.
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)


// Closures - without a name use {} in
// Functions are actually a special case of closures:
// blocks of code that can be called later.
numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

// Rewrite the closure to return zero for all odd numbers.
numbers.map({ (number: Int) -> Int in
    if number % 2 != 0 {
        return 0
    } else {
        return number
    }
})

// Closures more concisely
let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)
// Prints "[60, 57, 21, 36]"

// Very short closures - number instead of by name
let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)
// Prints "[20, 19, 12, 7]"


