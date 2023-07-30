//function : 특정기능을 수행하는 코드 조각
//  장점 : 재사용 가능

func sayHello() {
    print("hello, swift")
}

sayHello() // 🚀 이부분을 Call-site / Caller라고 한다.





//--------------------------------
//return values

func add() -> Int {
    return 1 + 2 //🚀 return 생략가능 (조건 : 리턴 타입이 선언 되어 있고, 함수 바디에 리턴문 하나만 있을때)
}

let r = add()

if add() == 3 {
    print("three")
}


//-------------------------------

func printRandomEvenNumber() {
    let rnd = Int.random(in: 1...100)
    
    if !rnd.isMultiple(of: 2){
        return
    }
    print(rnd)
}

printRandomEvenNumber()
