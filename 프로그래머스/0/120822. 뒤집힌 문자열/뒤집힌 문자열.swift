import Foundation

// 최종 답안
func solution(_ my_string:String) -> String {
    return String(my_string.reversed())
}

// 기존 코드
func solution(_ my_string: String) -> String {
    return my_string.map{ String($0) }.reversed().joined()
}
// 원래 return my_string.reversed() 로만 작성했으나 실패
// -- my_string.reversed()의 타입은 ReversedCollection<String>이기 때문에!
// -- 근데 그걸 몰라서 매핑해서 풀었었음..
