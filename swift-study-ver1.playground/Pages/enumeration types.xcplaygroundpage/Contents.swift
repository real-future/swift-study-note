import Foundation


/*
 
 Enumerations
 = 연관된 상수들을 하나의 이름으로 묶은 타입
 
 Enumeration case
 = 열거형에 포함된 상수들
 
 사용하는 이유
 1. 가독성 높아지고
 2. 안정성
 
 
 ex. 텍스트 편집기
 (문단 정렬방식 : 왼쪽 정렬0, 가운데1, 오른쪽1)
 
 */


//1️⃣❌

//let left = 0
//let center = 1
//let right = 2
//
//var alignment = center
//안전성이 떨어짐.


//---------------------------------

//2️⃣❌

//let left = "left"
//let center = "center"
//let right = "right"
//
//var alignment = center
//
//if alignment == "Center" {
//
//}
//가독성은 높아졌지만, 문자열 오타 가능성... 아직도 안전성 안좋아.


//----------------------------------------

enum Alignment {
    case left
    case center
    case right
}

var textAlignment = Alignment.center //🚀자동완성이 됩니다 ~!

1 // 독립적인 값. "열거형 케이스도 코드에서 의미가 변하지 않는 독립적인 값이야."

textAlignment = .left //🚀 점을 빼면 변수나 상수라고 인식해.


//-----------------------------------------

//❌
//if textAlignment == .center {
//
//}

switch textAlignment {
case.left:
    print("left")
case.center:
    print("center")
case.right:
    print("right")
}
//열거형일때는 if 문 보다 switch 문이 가독성이 좋아.


"A".caseInsensitiveCompare("a") == .orderedSame
