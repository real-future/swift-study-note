import Foundation

/*
 user defined type
 
 Programming paradigm : 세부적인 구현방식이나 규칙
 
 object-oriented programming : 객체지향
 object : 객체 (모든 대상들)
 
 추상화 : 객체가 가진 여러가지 특징 중에서 프로그램에서 처리할 특징들을 도출하는 과정을 추상화
 
 클래스 : 추상화의 결과를 코드로 표현한 것. 객체의 특징과 상태는 속성으로 구현하고, 동작은 메소드로 구현해. 힐비에 저장하고 스택에는 주소만 저장해. 이것을 레퍼런스 형식, 참조 형식이라고 부른다.
 
 구조체 필요 이유 : 객체지향에서는 보통 클래스로 새로운 타입을 구현, 비교적 작은 데이터를 저장한다거나 값형식이 필요한 경우에만 구조체로 구현하고 있음. 클래스와는 다르게 객체라고 부르지 않고 값이라고 부른다.
 
 구조체는 스택에 값을 저장하고, 값을 전달할 때마다 새로운 복사본을 만들어. 이것을 value type, 값 형식이라고 함. ex. 열거형, 기본 자료형
 

 
 */


//-------------------------------------
// structure

struct Person {
    var name: String
    var age: Int
    
    func speak(){
        print("hello")
    }
}

let p = Person(name: "Steve", age: 50)

p.name
p.age

p.speak() //호출할 때 이름앞에 .이 있으면 메소드

//--------------------------------
//class
class Person2 {
    var name: String = "Steve"
    var age: Int = 50
    
    func speak(){
        print("Hello")
    }
}

let q = Person2()
q.name
q.age
q.speak()


//-------------------------------------

//구조체가 적합한 경우
