import Foundation

/*:
 # Type Casting
 */

class Figure {
   let name: String
   
   init(name: String) {
      self.name = name
   }
   
   func draw() {
      print("draw \(name)")
   }
}

class Triangle: Figure {
   override func draw() {
      super.draw()
      print("🔺")
   }
}

class Rectangle: Figure {
   var width = 0.0
   var height = 0.0
   
   override func draw() {
      super.draw()
      print("⬛️ \(width) x \(height)")
   }
}

class Square: Rectangle {
   
}

class Circle: Figure {
   var radius = 0.0
   
   override func draw() {
      super.draw()
      print("🔴")
   }
}

let num = 123
num is Int
num is Double
num is String

let t = Triangle(name: "Triangle")
let r = Rectangle(name: "Rectangle")
let s = Square(name: "Square")
let c = Circle(name: "Circle")

r is Rectangle
r is Figure
r is Square //타입체크는 런타임에 이루어진다.

//-----------------------------
//Type casting operator

let nsstr = "str" as NSString
//"str" as Int //❌

t as? Triangle

var upcasted: Figure = s
upcasted = s as Figure

upcasted as? Square
upcasted as! Square
upcasted as? Rectangle
upcasted as! Rectangle

upcasted as? Circle
//upcasted as! Circle 앱스토어에 올라가는 코드에 이거 사용하지마

if let c = upcasted as? Circle {
    
}

let list = [t, r, s, c]

for item in list {
    if let c = item as? Circle {
        c.radius
    }
}
//다형성....
