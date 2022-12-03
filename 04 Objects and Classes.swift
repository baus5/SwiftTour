//
//  04 Objects and Classes.swift
//  
//
//  Created by baus on 3.12.2022.
//

// Use class followed by the class’s name to create a class
class Shape {
    var numberOfSides = 0
    let triangle = "Triangle"
    let square = "Square"
    let circle = "Circle"
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
    func description(shape: String, side: Int) -> String {
        return "The \(shape) has \(side) sides."
    }
}

// Create an instance of a class
var shape = Shape()
// Use dot syntax to access the properties and methods of the instance.
shape.numberOfSides = 7

var shapeDescription = shape.simpleDescription()
print(shapeDescription)

// Example
var shape2 = Shape()
var shape2Description = shape2.description(shape: shape2.square, side: 4)
print(shape2Description)


// Class Initializer
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}


// Subclasses, initializer, override method
class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}

let test = Square(sideLength: 5.2, name: "My Test Square")
test.simpleDescription()
test.area()

// Example 2
class Circle: NamedShape {
    let pi = Double.pi  // 3.141592653589793
    var radius: Double
    
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
    }
    
    func area() -> Float {
        return Float(pi * (radius * radius))
    }
    
    override func simpleDescription() -> String {
        return "The radius of circle is \(radius)."
    }
}

let circle = Circle(radius: 5, name: "Test circle")
circle.radius
circle.simpleDescription()
circle.area()


// Getter and Setter

