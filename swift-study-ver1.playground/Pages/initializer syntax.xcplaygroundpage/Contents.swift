import Foundation



class Position {
    var x: Double
    var y: Double
    
    init() {
        x = 0.0
        y = 0.0
    }  // 🚀 생성자는 초기화가 유일한 역할이야 중요해.
    
    init(value: Double){
        x = value
        y = value
    }
}

let a = Position()
a.x
a.y

let b = Position(value: 100)
b.x
b.y
