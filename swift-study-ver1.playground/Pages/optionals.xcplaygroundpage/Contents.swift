//

let stock: Int = 0 // non optional type, :는 type annotation

print(stock)



// ------------------------------

let stock1: Int? = nil //🚀nil 은 값이 없다라는 뜻. nil은 타입이 없다.


//---------------------------------

let str: String = "Swift" //non optional type이라 항상 값을 가져야해. nil 을 갖지 못해.

let optionalStr: String? = nil

let a: Int? = nil
let b = a
b

let c: Optional<Int> = nil // line20과 똑같아

//------------------------------------------
//unwrapping = 값을 추출한다.

var num : Int? = nil
print(num)

num = 123
print(num)



let n = 123
print(n)

//------------------------------------------
//강제로 추출하는 방법 ㅣ forced unwrapping : !
//필요할 때만 제한적으로 사용해야해

var num2 : Int? = 123


print(num2)
print(num2!) // 123이라고 출력됨.

num2 = nil
//print(num!) // Fatal error

if num2 != nil {
    print(num2!)
} //위의 fatal error을 방지하기 위해 이처럼 안전하게 코드를 짜야해.

//------------------------------------------

num = 123
let before = num
let after = num!

//before는 Int?
//after는 Int


//---------------------------------------------

/* nil이 저장되어 있으면 바인딩에 실패
    while문은 다음문장으로 넘기기
    guard문에서는 else 블록이 실행돼. scope가 거기서 끝나.
*/

var num1 : Int? = 123

//1️⃣
if let n = num1 {
    //   🚀 num1 = 456 값을 바꿀 수 없기 때문에 이런 코드도 에러. 바꾸고 싶으면 앞에 let을 var로 바꾸고 사용
    print(num1)
}
    
    //1️⃣-1. 상수의 이름이 같아도 돼. 이럴 때는 뒤의 = num1도 생략할 수 있어. 1-2참고.
    if let num1 = num1 {
        print(num1)
    }
    
    //1️⃣-2. 상수의 이름이 같아도 돼. 이럴 때는 뒤의 = num1도 생략할 수 있어. 1-2참고.
    if let num1 {
        print(num1)
    }
    
    //2️⃣ 1과 비교해보면 위는 바인딩, 아래는 강제 추출
    if num != nil {
        print(num!)
    }
    
    
    var str1: String? = "Swift"
    guard let str1 else {
        str1
        fatalError() //🚀debugging 공부할 때 다시 이해해보기.
    }
    
    
    str1
    
let d: Int? = 12
let e: String? = "strsldkfj"

if let d, let e, e.count > 5 {
    print(d)
    print(e)
}
