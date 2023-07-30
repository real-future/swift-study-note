import Foundation


/*
 ovveriding : 재정의
 
 
 */


class Figure {
    var name = "Unknown"
    
    init(name: String) {
        self.name = name
    }
    func draw() {
        print("draw \(name)")
    }
}
class Circle: Figure {
    var radius = 0.0
    
    var diameter: Double {
        return radius * 2
    }
    
    override func draw() {
        super.draw()
        print("🔴")
    }
}

let c = Circle(name: "Circle")
c.draw()

class Oval: Circle {
    override var radius: Double {
        willSet {
            print(newValue)
        }
        didSet {
            print(oldValue)
        }
    }
    
    override var diameter: Double {
        get {
            return super.diameter
        }
        set {
            super.radius = newValue / 2
        } //읽기 전용속성을 읽기와 쓰기가 가능하도록 오버라이딩 가능.
    }

}

let o = Oval(name: "Oval")
o.radius
o.radius = 12
o.draw()
