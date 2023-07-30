import Foundation

//저장속성
//타입 안에서 변수와 상수를 선언하면 속성이 된다.
/*
 저장속성은 클래스와 구조체에 추가할 수 있으며, 인스턴스와 연관된 속성이다. 그래서 인스턴스를 만들 때 마다 속성을 저장할 메모리 공간이 새로 만들어진다. 바꿔말해, 속성에 저장하는 값은 인스턴스마다 다르다.
 
 */


class Person {
    let name: String = "Jone Doe" //바꿀 수 없어.
    var age: Int = 33 //언제든 바꿀 수 있어.
}

let p = Person()
p.name //🚀점문법, explicit Member expression
p.age

p.age = 35
p.age //🚀var 로 선언했기 때문에 변경 가능


struct Person2 {
    let name: String = "Jone Doe" //바꿀 수 없어.
    var age: Int = 33 //언제든 바꿀 수 있어.
}

var q = Person2() //🚀구조체의 가변성은 속성의 가변성에 영향을 준다. 구조체의 속성을 바꾸고 싶으면, 인스턴스도 let이 아니라 var 로 선언해야해.
q.name
q.age

q.age = 35
q.age



//----------------------------------------------
//Lazy Stored Properties : 지연 저장 속성
/*
 -저장 속성이 초기화 될 때에는 ? 인스턴스가 초기화 되는 시점.
 -지연 저장 속성이란? 초기화를 지연시키는 것.
 -지연 저장 속성이 초기화 될 때는 ? 속성에 처음 접근하는 시점에 초기화가 된다.
 
 */


struct Image {
    init() {
        print("new image")
    }
}

struct BlogPost {
    let title: String = "title"
    let content: String = "content"
    let attachment: Image = Image()
}

let post = BlogPost() //지금처럼 attachment를 저장속성으로 선언하면, 인스턴스가 초기화되는 시점에 새로운 이미지 인스턴스가 attachment 속성에 저장됨.





struct BlogPost2 {
    let title: String = "title"
    let content: String = "content"
    lazy var attachment: Image = Image()
    let date: Date = Date()
    lazy var formattedDate: String = { //🚀그냥 var로는 안돼
        let f = DateFormatter()
        f.dateStyle = .long
        f.timeStyle = .medium
        return f.string(from: date)
    }()
}

var post2 = BlogPost2()
post2.attachment //이렇게 속성을 처음 접근하는 시점에, 우리가 처음에 만들었던 생성자가 호출되고 프린트 함수가 호출된다.

post2.formattedDate
