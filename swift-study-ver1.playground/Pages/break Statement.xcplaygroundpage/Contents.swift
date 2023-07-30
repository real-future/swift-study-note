//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


let num = 1

switch num{
case 1...10 :
    print("begin block")
    
    if !num.isMultiple(of: 2) {
        break
    }
    print("end block")
default :
    break
}
print("done")


//-------------------

for index in 1...10 {
    print(index)
    
    if index > 1 {
        break
    }
}

//-------------

for i in 1...10 {
    print("OUTER LOOP", i)
    
    for j in 1...10 {
        print("inner loop", j)
        
        if j > 1 {
            break
        }
    }
}
