import UIKit

func naiveHash(_ string: String) -> Int {
  let unicodeScalars = string.unicodeScalars.map { Int($0.value) }
  return unicodeScalars.reduce(0, +)

}


