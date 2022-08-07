/*: * Collections
 Swift includes several collections ready to use, here just the ones we will use
*/

// Array, we use [] and the type of the collection inside
// The literal string follows JSON syntax
var countries: [String] = ["Argentina", "Brazil", "Canada", "Denmark"]
// If the collection is a `var`, it's mutable
countries.append("Egypt")

// If the collection is a `let`, it's inmutable
let cities: [String] = ["Alameda", "Buenos Aires", "Cali"]

let anything: [Any] = [1, true, "A"]
