

/*
 loopConstant는 상수여서 값을 바꿀 수 없다. 그냥 전달되는 값만 받을 뿐이다.
 
 문법)
 
 for loopConstant in Range {
 statements
 }
 
 */

for _ in 1 ... 5 { //_ : wildcard pattern = loopConstant 생략
    print("Hello")
}

// ---------------------------


let power = 10
var result = 1

for _ in 1 ... power {
    result *= 2
}
result

// ---------------------------

for num in stride(from: 0, to: 10, by: 2) { //10까지 포함하고 싶으면 to -> through
    print(num)
}

// ---------------------------

var sum = 0
for num in 1...10 {
    sum += num
}
sum

 //---------------------
//stride를 활용하여 0-10까지의 짝수 더하기
var sum1 = 0
for i in stride(from: 0, through: 10, by: 2){
    sum1 += i
}
print(sum1)

//------------------------------

//구구단 출력

for i in 2...9 {
    for j in 1...9 {
        print("\(i)*\(j) = \(i*j)")
    }
}
