
import Foundation


/*
 self
 self.propertyName
 self.method()
 self[index]
 self.init(parameters)
 
 self는 인스턴스에 접근하는 특별한 속성이다.
 self를 타입 멤버에서 사용하면 타입 자체에 접근한다.
 */

class Size {
    var width = 0.0
    var height = 0.0
    
    func calcArea() -> Double {
        return width * height
    }
    var area: Double {
        return calcArea()
    }
    func update(width: Double, height: Double) {
        self.width = width //1️⃣셀프를 반드시 써야하는 경우 (속성의 파라미터를 쓸 때)
        self.height = height //셀프를 반드시 써야하는 경우
    }
    func doSomething() {
        let c = { self.width * self.height} //2️⃣클로저에서 인스턴스 멤버에 접근하려면 반드시 self를 써야해
    }
    static let unit = ""
    
    static func doSomething() {
//        self.height // ❌형식메소드에서 인스턴스 속성 접근 불가
        self.unit // 하지만 타입 속성 접근 가능, 타입끼리는 된다.
        unit// 이름만으로도 가능하다.
    }
}


//--------------------------------------------
//값형식에서 self 활용 예시

struct Size1 {
    var width = 0.0
    var height = 0.0
    
    mutating func reset(value:Double) {
//        width = value
//        height = value
        self = Size1(width: value, height: value) //self에 새로운 인스턴스를 저장하는 코드, 이렇게 하면 인스턴스가 새로운 인스턴스로 교체되는데, 속성을 새로운 값으로 바꾸는 거랑 결과는 똑같다. 이 패턴은 생성자를 사용할 수 있다는 장점이 있지만,클래스에서는 사용할 수 없고, 이렇게 값 형식에서만 사용할 수 있다.
    }
}


//------------------------------------------
//super속성

/*
 super.propertyName
 super.method()
 super[index]
 super.init(parameters)
 
 상속과 관련되어 있기 때문에 클래스에서만 사용
 
 
 */
