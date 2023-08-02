
import UIKit

/*
 generic <Type내가 정한 임의 타입>
 로직, 반복, 타입 여러가지
 */

//stack
struct MyStack<MyType> { //내가 쓰고 싶은 임의의 타입으로 이름 만들어.
    var items = [MyType]()
    mutating func push(item: MyType) {
        items.append(item)
    }
    
    mutating func pop() -> MyType? {
        if items.isEmpty {
            return nil
        }
        return items.removeLast()
    }
}

var myStack = MyStack<String>()
myStack.push(item: "a")
myStack.pop()



var myStack2 = MyStack<Int>()
myStack2.push(item: 6)
myStack2.pop()



//제한
struct Stack<MyType> where MyType: Equatable{ //조건을 걸고 싶으면 where로 하면돼. String타입으로 제한하고 싶으면 StringProtocol 쓰면돼. 그냥 String은 struct type이라서 못 써.
    var items = [MyType]()
    mutating func push(item: MyType) {
        items.append(item)
    }
    
    mutating func pop() -> MyType? {
        if items.isEmpty {
            return nil
        }
        return items.removeLast()
    }
}

var Stack1 = Stack<String>()
Stack1.push(item: "a")
Stack1.pop()



var Stack2 = Stack<[String: Any]>() //보통 딕셔너리 밸류타입에는 any를 써

//지금 오류나. 왜냐면 딕셔너리는 Equatable를 준수하지 않아.


var Stack3 = Stack<MyInfo>()
struct MyInfo: Equatable {
    var name = ""
    var age = ""
}

