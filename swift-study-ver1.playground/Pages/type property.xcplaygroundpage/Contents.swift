/*
 type property : 형식 속성
  저장속성은 인스턴트마다 다른 값이 저장됨.
  
 형식속성
 - 인스턴트마다 별도의 공간이 만들어지는 것이 아니라, 하나의 공간을 만들고, 여기에 값을 저장한 다음에 모든 인스턴스가 값을 공유하는 것.
 - 클래스, 구조체, 열거형에 모두 추가할 수 있음. 저장속성과 계산 속성으로 선언할 수 있음.
 
 저장속성 vs 형식 속성
 - 저장속성은 기본값을 저장하지 않고, 생성자에서 속성을 초기화할 수 있다. 그리고 저장속성은 인스턴스를 초기화할 때 함께 초기화 되는데, 형식속성은 속성에 최초로 접근할 때 값이 초기화됨.
 - 형식속성에서는 기본값 생략 불가능, 반드시 원하는 값으로 초기화 해야해.생성자는 인스턴스를 초기화 하는 것이고 타입 자체를 초기화 하지는 못해. 그래서 형식속성은 생성자에서 초기화할 수 없다. 형식속성은 기본적으로 지연속성이다. 따라서 속성에 처음 접근하는 시점에 초기화가 된다.
 
 */

import UIKit

class Math {
    static let pi = 3.14
}

let m = Math()
Math.pi //🚀m.pi가 아니라 TypeName인 Math.pi로 불러와야해


//--------------------------------------------
//computed type properties

enum Weekday: Int {
    case sunday = 1, monday, tuesday, wednesday, thursday, friday, saturday
    
    static var today: Weekday {
        let cal = Calendar.current
        let today = Date()
        let weekday = cal.component(.weekday, from: today)
        return Weekday(rawValue: weekday)!
    }
}

Weekday.today
