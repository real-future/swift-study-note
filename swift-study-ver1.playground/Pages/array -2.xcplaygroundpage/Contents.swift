import UIKit
/*
 배열
 배열의 특징 :
 - 배열은 저장한 순서대로 저장된다. (처음 저장한 것이 맨 앞)
 - 배열에는 동일한 타입의 값만 저장할 수 있다.
 - 배열을 만들 때에는 요소의 타입을 명시적으로 선언해야한다.
 - 똑같은 값을 여러번 저장할 수 있다. (같은 값이라고해서 동일한 요소는 아님.모두 다 독립적 요소)
 - 요소에 접근할 때에는 인덱스로 접근해야한다. (요소가 추가되거나 삭제되면 변동된다.)
 - 배열의 맨뒤가 변동되는 것은 괜찮지만, 만약 중간에 요소가 추가되면 나머지 요소 인덱스가 변동되기 때문에 오버헤드가 발생. (따라서 되도록이면 배열 마지막만 변동시키기)
 - 저장 가능한 요소의 수는 문법적으로는 제한이 없다. (메모리 공간에 제약이 있음. 저장된 값의 수를 리턴하는 속성이 Int로 선언되어 있으니 Int의 max값만큼 저장할 수 있다.)
  * 참고 : Int max값은 기기에 따라 달라짐. 32비트에서는 2^31, 64비트에서는 2^63
 - 배열 이름 지을 때 tip. 'array, list'와 같은 키워드를 사용하여 누가봐도 배열인지 알 수 있게끔!
 
문법 :
  [elem, elem, ...]
 
배열의 타입 지정 :
  Array<T> // generic type
  [T] // 여기서 T에는 타입 이름이 와. ex) String, Int, Double,,,,
 Array 만들기 :
 */

//🌟:문법

let numList = [1, 2, 3] //type : [Int]
let multi = [[1, 2, 3], [4, 5, 6]] //type : [[Int]]

//🌟:배열속의 배열 접근법
multi[0][0]

//🌟:배열의 타입 지정
let strArray: Array<String> //정식 문법
let strArray2: [String] //단축문법

//🌟:Array 만들기
let nums = [1, 2, 3] //프로그래밍 자체에서 자동으로 타입추론 가능. 따라서 뒤에 배열 만들어두면, 배열의 타입 지정 안 해도 돼.

//let emptyArray = [] // ☠️:에러 발생!:해적_표시: 배열 안에 값이 없으니 타입추론 불가능. 따라서 아래처럼 직접 지정해줘야해.


let emptyArray: [Int] = []
let emptyArray2 = Array<Int>()
let emptyArray3 = [Int]()



//------------------------------------------------
/*
 1. 📚:요소 개수 + 요소가 없을 때
  - count : 요소 개수
  - isEmpty : 요소 없나 확인 -> Bool
 
 2. 📚:요소에 접근하기
  - suffix : 뒤에서 접근 (개수, 조건)
  - prefix : 앞에서 접근 (개수, 조건)
  - 인덱스
 
 3. 🧑‍🔧:요소 추가하기 (개수 변동 o)
  - append : 끝에 추가
  - insert : 중간에 추가
 
 4. 🧑‍🔧:요소 변경하기
  - replaceSubrange : 범위에 해당되는 것들 바꿔치기
 
 5. 🧑‍🔧:요소 삭제하기
  - remove : 삭제
  - removeFirst : 앞 삭제
  - removeLast : 마지막 삭제
  - removeAll : 모든 요소 삭제
  - popLast : 마지막 삭제 (nil 반환 가능)
  - dropFirst : 복사본에서 삭제
  - drop : 복사본에서 삭제
 
 6. 📚:배열 비교하기
  - elementsEqual : 두개 배열 똑같나 -> bool
 
 7. Int배열에서 많이 활용하는 메소드
  - min : 최솟값
  - max : 최댓값
  - contains : 포함하고 있는지 -> Bool
  - first : 제일 앞 요소 접근
  - last : 제일 마지막 요소 접근
  - firstIndex : 조건 해당하는 첫 인덱스
  - lastIndex : 조건 해당하는 마지막 인덱스
 
 8. 🧹:배열 정렬하기
  - sort : 원본 정렬
  - sorted : 복사본 정렬
  - reverse : 원본 거꾸로
  - reversed : 복사본 거꾸로
  - swapAt : 서로 자리만 바꾸기
  - shuffle : 랜덤으로 섞기
 */

