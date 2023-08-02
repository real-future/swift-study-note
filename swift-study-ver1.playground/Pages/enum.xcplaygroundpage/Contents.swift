//: [Previous](@previous)

import UIKit

var greeting = "Hello, playground"

//: [Next](@next)

/*
 Enumerations
 
 enum
 타입분류
 
 도서관 -> 항목 -> 소설, 문제집, 패션, 만화책
 */

//분류만 하고 싶은 경우
enum BookType {
    case fiction(title: String, price: Int, year: Int)
    case comics(title: String, price: Int, year: Int)
    case fashion(title: String, price: Int, year: Int)
    case workbook(title: String, price: Int, year: Int)
    //.......
}


extension BookType {
    var typeName: String {
        switch self {
        case .comics:
            return "comics"
        case .fiction:
            return "fiction"
        case .fashion:
            return "fashion"
        
        default:
            return ""
        }
    }
}


//var bookStyle = BookType

var books = [BookType]()

func saveBook(book: BookType) {
    books.append(book)
}



saveBook(book: .comics(title: "aaa", price: 40, year: 29283))
saveBook(book: .comics(title: "asa", price: 500, year: 29283))
saveBook(book: .comics(title: "ass", price: 600, year: 29283))
saveBook(book: .fiction(title: "s", price: 2230, year: 29223))



for book in books {
    
    if case let BookType.comics(title, _, _) = book {
        print("comics", title, book.typeName)
    }
    
    
    switch book {
    case let .comics(_, price, _):
        print(price)
        
    case let .fiction(title, _, _):
        print(title)
        
    default: break
    }
}
