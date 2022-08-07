/*: * Variables and Types
 Swift is a statically typed language, but it's also flexible and support type inference
*/

// Variables use the keyword `var`
var data = 3
data = 5
data = 7

// Constants use the keyword `let`, they can also be used as inmutable variables
// CAREFUL JAVASCRIPT DEVS!
// We want to use let as much as possible
let tax = 7.8
//tax = 10

// Types are defined with colon after name, but they can be inferred by its initial value
var price: Double
var otherPrice = 325.99

// Sometimes we want to explicitly define the data type
var aThirdPrice = 23   // is it a Double?

// Core Data Types
let string: String
let integer: Int   // there are also bit-specific and unsigned versions
let double: Double // there is also Float
let boolean: Bool  // values are true and false

// String Literals, double quotes
print("Hello World")
// Every string can have template expressions using \()
// expression result will be converted to string
var message = "The price is \(otherPrice * 1.1)"

// Tuples
let coordinate: (Int, Int) = (4, 5)
let city: (String, Int) = ("Minneapolis", 420_000)
print(city.0, city.1)

// Tuple segments can have names for better access
let state: (name: String, population: Int, isNice: Bool)
state = ("Minnesota", 5_640_000, true)

