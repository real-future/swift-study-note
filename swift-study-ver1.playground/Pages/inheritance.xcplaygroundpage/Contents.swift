//: [Previous](@previous)

import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    //num과 k를 문자열로 변환할거야. 왜냐면 나는 지금 비교는 문자열밖에 모르잖아. for문으로 num을 string으로 하나씩 받은 다음에, 그거를 k와 비교해. 그리고 if를 통해 그 숫자의 인덱스를 찾고, 없으면 -1리턴하도록 하자.
    var stringNum = String(num)
    var stringK = String(k)
    var answer : Int = 0

    
    for i in stringNum {
        if i == stringK {
            let answer = stringNum.firstIndex(of: "k")
        } else {
            return -1
        }
        return answer
    }
}
