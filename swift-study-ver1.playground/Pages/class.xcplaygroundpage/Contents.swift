//: [Previous](@previous)

import UIKit

var greeting = "Hello, playground"

//: [Next](@next)

class MyInfo {
    
    init(gender: GenderType) {
        self.genderType = gender
    }
    
    enum GenderType {
        case male
        case female
    }
    
    var genderType: GenderType

    
    var name = ""
    var age = ""
    
    func isAdult() -> Bool {
        if age > 19 {
            return true
        }
        return false
    }
    
}

/*

클래스 : 프로퍼티와 메소드로 결합된 데이터 타입
 프로퍼티와 메소드를 가질 수 있어요. (둘 다 있을 필요는 없어요.)
 
 프로퍼티(속성)와 메소드(함수인데 클래스 안에 있으면 메소드라고 구분해서 부름)가 뭔지 아시죠?
 프로퍼티는 객체가 가질 수 있는 속성이나 특성이에요.
 프로퍼티는 크게 4가지로 나뉘어져요. 저장 프로퍼티, 지연 저장 프로퍼티, 계산 프로퍼티(계산해서 제공), 타입프로퍼티가 있다.
 

 class 사람 {
 이름 :
 나이 :
 
 func 잔다.
 }
 
 
 초기화 = 정체성부여
 
1. 상속 : 부모클래스에 있는 프로퍼티와 메소드를 물려받는거에요.
2. 타입캐스팅(다운캐스팅, 업캐스팅) :
 3. 참조형식 :
 
 참고로 구조체는 1, 2, 안되고, 참조형식 아니고 값형식
 
 클래스의 초기화를 알아볼 거.
 초기화는 왜 필요한 거야?
 
 
 초기화를 해야 인스턴스가 생성돼.
 클래스에서는 init키워드로 초기화를 해.
 하지만 init키워드로 안 해도 되는 경우가 있어.
 
 프로퍼티를 선언할 때에 값을 미리 할당해두면 그건 이미 정체성을 부여해준거니까 안해도돼.
 
 
 */
