import Foundation

/*
 instance method
 메소드 : 메소드는 타입에 속한 함수이다.
 
 인스턴스 메소드는 클래스, 구조체, 열거형에서 구현할 수 있다.
 인스턴스 속성처럼 인스턴스에 연관된 기능을 구현하는 것이다.
 
 다른 인스턴스 멤버에 접근해서 이런저런 작업들을 하는 거니까 인스턴스마다 실행결과가 달라진다.
 
 함수는 함수의 이름으로 호출하지만, 메소드는 인스턴스 이름으로 호출해야한다.
 
 */

class Sample {
    var data = 0
    static var sharedData = 123
    
    func doSomething(){
        print(self.data)
        
//        sharedData // error
//        Sample.sharedData //인스턴스 메소드에서 타입멤버에 접근할 때에는 위가 아니라 아래처럼 타입멤버 이름으로 접근해야한다.
    }
    
    
    func call(){
        self.doSomething() //다른 인스턴스 메소드를 호출하고 있는데, 인스턴스 메소드는 다른 인스턴스 메소드에 접근할 때는 이렇게 셀프를 생략하고 이름만으로 접근할 수 있다.
    }
}

let a = Sample()
a.data

 
struct Size {
    var width = 0.0
    var height = 0.0
    
    mutating func enlarge() {
        width += 1.0
        height += 1.0
    }
}

var s = Size()
s.enlarge()
