import UIKit

func quicksort( input : Array<Int>) -> Array<Int> {
    
    var less : [Int] = []
    var greater : [Int] = []
    var pivot : Int = 0
     
    
    if input.count<2{
        return input
    }else{
        pivot = input[0]
        
        print(pivot)
        for i in input{
            print(i)
            if i <= pivot {
                print("less")
                less.append(i)
            }else{
                print(greater)
                greater.append(i)
            }
        }
//        print(less)
//        print(greater)
        return quicksort(input: less) + [pivot] + quicksort(input: greater)
    }
}
quicksort( input: [22,3,1,6,62,5] )
