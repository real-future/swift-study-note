//범위연산자
//1.반복할 범위를 표현하거나
//2.배열에서 특정 부분을 추출할 때
//스위프트는 두가지 연산자를 제공한다. (마지막 범위가 열려있는지 닫혀 있는지에 따라 결정)



//Closed Range Operator
//  lowerBound ... upperBound
//  lowerBOund...
//  ...upperBound
1...10
//10...1 //error (시작하는 부분이 더 작아야해. 따라서 아래처럼 구현해.)
(1...10).reversed()

for num in 1 ... 10 {
    print(num)
}



//Half-Open Range Operator
//  lowerBound ..< upperBound
//  ..< upperBound

for num1 in 1 ..< 10 {
    print(num1)
}

let range = ...5 //First-class Citizen : 상수로 저장할 수 있음. 함수에서 파라미터로 전달도 가능.

range.contains(3)
