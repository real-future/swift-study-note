
import Foundation

/*
 error handling
 
- 크게 compile time error와 runtime error로 나뉜다.
 - compile time error는 보통 문법 문제
 - runtime error 는 디바이스나 리소스에 문제가 있을 때. 이게 발생하면 강제종료가 되는데, 이걸 방지하게 할 수 잇어.
 
 문법)
 func name(parameters) throws -> ReturnType {
    statements
 }
 
 init(parameters) throws {
    statements
 }
 
 { (parameters) throws -> ReturnType in
    statements
 }
 */

// error type

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

/*
 try statements
 
 문법)
 try expression
 try? expression
 try! expression  : 표현식에서 에러를 던진다면 강제종료됨. 그러니 사용 x
 
 */

try? parsing(data: [:])

