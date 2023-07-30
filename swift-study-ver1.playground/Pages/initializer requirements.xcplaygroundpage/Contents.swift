
import Foundation

/*
 initializer requirements
 
 문법)
 protocol ProtocolName {
 init(param)
 init?(param)
 init!(param)
 }
 */

protocol Figure {
    var name: String { get }
    init(name: String)
    
}

struct Rectangle: Figure {
    var name: String
}

//--------------------------------
protocol Figure2 {
    var name: String { get }
    init(n: String)
    
}

struct Rectangle2: Figure2 {
    var name: String
    init(n: String) {
        name = n
    }
}

class Circle: Figure2 {
    var name: String
    required init(n: String) { //클래스는 상속을 고려해야하고, 모든 서브클래스에서 프로토콜의 요구를 충족해야해. 그래서 반드시 required 키워드를 붙여야해.
        name = n
    }
}

final class Triangle: Figure2 { //final 키워드를 붙이면 더이상 상속이 안되니까, required 키워드를 붙이지 않아도돼.
    var name: String
    init(n: String) {
        name = n
    }
}

class Oval: Circle {
    var prop: Int
    
    init() {
        prop = 0
        super.init(n: "Oval")
    }
    required convenience init(n: String){
        self.init()
    }
}

//--------------------------
protocol Grayscale {
    init?(white: Double)
}
struct Color: Grayscale {
    init(white: Double) { //? 붙어도돼
    }
}
