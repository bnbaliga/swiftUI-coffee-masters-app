/*: * Basic Expressions
 Swift code looks in its first view as many other languages
*/

// We can have global expressions without the need of a function or class
// Semi-colons are optional, not recommended unless two expressions share a line
// Everything we declare is accesible by other files in the same app or framework
// We use (mandatory) curly braces for code blocks following C-syntax.
// Spaces and new lines are, most of the time, ignored
var x = 1; var y = 2

// Boolean conditions don't need parenthesis
if x > 1 {
    
}

while x < 10 {
    x += 1  // ++ operator does NOT exist in Swift
}

print(x)    // print sends a message to the console with a new line after

/*: ** Name style guidelines */

// Variables, constants and function name use camelCase
var name: String
let tax = 7.8
func printMessage() { }

// Data types use TitleCase
class CustomerOrder { }
enum UserType { }
protocol MyProtocol { }
struct ApiResponse { }

// Valid identifiers: as most languages, but with steroids
var español = "hola"
var 🐄 = 1
var 愛 = "love"

// Visibility
public var visible = 1
private var invisible = 2
fileprivate var kindOfInvisible = 3
