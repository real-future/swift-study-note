import Foundation
//string basics

var str = "Hello, swift string"
var emptyStr = ""
emptyStr = String()

let a = String(true)
let b = String(12)
let c = String(12.34)
let d = String(str)

let hex = String(123, radix: 16)

let repeatStr = String(repeating: "👏", count: 7)

let clap = "\u{1f44f}" //🚀 유니코드 스칼라

let e = "\(a) \(b)"
let f = a + b // 🚀 string 은 + 연산자만 가능

str += "!!" //복합연산자로 스트링 뒤에 넣을 수 있어.

str.count
str.count == 0
str.isEmpty

str == "Apple"
"apple" != "Apple" //🚀 대소문자 구분없이 비교하는 것은 뒤에서 배울 것이다.

"apple" < "Apple" // 🚀 아스키 코드

str.lowercased() // 🚀 원본은 그대로 둔 채로 새로운 값을 리턴해
str.uppercased() // 🚀 원본은 그대로 둔 채로 새로운 값을 리턴해
str.capitalized // ☠️? 왜 안나오지

for char in "hello" {
    print(char)
}
