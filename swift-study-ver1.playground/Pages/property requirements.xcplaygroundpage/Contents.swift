
import Foundation

/*
 property kSecCodeInfoRequirements

 문법)
 protocol ProtocolName {
    var name: Type { get set }
    static var name: Type { get set }
 }
 */
//1️⃣읽기 전용
protocol Figure {
    var name: String { get } //읽기전용
}
struct Rectangle: Figure {
    let name = "Rect"
}

struct Triangle: Figure {
    var name = "Triangle"
}

struct Circle: Figure {
    var name: String {
        return "Circle"
    }
}

//2️⃣쓰기 전용

protocol Figure2 {
    var name: String { get set } //읽기전용
}
struct Rectangle2: Figure2 {
    var name = "Rect" //위와는 다르게 변수 저장속성으로 변경해야해.
}

struct Triangle2: Figure2 {
    var name = "Triangle"
}

struct Circle2: Figure2 {
    var name: String {
        get {
            return "Circle"
        }
        set {

        }
    }
}

//3️⃣

protocol Figure3 {
    static var name: String { get set } //이제 형식속성으로 선언해야해.
}
struct Rectangle3: Figure3 {
    static var name = "Rect"
}

struct Triangle3: Figure3 {
    static var name = "Triangle"
}

class Circle3: Figure3 {
    class var name: String { //static 과 class모두 요구사항을 충족
        get {
            return "Circle"
        }
        set {

        }
    }
}
