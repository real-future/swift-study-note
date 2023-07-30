import Foundation



//--------------------------------
/*
 class ClassName: SuperClassName {
 
 }
 
 
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
}

let c = Circle(name: "Circle")
c.radius

c.name
c.draw()


//-----------------------------------
/*
 final class
 //상속이 금지된 클래스
 
 final class ClassName: SuperClassName {
 }
 
 */


final class Rectangle: Figure {
    var width = 0.0
    var height = 0.0
}

//class Square: Rectangle {
    
//}
 // 상속 불가능. 왜냐면 부모클래스가 final class