//------------------------------------------------
//<요소 개수, 비어있는지>

//✅:배열 저장된 요소 개수
nums.count

//✅:배열 비어 있는지
nums.count == 0
nums.isEmpty
emptyArray.isEmpty
//-----------------------------------------------
//<요소에 접근>
//첫 요소 접근 방법
let fruits = ["사과", "바나나", "멜론", "복숭아", "오렌지"]
//✅첫번째 요소에 접근하기
fruits[0] //방법 1 : 인덱스로 접근하기. 0부터 시작.
fruits[fruits.startIndex] //방법 2 : 안전. startIndex메소드 사용
fruits.first //방법3 : 더 안전(배열 비어있을 때 nil 리턴). first속성 사용. 타입은 optional string


//✅:마지막 요소에 접근하기
fruits[2] //방법 1 : 배열 카운트 직접하고 -1한 값.
fruits[fruits.count - 1] //방법 2 : 안전. 셀 수 없는 상황이면 count메소드로 처리.
fruits[fruits.endIndex - 1] //방법 3 : endIndex에서 -1 빼야해.
fruits[fruits.index(before: fruits.endIndex) ] //방법4 : endIndex에서 -1 빼야해.
fruits.last //방법5: 더 안전(배열 비어있을 때 nil 리턴). last속성 사용. 타입은 optional string


//✅:원하는 범위 접근하기 - 인덱스
fruits[0...1] //방법 1
fruits[2...] //방법 1-2 : 배열에서는 자동으로 범위를 제한해주기 때문에, one sided range사용 가능.
fruits[...3] //방법 1-3


//✅:원하는 범위 접근하기 - 개수
fruits.prefix(30) //방법 2-1 : 원하는 개수만큼 결과 나와. 배열 요소의 개수보다 많아도 오류 안 생겨.
fruits.prefix(1)
fruits.prefix(upTo: 3) //방법 2-2: 앞부터, 끝 포함 x
fruits.prefix(through: 3) //방법 2-3: 앞부터, 끝 포함
fruits.suffix(3) //벙법 1-1 :뒤에서부터 3개 리턴
fruits.suffix(from: 3) //방법 1-2 : from인덱스부터 끝까지 리턴


//✅:조건으로 subsequence 반환- 1
fruits.prefix { $0 != "바나나" } //방법1 : 앞부터 도는데, 특정값 발견되기 이전까지만


//🚨: 오버헤드
//fruits[3] //☠️:에러발생!:해적_표시: 인덱스 범위가 벗어났다는 에러가 발생. 코드가 강제로 종료됨

//-----------------------------------------------
//<요소 추가하기>

var alphabet = ["A", "B", "C", "D"] //변경사항이 생길거니까 var로 선언

//✅:끝에 추가
alphabet.append("F")
alphabet.append(contentsOf: ["E", "H"])


//✅:중간에 추가
alphabet.insert("i", at: 1) //오버헤드 발생.
alphabet.insert(contentsOf: ["a", "b", "c"], at: 0 ) //오버헤드 발생

//------------------------------------------------
//<요소 변경하기>
//✅:특정 인덱스에 추가
alphabet[0...2] = ["X", "Y", "Z"] //방법1 : 인덱스로 접근해서 변경
alphabet.replaceSubrange(0...2, with: ["X", "Y", "Z"]) //방법2: 메소드로 변경
alphabet.replaceSubrange(0...2, with: ["X"]) //참고: 동일한 개수로 안 바꿔도 돼.
//------------------------------------------------
//<요소 삭제하기>
//✅:특정부분 삭제
alphabet.remove(at: 0) //방법1 : 꺼내서 리턴해줌
alphabet


//✅:처음 요소 삭제
alphabet.removeFirst() //숫자를 안 적으면 요소를 리턴
alphabet.removeFirst(2) //숫자를 적으면 결과 리턴


