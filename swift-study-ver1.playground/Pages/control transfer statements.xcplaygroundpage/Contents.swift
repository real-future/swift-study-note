//제어 전달문
//조건문과 반복문에서 사용
//제어 전달문은 5가지 있어 : fall through, return, throw, break, continue

//------------------------------------


for index in 1...100 {
    print("start")
    
    if index < 5 {
        continue
    }
    
    if index > 10 {
        break
    }
    
    print("end")
}


// ------------------------------------

//break문
//break : swith와 반복문에서 사용됨

let num = 2 //숫자 바꿔가며 확인해봐.

switch num {
case 1 ... 10:
    print("begin block")
    
    if !num.isMultiple(of: 2) {
        break
    }
    
    print("end block")
    
default:
    break
}

print("Done")

//-------------------------------

for index in 1...10 {
    print(index)
    
    if index > 1 {
        break
    }
}

//--------------------------------

for i in 1...10 {
    print("OUTER LOOP", i)
    
    for j in 1...10 {
        print(" inner loop", j)
        
        if j > 1 {
            break //가장 인접한 문만 영향, 따라서 Outerloop는 계속 돌아
        }
    }
}
