//

let s = "Hello, World"

let r = """
    sldkfjlweiroiudfjb, \
    lj dlkfj lwkje lkjf ld
        lkwje lkdj lfkj lj
""" //🚀위치가 중요해

print(r)

print("----------------------------------------")
//------------------------------
//문자열의 가변성

//let str = "Hello"
//str.append("Swift") // 🚀error : 상수여서 문자열 연결 함수도 불가능

var str = "Hello"
str.append("Swift")

print("----------------------------------------")
//----------------------


let c : Character = "C"

let d : Character = " " //🚀빈 문자를 저장하고 싶을 때는 공백을 꼭 넣어줘.

print("----------------------------------------")
//--------------------------------
// string interpolation

var st = "12.34KB"

let size = 12.34

st = String(size) + "KB" //🚀실수와 문자열은 바로 연결 못해. 따라서 실수를 문자열로 변환시켜서 연결해야해. 하지만 이렇게는 잘 표현 안 해. 아래처럼 작성.

st = "\(size)KB"

print("----------------------------------------")
//-----------------------------
//소수점 다섯자리 넘게 표현하고 싶다면


//☠️
//String(format: "%.5fKB", size)
//
//String(format: "hello, %@, "swift")
//
//String(format: "%d", 12)
//
//String(format: "%.3f", 12.34)


print("----------------------------------------")
//--------------------------------
//escape sequence

var e : String = "\\"
print(e)


print("A\tB")
print("A\nB")
print("\"Hello\" he said.")

print("----------------------------------------")
//------------------
//extended string delimeters

print(#""Hello" he said."#)
print(#""Hello" \#n he said."#) //🚀\n사이에 #넣어야 인식이 돼.

print(###""Hello" \###n he said."###) //🚀샵 개수 꼭 맞추기

let value = 123
print(#"The value is \#(value)"#)

let multiline = #"""
"Multiline"
String
Literal
"""#
print(multiline)

print("----------------------------------------")
//----------------------------------
//string indices

let str3 = "Swift"
str3.startIndex //type이 int가 아니라 string.index야.

let firstCh = str3[str3.startIndex]
print(firstCh)

let lastCharIndex = str3.index(before: str3.endIndex)
let lastCh = str3[lastCharIndex]
print(lastCh)

let secondCharIndex = str3.index(after: str3.startIndex)
let secondCh = str3[secondCharIndex]
print(secondCh)


let thirdCharIndex = str3.index(str3.startIndex, offsetBy: 2)
let thirdCh = str3[thirdCharIndex]
print(thirdCh)


//thirdCharIndex = str3.index(str3.endIndex, offsetBy: -2)
//thirdCh = str3[thirdCharIndex]
//print(thirdCh)

if thirdCharIndex < str.endIndex && thirdCharIndex >= str.startIndex {
    
}
