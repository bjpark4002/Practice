//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

func expandedForm(_ num: Int) -> String {
    // Do something
    
    let tem : String = String(num)

    var store : Int = 0
    var len : Int = tem.count-1
    
    var tens : Int = 1
    var str : String = ""
    var garbage : Int = 0
    for i in tem
    {
        
        store = Int(String(i)) ?? 0
        if store != 0
        {
            tens = 1
            for j in 0...len
            {
                garbage += j
                tens *= 10
            }
            tens /= 10
            
        }
        //print(store,len,store*tens)
        if store != 0
        {
            
            str += String(store*tens)
            str += " + "
            //if tens != 1
            //{
            //    str += " + "
            //}
        }
        len -= 1
       
        
        
        
                //print(Int(String(i)))
        //print(type(of: i))
        ///print(i.unicodeScalars.first.value - Unicode.Scalar("0")!.value)
    }
    
    //print(str)
    var cnt : Int = 0
    var newStr : String = ""
    //print(str)
    for i in str
    {
        cnt += 1
        if str.count-2 > cnt
        {
            newStr += String(i)
        }
    }
    return newStr
}

print(expandedForm(4982342))

