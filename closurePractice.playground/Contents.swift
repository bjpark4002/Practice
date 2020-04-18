import UIKit

var closure : (Int, Int) -> Int = {
    return $0 * $1
}

var closure1 = { (first :Int, second: Int) in
    return first * second
    
}
print(closure1(10,10))

var test1 = {" hello "}

print(test1())
