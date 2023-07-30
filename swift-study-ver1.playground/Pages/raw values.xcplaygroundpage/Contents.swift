
import Foundation
/*
 
 
 
 */

//
//enum Alignment {
//    case left
//    case right
//    case center
//} //지금 alignment에는 원시값이 없어.



enum Alignment: Int {
    case left
    case right = 100 //원시값 직접 저장
    case center
}

Alignment.left.rawValue
Alignment.right.rawValue
Alignment.center.rawValue


//Alignment.left.rawValue = 10 처럼 원시값에 직접 값을 바꾸는 행위는 불가해. 왜냐면 rawValue는 상수같은거여서.

Alignment(rawValue: 0)
Alignment(rawValue: 200)

//-----------------------------------------------

enum Weekday: String {
case sunday
case monday = "Mon"
case tuesday
case wednesday
case thursday
case friday
case saturday
}


Weekday.sunday.rawValue
Weekday.monday.rawValue

enum ControlChar: Character {
    case tab = "\t"
    case newLine = "\n"
}
