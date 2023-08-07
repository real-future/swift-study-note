
import UIKit

/*
 고차함수
 */

let names = ["kim", "lee", "min", "john"]

//map -> 원하는 스타일로 변경 (길이는 같다)
let names2 = names.map { name in
    name + "님"    //return 생략 가능
}

let names2_1 = names.map { $0 + "님" }   //return 생략 가능


names2

let names3 = names.map{ name in
    name.count
}

let names4 = names.map{ name in
    name.count > 3
}




//filter -> 거른다.
let filterNames = names.filter{ (name) -> Bool in
    name.count > 3
}
filterNames

let filterNames_2 = names.filter{ $0.count > 3 }
filterNames_2




//reduce 하나로 뭉친다. 통합한다. 합친다.
let sumName = names.reduce("하이") { (first, second) in
    return first + second
}

let sumName2 = names.reduce("하이") { $0 + $1 }
sumName2

let numberArr = [1, 2, 3, 4, 5]
let sumNum = numberArr.reduce(0) { $0 + $1 }
sumNum


//compactMap
//일단 reduce의 경우,
let arr = [nil, 1, 2, 3, 4, 5, nil, 6, nil, 8]
let sumNum3 = arr.reduce(0) { $0 + ($1 ?? 0) }
sumNum3


//compactMap의 경우,
let numbers = arr.compactMap { (num) in
    return num
}
numbers

let numbers_2 = arr.compactMap { $0 }
numbers_2





// flatmap
let arrArr = [[1,2,3], [4,5,6]]

let flatNum = arrArr.flatMap { $0 }
flatNum



//first
let arrArr2 = [[1,2,3], [4,5,6]]

arrArr2.first { <#[Int]#> in
    <#code#>
}

//계산 프로퍼티
arrArr2.first

/*
 (고차함수가 될 수 있는 조건 3)
 - 함수 파라미터 안에 함수를 넣을 수 있다. (클로저)
 - 함수를 반환할 수 있어야하고
 - 함수 내부에서 다른 함수를 호출할 수 있어야해.
 
 트래블링 클로저 후행 ㅇㅋ...
 */



