/*
 값형식 : 구조체(int, string), 열거형, 튜플
 
 참조형식 : 클래스와 클로저는
 

 
 
 */


struct PositionValue {
    var x = 0.0
    var y = 0.0 //🚀이렇게 초기값을 넣어두면 파라미터가 없는 생성자가 만들어져. 이것을 default initializer기본 생성자라고 부름
}

class PositionObject {
    var x = 0.0
    var y = 0.0
}

var v = PositionValue()
v.x
v.y

var o = PositionObject()
o.x
o.y //🚀 값을 저장하는 것이 아니라, 값이 저장되어 있는 메모리 주소를 저장.

var v2 = v
v2.x
v2.y

var o2 = o
o2.x
o2.y

//🚀지금까진 모든 인스턴스에 똑같은 값이 저장되어 있음.

v2.x = 12
v2.y = 34 //🚀v2의 속성값 변경하기

v.x
v.y

v2.x
v2.y //🚀 v2는 v의 복사본이기에 v값에는 변화가 없음.

o2.x = 12
o2.y = 34

o.x
o.y

o2.x
o2.y //🚀 클래스는 새로운 복사본을 만들지 않고, 원본(참조)를 그대로 전달해. 어떤 변수를 통해 값을 바꾸더라도 같은 대상을 바꾸는 행위임.
