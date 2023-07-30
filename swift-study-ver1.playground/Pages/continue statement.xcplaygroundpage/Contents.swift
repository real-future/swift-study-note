// continue
//현재 회차를 끝내고 다음 회차를 시작한다.

for index in 1...10 {
    if index.isMultiple(of: 2) {
        continue //break와는 다르게 for문을 중지시키지는 않아.
    }
    
    print(index)
}


//------------------------------

for i in 1...10 {
    print("OUTER LOOP", i)
    
    for j in 1...10 {
        if j.isMultiple(of: 2) {
            continue
        }
        
        print("     inner loop",j)
    }
}
