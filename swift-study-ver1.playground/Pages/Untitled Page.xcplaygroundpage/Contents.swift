
import Foundation


/*
 do-catch statements
 
 문법)
 do {
 try expression
 statements
 } catch pattern {    //catch 블럭은 do 블럭 error를 처리
 statements
 } catch pattern where condition {
 statements
 }
 */


enum DataParsingError: Error {
    case invalidType
    case invalidField
    case missingRequiredField(String)
}

//error handling

func parsing(data: [String: Any]) throws {
    guard let _ = data["name"] else {
        throw DataParsingError.missingRequiredField("name")
    }
    guard let _ = data["age"] as? Int else {
        throw DataParsingError.invalidType
    }
    
    //Parsing
}

//🔥아래 혹은 이렇게 해야해. 둘 다 활성화 되어 있으면 에러나서 주석처리 하였음.
func test() {
    do{
        try parsing(data: ["name":""])
    } catch DataParsingError.invalidType, DataParsingError.invalidField {
        print("handle invalidType error")
    } catch {
        print("handle error")
        if let error = error as? DataParsingError {
            switch error {
            case.invalidType:
                print("invalidType")
            default:
                print("handleError")
            }
        }
    }
}

test()

//🔥위 혹은 이렇게 해야해. 둘 다 활성화 되어 있으면 에러나서 주석처리 하였음.
//-----------------------------
//func test() throws {
//    try parsing(data: ["name":""])
//}
//
//try? test()
