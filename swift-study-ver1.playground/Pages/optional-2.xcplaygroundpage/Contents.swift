//: [Previous](@previous)

import UIKit

var greeting = "Hello, playground"

//: [Next](@next)

/*
 optional (옵셔널)
 값이 있을 수도 있고, 없을 수도 있다.
 
 
 
 */

var myAge: Int? = 0

myAge = nil

// 값이 없는 상태 체크 -> 틀린 로직 (Swift 언어 스펙)
if myAge == 0 {
    //alert - 나이를 입력해 주세요.
}

if myAge == nil {
    //alert - 나이를 입력해 주세요.
}


var myName: String? = "" //빈 스트링

if myName == "" {
    //이름을 입력해주세요.
}

//값이 없는 상태 체크
if myName == nil {
    // 이름 값이 없음.
}


 
//그냥 사용할 수 없는 경우가 많이 있음.

var c: Int? = 10
var d: Int? = 20

// unwrapped
// unwrap

//coalesce
var sum2 = (c ?? 0) + (d ?? 0) //값이 없을 땐 0으로 해라.

// force unwrap -> 강제로, 힘으로
// 주의사항 : 사용을 할거면 정말 값이 무조건 있어야해.
var sum3 = c! + d!


// unwrapping
// if statements

if c != nil {
    print(c!)
}

//if let
//if var

if let hasNumber = c {
    print(hasNumber)
}

if var hasNumber = d {
    hasNumber = hasNumber * 2
    print(hasNumber)
}


//guard let
//guard var




