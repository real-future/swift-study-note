//: [Previous](@previous)

import UIKit

var greeting = "Hello, playground"

//: [Next](@next)

func myScore(a: Int) -> String {
    return "\(a)점"
}

let score = myScore(a:30)
score

var myName: String = "kim"



//closure
//생김새 눈에 익히기
//{(a: Int) -> return type in
//    return "\(a)점"
//}

let myScore2 = { (a: Int) -> String in
        return "\(a)점"
}

//축약 (생략)
let myScore3 = { (a: Int) -> String in
    "\(a)점"
}

let myScore4 = { (a: Int) in   //타입 추론이 가능하기 때문에 String 생략 가능
    "\(a)점"
}


let myScore5: (Int) -> String = { a in "\(a)점"
}

let myScore6: (Int, Int) -> String = { (a, b) in "\(a + b)점"}

myScore6(20, 30)

let myScore7: (Int) -> String = {
    return "\($0)점" //$ 쓰면 in 생략 가능.
}
myScore7(30)



//실제로 언제 쓰이는지.
// 조건 -> 찾는다 -> 특정한 글자가 포함된 것을 찾는다.
// 조건 -> 찾는다 -> 입력한 글자로 시작하는 첫글자를 찾는다. (세부항목)
let names = ["red", "yellow", "green", "purple", "blue", "pink", "orange"]



func someFind(find: String) -> [String] {
    var newNames = [String]()
    
    for name in names {
        if name.contains(find) {
            newNames.append(name)
        }
    }
    return newNames
}



someFind(find: "y")






//위의 코드를 고치면 리스크가 커. 아래처럼하면 시각적으로도 분류가 잘 돼. 수정하고 삭제하기 쉬워.

let containsSomeText: (String, String) -> Bool = { name, find in
    if name.contains(find) {
        return true
    }
    return false
}




let startSomeText: (String, String) -> Bool = { name, find in
    if name.first?.description == find {
        return true
    }
    return false
}


func find(findString: String, condition: (String, String) -> Bool) -> [String] {
    var newNames = [String]()
    
    for name in names {
        if condition(name, findString) {
            newNames.append(name)
        }
    }
    return newNames
}



find(findString: "a", condition: containsSomeText)
find(findString: "a", condition: startSomeText)



