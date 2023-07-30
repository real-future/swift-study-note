import Foundation


/*
 type method
 
 속성을 인스턴스 속성과 타입속성으로 구분하는 것처럼,
 메소드도 인스턴스 메소드와 타입 메소드로 구분합니다.
 
 타입메소드는 인스턴스 메소드가 아닌 타입에 속한 메소드이다.타입 메소드는 인스턴스 메소드와 마찬가지로, 클래스 구조체 열거형에서 모두 구현할 수 있어요.
 
 static : 오버라이딩 금지
 class : 오버라이딩 허용
 
 */

class Circle {
    static let pi = 3.14 //타입 속성
    var radius = 0.0 //인스턴스 속성
    
    //인스턴스 메소드
    func getArea() -> Double {
        return radius * radius * Circle.pi
        
    }
    //타입메소드
    static func printPi(){
        print(pi)
    }
}

Circle.printPi()
