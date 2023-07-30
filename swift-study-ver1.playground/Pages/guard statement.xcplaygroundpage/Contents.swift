
//validate : id를 검증하는 가상의 함수
func validate(id: String) {
    guard id.count >= 6 else {
        print("too short")
        return //🚀return : else블럭을 바로 끝내기 때문에 동작하려면 return 앞에 기재해두어야 한다.
    }
    guard id.count <= 20 else {
        print("too long")
        return
    }
    
    print("OK")
}

validate(id: "AdminAdminAdminAdmin") //OK


func validateUsingIf(id: String) {
    if id.count >= 6 {
        if id.count <= 20 {
            print("OK")
        } else {
            print ("too long")
        }
    } else {
        print("too short")
    }
}

validate(id: "AdminAdminAdminAdmin") //OK

// 가독성이
