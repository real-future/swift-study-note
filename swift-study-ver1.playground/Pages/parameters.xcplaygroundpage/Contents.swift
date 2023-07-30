
func add(a: Int, b: Int) -> Int{
//    a = 12 // 🚀a 가 상수여서 바꿀 수 없는 에러 발생. 함수 파라미터는 임시 상수.
    return a + b
}


//-------------------------------

add(a: 12, b: 13) //🚀actual parameter 혹은 argument (위에 함수 속 파라미터는 formal parameter)


//------------------------------------

func sayHello(to: String = "stranger") {
    print("hello, \(to)")
    
}

sayHello(to: "swift")
sayHello() //🚀기본값으로 지정했던 stranger가 나온다.

//------------------------------------
//argument label : 함수 이름의 가독성을 높이기 위해 사용
// (name: Type)
//  (label name: Type)

func sayHello1(to name: String = "stranger") {
    print("hello, \(name)")
}

sayHello1(to: "swift")



//argument label 생략 ver. : _로 생략
func sayHello1(_ name: String = "stranger") {
    print("hello, \(name)")
}

sayHello1("swift")
