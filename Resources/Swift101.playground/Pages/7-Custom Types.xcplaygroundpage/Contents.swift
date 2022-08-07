/*: * Custom Types
 We have several options to create Custom Types:
  - typealias
  - enum
  - protocol
  - class
  - struct
*/

typealias Coordinate = (Int, Int)

enum Language {
    case Swift
    case Kotlin
    case Dart
    case JavaScript
}

class Person {
    var name = ""
    var age = 0
}

struct ApiResponse {
    var status: Int
    var data: [String]
}

protocol Printable {
    func print()
}
