
import Foundation

/*
 요소 속에는 key, value를 짝지어 저장해.
 key는 유니크한 값, value는 다른 key value랑 같아도돼.
 반드시 key는 hash를 구현한 값만 가능해. 문자열은 이미 hash를 구현하고 있어.
 
 딕셔너리에 저장되는 요소는 정렬이 되지 않아.
 나중에 for문으로 열거해보면 계속 같은 순서로 정렬이 될거야.
 
 딕셔너리는 10000번정도는 같은 순서로 정렬되다가 나중엔 뒤죽박죽일 수도 있어.
 정렬이 필요하다면 swift collection package에 있는 ordered dictionary를 사용하거나, key목록을 배열로 바꾼다음에 정렬해야해.
 
 딕셔너리에는 하나의 타입만 저장할 수 있어. 따라서 키와 값의 타입은 정해져 있어야해.
 
 
 
 */
