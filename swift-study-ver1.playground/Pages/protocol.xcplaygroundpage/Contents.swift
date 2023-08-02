/*
 protocol
 규격, 규약, 규칙, 청사진, 뼈대

 
 */

import UIKit

protocol UserInfo {
    var name: String { get set } //get : 무조건 해야해. set : 선택
    var age: Int { get set }
    
    func isAdult() -> Bool
}

extension UserInfo {
    func isAdult() -> Bool {
        if age > 19 {
            return true
        }
        return false
    }
    }

class Guest: UserInfo {
    var name: String = "박"
    
    var age: Int = 11
    
}

class Member: UserInfo {
    var name: String
    
    var age: Int
    
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

class VIPMember: UserInfo {
    var name: String = "김"
    var age: Int = 29
    
}

class UserInfoPresenter {
    
    
    func present() {
        
        let guest = Guest()
        let member = Member(name: "jane", age: 24)
        let vip = VIPMember()
        
        let members: [UserInfo] = [guest, member, vip] //프로토콜 타입대로 묶어서 사용할 수 있다.
        
        for element in members {
            print(element.name)
        }
        
        print(guest.name)
        print(member.name)
        print(vip.name)
    }
}

let presenter = UserInfoPresenter()
presenter.present()

/*
 
 아침
 기획
 문법 (우선)
 
 
 아침에 알고리즘을 1개로 줄이고,
 각자 문법 1개씩 상대방에게 설명해주면서 알려주기
 
 적어도 조금의 갈래가 있을 정도로
 
 */
