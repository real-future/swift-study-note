//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

// 상위 클래스: Animal
class Animal {
    func makeSound() {
        print("동물 소리")
    }
}

// 하위 클래스: Dog
class Dog: Animal {
    override func makeSound() {
        print("멍멍")
    }

    func run() {
        print("강아지가 달립니다.")
    }
}

// 하위 클래스: Cat
class Cat: Animal {
    override func makeSound() {
        print("야옹")
    }

    func jump() {
        print("고양이가 점프합니다.")
    }
}

// 다운캐스팅 예시
let animal = Dog() // Animal 타입으로 업캐스팅된 Dog 인스턴스
animal.makeSound() // "멍멍"

// 다운캐스팅 시도
if let dog = animal as? Dog {
    dog.run() // 다운캐스팅 성공! Dog 클래스의 메서드 사용
} else {
    print("다운캐스팅 실패")
}

// 다른 다운캐스팅 시도
if let cat = animal as? Cat {
    cat.jump() // 다운캐스팅 실패! Animal은 Cat 타입이 아님
} else {
    print("다운캐스팅 실패")
}
