/*
 protocol : 타입에서 공통적으로 제공하는 멤버 목록
 - 타입에서 구현해야하는 멤버가 선언되어 있고,실제 구현은 포함되어 있지 않다.
 - 프로토콜은 요구사항 정의서이다.
 - 요구사항에 따라 타입을 만드는 과정을 '프로토콜을 따른다, 프로토콜을 채용하고 있다.'라고 표현한다.
 
 선언 문법)
 protocol ProtocolName {
    propertyRequirements
    methodRequirements
    initializerRequirements
    subscriptRequirements
 }
 
 protocol ProtocolName: Protocol, ''' {
 
 } // 클래스는 다중상속이 안되지만 프로토콜은 두개 이상 상속 가능
 */

protocol Something {
    func doSomething()
}

/*
 adopting protocols
 
 문법)
 enum TypeName: ProtocolName, ''' {
 }
 
 struct TypeName: ProtocolName, ''' {
 }
 
 class TypeName: SuperClass, ProtocolName, ''' {
 }
 
 
 */

struct Size: Something {
    func doSomething() {
        //자유롭게 작성하면 된다.
    }
    
    
}



//--------------------------------
/*
 class-only protocols
 
 문법)
 protocol ProtocolName: AnyObject {
 }
 */

protocol SomethingObject: AnyObject, Something {
    
}

//struct Value: SomethingObject {
//
//} //class전용이라 불가능

class Object: SomethingObject {
    func doSomething() {
        //자유롭게
    }
}
