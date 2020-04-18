import UIKit

var strs = "Hello, playground"



for i in stride(from: strs.count-1, through: 0, by: -1) {
    print(String(strs[i]))
}

