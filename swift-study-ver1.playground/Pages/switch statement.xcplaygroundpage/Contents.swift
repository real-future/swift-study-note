

let num = 1

switch num {
case 1:
    print("one") //🚀비워두면 안된다. 적어도 1줄
case 2, 3: //🚀2,3 : 2나 3이라는 뜻
    print("two or three")
default:
    print("others") //🚀비워두면 안된다. 비워두고 싶으면, break만 추가
}


//Interval Matching

let temperature = Int.random(in: -10...30)

switch temperature {
case ...10:
    print("cold")
case 11...20:
    print("cool")
case 21...27:
    print("warm")
case 28...:
    print("hot")
default:
    break
}



//Fall Through

//let attempts = 10
//
//switch attempts {
//case ...9:
//    print("warning")
//case 10:
//    print("locked")
//    print("send warning email")
//default:
//    print("send warning email")
//}


let attempts = 10

switch attempts {
case ...9:
    print("warning")
case 10:
    print("locked")
    fallthrough //🚀경우에 따라 버그가 발생할 수 있음
default:
    print("send warning email")
}
