import Foundation

// computed property : 계산 속성
/* computed 의 의미 : 다른 속성을 기반으로 속상값이 결정된다.
 저장속성은 메모리 값이 있지만, 계산 속성은 메모리 값이 없어. 다른 속성에 저장된 값을 읽어서 필요한 계산을 실행한 다음에 리턴하거나, 속성으로 전달된 값을 다른 속성에 저장하는 방식이다. 이런 특징 때문에 속성에 접근할 때마다 다른 값이 리턴될 수 있다. 이 말은 항상 var 로 선언해야 한다는 것이고, let으로는 선언할 수 없다.
 
 그리고 저장속성은 class와 구조체에 저장할 수 있는데, 계산 속성은 이 뿐만 아니라 열거형에도 추가할 수 있다.
 
 메모리 공간이 없어서 선언할 때에는 기본값을 저장할 수 없다. 그래서 형식 추론도 사용할 수 없다.
 
 */


class Person {
    var name: String
    var yearOfBirth: Int
    
    init(name: String, year: Int){
        self.name = name
        self.yearOfBirth = year
    }
    
    var age: Int {
        get{
            let calendar = Calendar.current
            let now = Date()
            let year = calendar.component(.year, from: now)
            return year - yearOfBirth
        }
        set { //🚀파라미터 이름 생략했기 때문에 newValue라는 이름으로 값에 접근할 수 있어.
            let calendar = Calendar.current
            let now = Date()
            let year = calendar.component(.year, from: now)
            yearOfBirth = year - newValue
        }
    }
}


let p = Person(name: "Jame", year: 2002)
p.age

p.age = 50
p.yearOfBirth


//-----------------------------------------------





class Person2 {
    var name: String
    var yearOfBirth: Int
    
    init(name: String, year: Int){
        self.name = name
        self.yearOfBirth = year
    }
    
    var age: Int { //🚀Int다음에 할당연산자=가 있으면 클로저를 저장한다는 의미, 만약 =없으면 계산속성
            let calendar = Calendar.current
            let now = Date()
            let year = calendar.component(.year, from: now)
            return year - yearOfBirth
    }
}


let o = Person2(name: "Jame", year: 2002)
o.age
