import UIKit

var str = "Hello, playground"


typealias Person = (name:String, age:Int, height:Int)

var bumjin:Person = ("Bumjin",26,187)

var clone:Person = ("Bumjin",26,187)
//
//if bumjin == clone{
//    print("Same")
//
//}
//else{
//    print("no")
//}
//
//let a = "a"
//let b = "b"
//a+b
//
//a == b ? print("the same") : print("not same")
//

var aa:Int?

//print(aa ?? "empty")


for index in 0..<5 {
    print(index,"wow")
}

let myArray = ["a","b","c","d"]
//
//for i in myArray[0...2]{
//    print(i)
//}


var myString2: String?? = String.init()

//print("myString",myString2)


myString2 = nil


var myScore:Int?
myScore = 0

//myScore==nil ? print("E"):print("F")

/*
if myScore == nil {
    print("E")
}

if myScore! < 60 {
    print("F")
}


if let hasScore = myScore{
    if hasScore < 50{
        
        print("less than 50")
    }
}else{
    print("myScore is nil")
}


var myName: String?

var tem: Int?
if tem ?? 10<50{
    print("noooo")
}
*/

var someString = [String]()

someString = ["a","b","c"]

someString.remove(at: 1)
print(someString)

var tems = Set<String>()

tems.insert("aa")
tems.insert("bb")
tems.insert("cc")
//print(tems)


var people = ["john":5, "lee":12]

var someNumber = 6
//
//switch someNumber {
//case 5:
//    print("entered 5")
//
//default:
//    break
//}


func sum(number1: Int, number2: Int) -> Int{
    return number1+number2
}
print(sum(number1: 1,number2: 2))

func mySum(_ number1: Int, _ number2: Int) -> Int{
    return number1+number2
}
//
//print(mySum(50, 50))
//
func sumAll(_ numbers: Int...) -> Int{
    var result: Int = 0
    
    for i in numbers{
        print(i)
        result += i
    }
    return result
    
}
//
//print(sumAll(2,3,4,5,6))
//
//

func sayHi(name: String) -> String{
    return name+" Hello"
}
var sayGreet0 = { (name: String) -> String in return name+" Hello0"}
//type inference
var sayGreet1 = { (name: String) in return name+" Hello1"}
// implicit returns from single-expression closure
var sayGreet2 = { (name: String) in name+" Hello2"}

var sayGreet3 : (String) -> String = { (name) in  name+" Hello3"}

//shortand arguments names
var sayGreet4 : (String) -> String = { $0+" Hello4"}

//
//
//print(sayHi(name: "Bumjin"))
//
//print(sayGreet0("Bumjin0"))
//print(sayGreet1("Bumjin1"))
//print(sayGreet2("Bumjin2"))
//print(sayGreet3("Bumjin3"))
//print(sayGreet4("Bumjin4"))
//

var names = ["apple", "lemon", "brown", "red", "band", "candy","air"]

// filter a로 시작, b로 시작

func filterString(datas: [String], firstString: String) -> [String]{
    var newDatas = [String]()
    for index in 0..<datas.count{
        if datas[index].first?.description == firstString{
            newDatas.append(datas[index])
        }
        
    }
    
    return newDatas
}
//
//print(filterString(datas: names, firstString: "a"))

func filterStringClosure(datas: [String], closure:(String) -> Bool) -> [String]{
    var newDatas = [String]()

    for data in datas{
        if closure(data) == true {
            newDatas.append(data)
        }
    }
    
    return newDatas
}


let filtered = filterStringClosure(datas: names) { (element) -> Bool in
    if element.first?.description == "b" {
        return true
    }
    return false
}
//print(filtered)


var findA: (String) -> Bool = { element in
    if element.first?.description == "a"{
        return true
    }
    return false
}
var findB: (String) -> Bool = { element in
    if element.first?.description == "b"{
        return true
    }
    return false
}
var stringLength5: (String) -> Bool = { element in
    if element.count == 5{
        return true
    }
    return false
}

filterStringClosure(datas: names, closure: findA)

filterStringClosure(datas: names, closure: findB)

filterStringClosure(datas: names, closure: stringLength5)


func greeting(name: String) -> String {
    return "hi " + name
}

greeting(name: "Bumjin")


func greetingClosure(name: String) -> () -> String {
    return { "hi " + name }
}

greetingClosure(name: "Bumjin")()


enum ImageType {
    case none
    case jpg
    case png
    case gif
}

var imageType = ImageType.jpg



func plusGeneric<T: Numeric>(a: T, b: T) -> T{
    return a + b
}

plusGeneric(a: 10, b: 10.5)

