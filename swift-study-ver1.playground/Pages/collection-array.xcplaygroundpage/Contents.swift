/*
 collection
 
 foundation collection <-> swift collection
 class로 구현              구조체로 구현
                        값형식 ( 값을 사용할 때마다 복사되는 형식)
 */

import Foundation

Int.max

let nums = [1, 2, 3]

let multi = [[1,2,3],[4,5,6]] //🚀2차원 배열


//-----------------------------
//Array type

let nums2 = [1,2,3]
let emptyArray: [Int] = []
let empyArray2 = Array<Int>()
let emptyArray3 = [Int]()

let zeroArray = [Int](repeating: 0, count: 10)

//------------------------------------
// inspecting an array

nums.count
nums.count == 0
nums.isEmpty //🚀 위보단 이렇게 하는게 좀 더 간결

//----------------------------------------
// accessing elements

let fruits = ["Apple", "Banana", "Melon"]
fruits[0]
fruits[2]
fruits[0...1]
fruits[fruits.startIndex]
fruits[fruits.index(before: fruits.endIndex)]

fruits.first
fruits.last //🚀인덱스를 계산할 필요가 없으니 좀 더 편하다



let list = ["A", "B", "C", "D", "E"]
list[0...2]

list[2...] //🚀반복문에서는 upperbound 범위 때문에 오류나는데, 배열에서 사용하면 안전해
list[...2]
list.prefix(333)
list.prefix(upTo: 3)
list.prefix(through: 3)


let r = list.prefix{ $0 != "C" } //🚀 요소가 c와 같지 않을 때까지 계속 추출
r

list.suffix(3) //뒤에서 세개
list.suffix(from: 3) //3번 인덱스부터 끝까지
