//: [Previous](@previous)

import UIKit

var greeting = "Hello, playground"

//: [Next](@next)

class MyInfo {
    
    init(gender: GenderType) {
        self.genderType = gender
    }
    
    enum GenderType {
        case male
        case female
    }
    
    var genderType: GenderType

    
    var name = ""
    var age = ""
    
    func isAdult() -> Bool {
        if age > 19 {
            return true
        }
        return false
    }
    
}
