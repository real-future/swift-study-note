//: [Previous](@previous)

import UIKit

var greeting = "Hello, playground"

//: [Next](@next)

//숫자 짝수, 홀수
extension Int {
    var oddOrEven: String {
        if self % 2 == 0 {
            return "짝수"
        }
        return "홀수"
    }
}

3.oddOrEven


// UIColor
// mainColor1 = iii
// mainColor2 = xxx
// subColor2 = uuu


extension UIColor {
    var mainColor1: UIColor {
        UIColor(red: 50/255, green: 50/255, blue: 24/255, alpha: 1)
    } //수정사항이 생기면 이쪽만 고치면 돼.
}

var button = UIButton()

button.titleLabel?.textColor = UIColor().mainColor1

