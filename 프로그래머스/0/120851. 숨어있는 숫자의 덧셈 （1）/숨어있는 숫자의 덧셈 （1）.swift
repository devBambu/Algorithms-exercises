import Foundation

// 기존 답안
func solution(_ my_string:String) -> Int {
    return my_string.compactMap{ Int(String($0)) }.reduce(0, +)
}

// 최종 답안
// - 실행 속도가 (쪼끔) 더 빠른 느낌
func solution2(_ my_string:String) -> Int {
    return my_string.reduce(into: 0) {
        $0 += Int(String($1)) ?? 0
    }
}
