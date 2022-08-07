/*: * Null Safety
 A String must have a string value, but a String? accepts nil (aka null)
*/

var name: String?

// Null-safe operators
//print(name.count)

// If let
if let name = name {
    print(name.count)
}
