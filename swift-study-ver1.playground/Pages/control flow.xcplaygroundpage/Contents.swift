//: [Previous](@previous)

import UIKit
var greeting = "Hello, playground"

//: [Next](@next)

let name = "1223452"

for char in name {
    print( ( Int(String(char)) ?? 0 ) * 10 )
}

//------------------

let name2 = ["lee", "kim", "min"]

for name in name2 {
    print(name)
}

//-------------------

let numberOfLegs = ["ant" : 6, "dong" : 4]

for dic in numberOfLegs {
    print(dic)
}



