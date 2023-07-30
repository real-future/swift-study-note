import Foundation

/*
 comparing strings
 
 
 */

let bigA = "Apple"
let smallA = "apple"
let b = "Banana"

bigA == smallA
bigA != smallA

bigA < smallA

("A" as Character).asciiValue
("a" as Character).asciiValue

bigA < b

smallA < b

bigA.compare(smallA) == .orderedSame
bigA.caseInsensitiveCompare(smallA) == .orderedSame
bigA.compare(smallA, options: [.caseInsensitive]) == .orderedSame


//-----------------------------------------
//finding substrings


let str = "Hello, swift"
str.contains("swift")

str.lowercased().contains("swift")

str.range(of: "swift", options: [.caseInsensitive])

let str2 = "Hello, programming"

let str3 = str2.lowercased()

var common = str.commonPrefix(with: str2)
common = str.commonPrefix(with: str3)
common = str.commonPrefix(with: str3, options: [.caseInsensitive])
