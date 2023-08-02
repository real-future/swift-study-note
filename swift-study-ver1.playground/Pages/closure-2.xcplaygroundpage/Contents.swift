//: [Previous](@previous)

import UIKit

var greeting = "Hello, playground"

//: [Next](@next)

var names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

//sort
names.sort { (lhs, rhs) -> Bool in
    return lhs > rhs
}

names.sort(by: { $0 < $1 } )

names.sort() { $0 > $1 }

names.sort { $0 < $1 }//throw는 errorhandling에서 배울거야

names.sort(by: < )
