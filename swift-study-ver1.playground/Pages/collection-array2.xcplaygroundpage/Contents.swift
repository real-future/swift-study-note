
import Foundation

/*
 adding elements
 
 */

var alphabet = ["A", "B", "C"]
alphabet.append("E")

var mutablealphabet = ["A", "B", "C"]
mutablealphabet.append("E")
mutablealphabet.append(contentsOf: ["F", "E"])
mutablealphabet.insert("D", at: 3)

mutablealphabet.insert(contentsOf: ["a", "b", "c"], at: 0) //🚀오버헤드 발생



//-------------------------------
//배열비교, 요소검색, 정렬
//베열의 동일성은 비교할 수 있지만, 크기나 순서는 비교 못해.

let a = ["A", "B", "C"]
let b = ["a", "b", "c"]

a == b
a != b

//🚀메소드로 비교할 때
a.elementsEqual(b)
a.elementsEqual(b, by: { (lhs, rhs) -> Bool in
    return lhs.caseInsensitiveCompare(rhs) == .orderedSame
})
//🚀위의 코드랑 똑같음. 문법 최적화.
a.elementsEqual(b, by: { $0.caseInsensitiveCompare($1) == .orderedSame })



//-----------------------------------
//finding elements

let randomNumbers = [1,2,3,4,5,6,7,8,0]

randomNumbers.min()

a.min()


randomNumbers.max()

randomNumbers.max(by: { $0 < $1 })

randomNumbers.contains(1)

let r3 = randomNumbers.contains { $0.isMultiple(of: 2)}

r3

randomNumbers.firstIndex(of: 3)

let c = randomNumbers.firstRange(of: randomNumbers)
a

randomNumbers.firstIndex { $0.isMultiple(of: 3)}

randomNumbers.firstIndex(of: 7)

randomNumbers.lastIndex(of: 5)



//---------------------------------------
//두가지가 있어. 원본을 정렬하는 것과 복사본을 정렬하는 것.

randomNumbers.sorted()
randomNumbers
let sorted = randomNumbers.sorted { $0 > $1 } //🚀새로운 복사본을 만들고 오름차순으로 정렬해서 알려줘.


sorted //따라서 randomNmbers는 그대로이고, sorted만 바뀜
randomNumbers



randomNumbers.sorted().reversed() //얘는 복사본 안 만들고 원본을 바꾸.

let reveredSorted = [Int] (randomNumbers.sorted().reversed()) //생성자로 전달해서 새로 만들어줘야해.

//❌randomNumbers.sort() //🚀tip : ed는 복사본을 만들고, ed가 없으면 원본을 바꾼다. 따라서 var로 선언해야해.지금 원본은 let으로 선언되어 있기 때문에 변경이 안되는 것이다.

var mutableNums = randomNumbers

mutableNums.sort()
mutableNums.reverse()

mutableNums
mutableNums.swapAt(0, 1)

mutableNums.shuffle()
mutableNums.shuffled()
