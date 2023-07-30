import Foundation


class Figure {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    func draw() {
        print("draw \(name)")
    }
}

class Rectangle: Figure {
    var width = 0.0
    var height = 0.0
    
    override func draw() {
        super.draw()
        print("⬛️\(width) x \(height)")
    }
}

class Square: Rectangle {
    
}

let f = Figure(name: "Unknown")
f.name

let r = Rectangle(name: "Rectangle")
r.width
r.height
r.name

let s: Figure = Square(name: "Squre")
s.name
//s.width
//s.height //업캐스팅으로 인해 Figure class속성만 접근 가능


let downcastedS = s as! Square
downcastedS.name
downcastedS.width
downcastedS.height

class Rhombus: Square {
    var angle = 45.0
}

//let dr = s as! Rombus