//✅:마지막 요소 삭제
alphabet.removeLast() //방법1 :숫자를 안 적으면 요소를 리턴
alphabet.removeLast(2) // 방법1 :숫자를 적으면 결과 리턴
alphabet.popLast() //방법 2: 비어있으면 nil을 리턴


//✅:배열의 모든 요소 삭제
alphabet.removeAll() //참고 : 이 때, 인덱스를 호출하면 에러 발생. 따라서 인덱스 호출할 때는 비어있는지 확인하고 진행하면 더 안전해.
alphabet.popLast() //참고 : nil리턴 가능해서 error 안 떠.


//✅:범위지정해서 삭제
var array1 = ["A", "B", "C", "D", "E"]
array1.removeSubrange(0...1) //원본 배열 삭제


//✅:범위지정해서 삭제 (복제)
var array2 = ["A", "B", "C", "D", "E"]
array2.dropFirst(2) //원본 배열은 그대로. 복제해서 삭제
array2.dropFirst() //원본 배열은 그대로. 복제해서 삭제


//✅: 특정 값 나올 때 까지 삭제
var array3 = ["A", "B", "C", "D", "E"]
array3.drop { $0 != "C" } //특정 값 나올 때 까지 없애.

//------------------------------------------------
//<배열 비교하기>
let a = ["A", "B", "C", "D"]
let b = ["a", "b", "c", "d"]
a == b
a != b

//✅:배열 비교하기
a.elementsEqual(b)
a.elementsEqual(b, by: { (lhs, rhs) -> Bool in
  return lhs.caseInsensitiveCompare(rhs) == .orderedSame
})
a.elementsEqual(b, by: { $0.caseInsensitiveCompare($1) == .orderedSame }) //간단 ver.
//------------------------------------------------
//<Int에서 많이 사용하는 메소드>
let randomNums = [1, 2, 3, 1, 4, 5, 2, 6, 7, 8]


//✅:최솟값 구하기
randomNums.min()
a.min() //문자일 때는 아스키코드 순서대로


//✅:최댓값 구하기
randomNums.max()


//✅:특정값 포함하고 있는지 -> Bool
randomNums.contains(1)
randomNums.contains{ $0.isMultiple(of: 2) }


//✅:배열의 첫/마지막 요소
randomNums.first
randomNums.last


//✅:조건 만족하는 첫/마지막 요소
randomNums.first { $0.isMultiple(of: 5) } //없으면 nil리턴해.
randomNums.first { $0.isMultiple(of: 2) }
randomNums.last { $0.isMultiple(of: 2) }


//✅:조건 만족하는 첫/마지막 요소 인덱스
randomNums.firstIndex { $0.isMultiple(of: 2) }
randomNums.lastIndex { $0.isMultiple(of: 2) }
//------------------------------------------------
//<배열 정렬하기>
var newArray = [1, 3, 2, 6, 4, 8, 3]


//✅:오름차순으로 정렬하기
newArray.sorted() //복사본을 만들고 정렬해.
newArray // 따라서 확인해보면 원본 배열은 그대로야
//반면에
newArray.sort() //원본을 정렬해.
newArray //따라서 확인해보면 원본도 바뀌어있음.


//✅:내림차순으로 정렬하기
newArray.sorted { $0 > $1 }
newArray.sorted().reversed() //타입이 달라져. 원본 메모리에 접근하는거야. 값을 읽기만 하는게 아니라 새로운 배열을 만들고 싶으면 아래처럼해.
[Int](newArray.sorted().reversed())
Array<Int>(newArray.sorted().reversed()) //배열 타입 지정 복습.


//✅:기존에 있는 배열을 거꾸로
var array4 = [5, 2, 4, 6, 7, 8, 9]
array4.reverse()


//✅:요소끼리 자리 바꾸기
array4.swapAt(0, 1) //0번과 1번 인덱스 자리 바꿔


//✅:랜덤으로 섞어버려
array4.shuffle() //원본 섞어
array4.shuffled() //ed는 복사본 섞어
