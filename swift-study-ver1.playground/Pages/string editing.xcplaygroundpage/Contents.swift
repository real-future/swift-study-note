import Foundation

var str = "Hello"
str.append(", ")
str

let s = str.appending("Swift")
str
s

//"File size: ".appendingFormat("%.1f", 12.345)☠️


//------------------------------
//중간에 문자열 추가할 때는 insert
var str1 = "Hello Swift"
str1.insert(",", at: str1.index(str1.startIndex, offsetBy: 5))

if let sIndex = str1.firstIndex(of: "S") {
    str1.insert(contentsOf: "Awesome ", at: sIndex)
}

//-------------------------------------

var str2 = "Hello, objective-c"


if let range = str2.range(of: "objective-c") {
    str2.replaceSubrange(range, with: "Swift")
}

str2


if let range = str2.range(of: "Hello"){
    let s = str2.replacingCharacters(in: range, with: "hi")
    s
}

var f = str2.replacingOccurrences(of: "Swift", with: "Awesome Swift") //🚀대소문자 꼭 지켜야해

var p = str2.replacingOccurrences(of: "Swift", with: "Awesome Swift", options: [.caseInsensitive]) //🚀대소문자 안지켜도 돼


//----------------------------------
//removing substrings

var str3 = "Hello, Awesome Swift!!!"

let lastCharIndex = str3.index(before: str3.endIndex)

var removed = str3.remove(at: lastCharIndex)

removed
str3

removed = str3.removeFirst()
removed
str3

str3.removeFirst(2)
str3

//if let range = str3.ranges(of: "Awesome") {
//    str3.removeSubrange(range)
//    str3
//}
//
//str3.removeAll()
