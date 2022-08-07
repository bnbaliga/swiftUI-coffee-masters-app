/*: * Closures
 Called literal functions, anonymous functions or lambda expressions on other languages.
 We use the special data type Void to express no return value
*/

var closure: ()->Void = {
    
}

// Arguments are available on anonymous variables or you can define names within the code block using `in`
var onSelectedItem: (Int)->Void = {
    print($0)
}

// Special syntax for functions receiving closures as arguments
func requestData(callback: (String)->Void) {
    
}

// How do you call that function?

