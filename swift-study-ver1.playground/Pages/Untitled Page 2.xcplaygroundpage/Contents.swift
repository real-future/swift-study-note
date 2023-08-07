//: [Previous](@previous)

import UIKit

//var greeting = "Hello, playground"

//: [Next](@next)

let name = "Steve" //암시적
let name2: String = "Musk" //명시적

//옵셔널
var number: Int? = 3
var age: Int? = nil
//null vs nill
//null은 메모리에 객체를 가리키는 포인터가 없음
//객체가 없다. -> 접근하는 순간 에러
//nullPointerException

var optionalName: String?
print(optionalName)


//nil은 값이 없는 상태를 나타내는 키워드
var str = "" //이건 값이 있는 거야.

//?타입으로 선언 -> 간략화된 표현임
//생략을 안 한다면
let num1: Int? = 2 //간편 표기
let num2: Optional<Int> = 3 //정식문법
//타입을 들여다보면 enum타입이다.

 
Optional.none == nil //Optional.none -> 객체가 생성이 된 것. 메모리 자체에 객체가 없는게 아니라. 생성이 되었는데 값이 없음을 표현하고 있는 것이다.
 // 그 증거는!

func address(of object: UnsafeRawPointer) -> String{
    let address = Int(bitPattern: object)
    return String(format: "%p", address)
    
}
var optionalName1: String?
var optionalName2: String?

address(of: &optionalName1)
address(of: &optionalName2) //둘이 다른 객체이다.

var num3: Int? = 3

switch num3 {
case.none:
    print("nil")
case.some(let wrapped):
    print(wrapped)
}


//옵셔널 언래핑
let srt: String? = "hello"

//강제 언래핑(!) -> 실무에서는 안 써.
print(srt!)

//nil이 맞는지 아닌지를 판단
if srt != nil {
    print(srt!)
}

//if let 바인딩
//바인딩이 된다면 특정 작업을 하겠다.
if var s = srt {
    s = "ddd"
    print(s)
}


//nil coalescing 더 큰 덩어리로 합친다.
//??
var string2 = srt ?? "bye"
print(string2)

//옵셔널 사이의 연산
var numberOne: Int? = 3
var numberTwo: Int? = 5
print()









