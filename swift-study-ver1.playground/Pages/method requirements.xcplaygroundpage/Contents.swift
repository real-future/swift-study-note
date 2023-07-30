
import Foundation


/*
 method requirements
 
 문법)
 protocol ProtocolName {
    func name(param) -> ReturnType
    static func name(param) -> ReturnType
    mutating func name(param) -> ReturnType
 }
 */

protocol Resettable {
    func reset()
}

class Size: Resettable {
    var width = 0.0
    var height = 0.0
    
    func reset() {
        width = 0.0
        height = 0.0
    }
}

//-----------------------------
protocol Resettable2 {
    mutating func reset()
}

struct Size2: Resettable2 {
    var width = 0.0
    var height = 0.0
    
    mutating func reset() {
        width = 0.0
        height = 0.0
    }
}

//---------------
protocol Resettable3 {
    static func reset() // type 메소드
}

class Size3: Resettable3 {
    var width = 0.0
    var height = 0.0
    
    func reset() {
        width = 0.0
        height = 0.0
    }
    class func reset() {
        //오버라이딩 허용
    }
}
